# -*- coding: utf-8 -*-
"""sy_dropFileImport.py

ファイルドロップ時の処理

以下の上書きが必要
performFileDropAction.mel
global proc int performFileDropAction (string $theFile){
    python("import sy_dropFileImport;reload(sy_dropFileImport)");
    python("rslt = sy_dropFileImport.main('" + $theFile + "')");
    string $rslt = python("rslt");
    return($rslt);
}
"""

from __future__ import (print_function, unicode_literals, absolute_import, generators, division)

import maya.cmds as cmds
import maya.mel
import pymel.core as pc


def set_fbx_time_range(mot):
    """タイムレンジを fbx に合わせる

    Args:
        mot (str): [description]
    """
    maya.mel.eval('FBXRead -f "' + mot + '";')
    try:
        rslt = maya.mel.eval("FBXGetTakeLocalTimeSpan 1;")
    except BaseException:
        rslt = None
    finally:
        maya.mel.eval("FBXClose;")
        if rslt:
            _minf = int(rslt[0])
            _maxf = int(rslt[1])
            cmds.playbackOptions(minTime=_minf, maxTime=_maxf, ast=_minf, aet=_maxf)


def namespace_input(txt=''):
    """ネームスペース指定ダイアログ

    Args:
        txt (str): ネームスペース初期値

    Returns:
        str: ネームスペース
    """
    rslt = cmds.promptDialog(
        title='Namespace',
        text=txt,
        cancelButton='Cancel',
        dismissString='Cancel',
        defaultButton='OK',
        message='Namespace input:',
        button=['OK', 'Cancel'])
    _ns = cmds.promptDialog(query=True, text=True)
    if 'OK' == rslt:
        _ns = _ns if _ns else ':'
        return _ns
    return ':'


def fbx_import(the_file, _ns=''):
    """fbs インポート

    Args:
        the_file (str): ファイルパス
        _ns (str): ネームスペース
    """
    _ns = namespace_input(_ns)
    current_ns = cmds.namespaceInfo(cur=True)
    try:
        if _ns and _ns != ':':
            if not cmds.namespace(ex=':{}'.format(_ns)):
                cmds.namespace(add=':{}'.format(_ns))
            cmds.namespace(set=':{}'.format(_ns))
        maya.mel.eval('FBXImport -file "' + the_file + '";')
        set_fbx_time_range(the_file)
    except BaseException:
        raise  # Exception(traceback.format_exc(sys.exc_info()))
    finally:
        if _ns and _ns != ':':
            cmds.namespace(set=current_ns)


def main(the_file):
    file_name = the_file.split('/')[-1]
    _ext = file_name.rsplit('.', 1)
    selall = cmds.ls(sl=True, type='transform')
    if _ext[1] == 'atom':
        if selall:
            maya.mel.eval('ImportAnimOptions;')
            _opts = ('";;targetTime=3;option=scaleReplace;match=hierarchy;;'
                     'selected=childrenToo;search=;replace=;prefix=;suffix=;"')
            _rtn = cmds.file(the_file, i=True, type='atomImport', ra=True, options=_opts, returnNewNodes=True)
            _sf = cmds.findKeyframe(_rtn, w='first')
            _ef = cmds.findKeyframe(_rtn, w='last')
            cmds.playbackOptions(minTime=_sf)
            cmds.playbackOptions(ast=_sf)
            cmds.playbackOptions(maxTime=_ef)
            cmds.playbackOptions(aet=_ef)
            return 1

    elif _ext[1] in ['ma', 'mb', 'fbx']:
        msg = 'Open, Import or Reference the file?'
        cancel_btn = 'Cancel'
        if _ext[1] == 'fbx':
            open_btn = 'FBX Open'
            import_btn = 'FBX Import'
            reference_btn = 'Default Import'
        else:
            open_btn = 'Open'
            import_btn = 'Import'
            reference_btn = 'Reference'

        _rtn = cmds.confirmDialog(message=msg,
                                  button=[open_btn, import_btn, reference_btn, cancel_btn],
                                  defaultButton=open_btn)

        if _rtn == cancel_btn:
            # キャンセル
            print('cancel')
            return 1

        elif _rtn == open_btn:
            # オープン
            if 'fbx' == _ext[1]:
                cmds.file(newFile=True, f=True)
                fbx_import(the_file)
            else:
                cmds.file(the_file, ignoreVersion=True, options='v=0;', o=True, f=True)
            return 1

        elif _rtn == import_btn:
            # インポート
            if _ext[1] == 'fbx':
                fbx_import(the_file, _ns=_ext[0])
            else:
                _ns2 = namespace_input(_ext[0])
                cmds.file(the_file, i=True, options="v=0;", preserveReferences=True, namespace=_ns2, renameAll=True)
            return 1

        elif _rtn == reference_btn:
            # リファレンス
            if _ext[1] == 'fbx':
                print('maya scene only')
            else:
                _ns2 = namespace_input(_ext[0])
                cmds.file(the_file, namespace=_ns2, reference=True)
            return 1
    else:
        return pc.mel.performFileImportAction(the_file)
