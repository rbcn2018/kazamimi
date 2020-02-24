# -*- coding: utf-8 -*-

"""color_marker_plus

概要：
    オブジェクトに任意のカラーを設定する。
    ・アウトライナカラー設定
    ・ドローオーバーライドカラー設定
        ※ハイパーグラフではインデックスカラーが使用されるのでRGB値になるべく近いインデックスカラーを同時に設定
    ・シェイプノードのドローオーバーライドカラー設定（ディスプレイレイヤー登録時に上書きされないように）
    ・選択した複数ノードに対して「グラデーション」ボタンでカラーパレットを順に適用
    ・骨にインフルエンスカラーを設定

# 起動方法
import ColorMarker_plus
reload(ColorMarker_plus)
ColorMarker_plus.main().showui()

TODO:
objectcolor 対応

"""

from __future__ import (absolute_import, unicode_literals, print_function, division)

import random
import inspect
import functools

import maya.cmds as cmds
import pymel.core as pm
import maya.api.OpenMaya as om2
from pymel.all import mel as pam
from maya import mel

FCODE = inspect.currentframe().f_code
WINNAME = inspect.getmodulename(FCODE.co_filename)

mel.eval("""global proc callLastCommand(string $fnc){repeatLast -ac $fnc;}""")

COLOR_LIST = [
    [0.99, 0.12, 0.13],
    [0.99, 0.46, 0.73],
    [0.85, 0.69, 0.49],
    [0.99, 0.98, 0.39],
    [0.01, 0.62, 0.31],
    [0.35, 0.99, 0.85],
    [0.05, 0.13, 0.99],
    [0.42, 0.17, 0.65],
    [0.75, 0.02, 0.75],
    [0.55, 0.27, 0.19],
]

OLD_SELECTED = None


class main(object):
    def __init__(self):
        pass

    def showui(self):
        global COLOR_LIST
        global WINNAME
        if pm.window(WINNAME, exists=True):
            pm.deleteUI(WINNAME)
        with pm.window(WINNAME, title='Color Marker +', toolbox=True, sizeable=True):
            with pm.formLayout() as form:
                self.colorSlider1 = pm.colorSliderGrp(rgb=COLOR_LIST[0], columnAlign=[1, 'left'], h=30, label='')
                with pm.columnLayout(adjustableColumn=True) as clm:
                    with pm.horizontalLayout():
                        for i, col in enumerate(COLOR_LIST):
                            # 'buttonSet{0:0>2}'.format(i + 1)
                            pm.button(bgc=col, label='', command=pm.Callback(self.pick_palette, col, 'plt'))
                            # ↑ lambda だと col 引数の色が個別に設定されなかったので Callback に変更

                    with pm.horizontalLayout():
                        txt1 = ''  # '選択オブジェクトに上段のカラーを設定します。'
                        pm.button(label='設定', ann=txt1, command=pm.Callback(self.apply_color_ui))
                        txt1 = ''  # '選択オブジェクトからカラーを取得します。'
                        pm.button(label='取得', ann=txt1, command=pm.Callback(self.get_color))
                        txt1 = '前回カラー設定したノードを再選択します。'
                        pm.button(label='再選択', ann=txt1, command=pm.Callback(re_select_obj))
                        txt1 = '選択ノード以下の階層を全選択します。'
                        pm.button(label='階層選択', ann=txt1, command=pm.Callback(hierarchy_select))

                    with pm.horizontalLayout():
                        txt1 = 'オブジェクトの選択順でパレットのカラーを設定します。'
                        pm.button(label='グラデーション', ann=txt1, command=pm.Callback(self.gradation_set_ui))
                        txt1 = '骨にインフルエンスカラーを設定します。\n色は階層位置で固定です。'
                        pm.button(label='インフルエンス', ann=txt1, command=pm.Callback(influence_grad_set))
                        txt1 = '選択オブジェクトと同じ色のオブジェクトを追加選択します。'
                        pm.button(label='同色ノード選択', ann=txt1, command=pm.Callback(select_all_same_color))
                        txt1 = 'オプションのチェックがONになっている項目のカラー設定を解除します。'
                        pm.button(label='リセット', ann=txt1, command=pm.Callback(self.reset_color_ui))

                    with pm.horizontalLayout():
                        txt1 = 'オブジェクト（3Dビュー用）'
                        self.viewChk = pm.checkBox(v=True, label=txt1)
                        txt1 = 'オブジェクト（アウトライナ用）'
                        self.OutlinerChk = pm.checkBox(v=True, label=txt1)

                    with pm.horizontalLayout():
                        txt1 = 'シェイプ（3Dビュー用）'
                        self.shapeChk = pm.checkBox(v=True, label=txt1)
                        txt1 = 'インフルエンス（リセットボタン用）'
                        self.influenceChk = pm.checkBox(v=True, label=txt1)

                    txt1 = 'パレット選択と同時にカラーを設定する'
                    self.paletteSetChk = pm.checkBox(v=True, label=txt1)

            pm.formLayout(form, edit=True,
                          attachForm=[(self.colorSlider1, 'top', 0), (self.colorSlider1, 'left', -130)],
                          attachControl=[(clm, 'top', 0, self.colorSlider1)])

        pm.window(WINNAME, e=True, h=50, w=50)

    def reset_color_ui(self):
        """リセットカラー"""
        outliner = self.OutlinerChk.getValue()
        view = self.viewChk.getValue()
        shp = self.shapeChk.getValue()
        inf = self.influenceChk.getValue()
        reset_color(outliner=outliner, view=view, shp=shp, inf=inf)

    def gradation_set_ui(self):
        """グラデーション"""
        outliner = self.OutlinerChk.getValue()
        view = self.viewChk.getValue()
        shp = self.shapeChk.getValue()
        gradation_set(outliner=outliner, view=view, shp=shp)

    def pick_palette(self, rgb, mode=None):
        """パレットカラー取得"""
        if mode == 'plt':
            if self.paletteSetChk.getValue():
                outliner = self.OutlinerChk.getValue()
                view = self.viewChk.getValue()
                shp = self.shapeChk.getValue()
                apply_color(rgb, outliner=outliner, view=view, shp=shp)
        else:
            self.colorSlider1.setRgbValue(rgb)

    def apply_color_ui(self):
        """カラー設定"""
        rgb = self.colorSlider1.getRgbValue()
        outliner = self.OutlinerChk.getValue()
        view = self.viewChk.getValue()
        shp = self.shapeChk.getValue()
        apply_color(rgb, outliner=outliner, view=view, shp=shp)

    def get_color(self):
        """カラー取得"""
        selall = cmds.ls(sl=True)
        if not selall:
            return
        for sel in selall:
            if cmds.attributeQuery('outlinerColor', node=sel, exists=True):
                col = cmds.getAttr('{}.outlinerColor'.format(sel))[0]
                self.pick_palette(col)
                break


def set_repeat_cmd(func):
    @functools.wraps(func)
    def wrapper(*args, **kwargs):
        subk = cmds.getModifiers()
        kwargs['subk'] = subk
        print('args = {}'.format(args))
        print('kwargs = {}'.format(kwargs))

        _cmb = []
        # for ar in args:
        #     print('ar = {}'.format(ar))
        #     _cmb.append('{}'.format(ar))
        for kw in kwargs:
            _cmb.append('{}={}'.format(kw, kwargs[kw]))
        _cmb_args = ', '.join(_cmb)
        print('_cmb_args = {}'.format(_cmb_args))

        _cmd = '''python("{}.{{fnc_name}}({{ags}})")'''.format(main().__class__.__module__)
        print('_cmd = {}'.format(_cmd))
        _cmd2 = _cmd.format(fnc_name=func.func_name, ags=_cmb_args)
        print('_cmd2 = {}'.format(_cmd2))
        pam.callLastCommand(_cmd2)
        rslt = func(*args, **kwargs)
        global OLD_SELECTED
        OLD_SELECTED = rslt
    return wrapper


@set_repeat_cmd
def apply_color(rgb, **kwargs):
    """カラー設定
    """
    selall = cmds.ls(sl=True)
    if not selall:
        return

    for sel in selall:
        colorset_main(sel, rgb, **kwargs)

    cmds.select(cl=True)
    return selall


@set_repeat_cmd
def re_select_obj(**kwargs):
    """再選択
    """
    global OLD_SELECTED
    if OLD_SELECTED:
        cmds.select(OLD_SELECTED, r=True)


@set_repeat_cmd
def hierarchy_select(**kwargs):
    """階層選択"""
    selall = cmds.ls(sl=True, dag=True, type='transform')
    if selall:
        cmds.select(selall)


@set_repeat_cmd
def influence_grad_set(subk=0, **kwargs):
    """インフルエンスカラー設定
    階層毎に色分け
    ctrl キー同時押しでランダムカラー

    Args:
        inf (bool, optional): インフルエンス用カラーを設定する
    """
    selall = cmds.ls(sl=True, long=True, type='joint')
    if not selall:
        return
    pls = 5
    try:
        for sel in selall:
            cmds.setAttr('{}.useObjectColor'.format(sel), 1)
            if subk == 4:
                # 骨毎にランダムカラー
                color_index = random.randint(0, 7)
            else:
                # 階層毎に固定色
                color_index = (len(sel.split('|')) + pls) % 8
            cmds.setAttr('{}.objectColor'.format(sel), color_index)
            set_influence_color(sel, color_index + 1)
    except BaseException:
        raise

    cmds.select(cl=True)
    return selall


@set_repeat_cmd
def gradation_set(**kwargs):
    """グラデーションカラー設定処理
    """
    global COLOR_LIST
    selall = cmds.ls(sl=True)
    if not selall:
        return
    length = len(COLOR_LIST)
    for i, sel in enumerate(selall):
        idx = i % length
        colorset_main(sel, COLOR_LIST[idx], **kwargs)

    cmds.select(cl=True)
    return selall


@set_repeat_cmd
def reset_color(outliner=None, view=None, shp=None, inf=None, **kwargs):
    """カラーリセット

    Args:
        outliner (bool, optional): アウトライナーカラーを設定する
        view (bool, optional): 3Dビュー用カラーを設定する
        shp (bool, optional): シェイプがあればカラーを設定する
        inf (bool, optional): インフルエンス用カラーを設定する
    """
    print('reset_color')
    selall = cmds.ls(sl=True)
    if not selall:
        return

    try:
        for sel in selall:
            if outliner:
                colorset_outliner(sel, None, resetStat=True)
            if view:
                colorset_ovride(sel, None, None, resetStat=True)
            if shp:
                colorset_shape(sel, None, None, resetStat=True)
            if inf:
                cmds.setAttr('{}.useObjectColor'.format(sel), 0)

    except BaseException:
        raise

    cmds.select(cl=True)
    return selall


@set_repeat_cmd
def select_all_same_color(**kwargs):
    """同色ノード選択
    同色（アウトライナカラー）オブジェクトを選択
    """
    selall1 = cmds.ls(sl=True)
    if not selall1:
        return

    sel_colors = []
    for sel1 in selall1:
        if cmds.attributeQuery('outlinerColor', node=sel1, exists=True):
            sel_colors.append(cmds.getAttr('{}.outlinerColor'.format(sel1))[0])

    getnodes = []
    print('sel_colors = {}'.format(sel_colors))
    for sel2 in cmds.ls(type='transform'):
        print('sel2 = {}'.format(sel2))
        if cmds.attributeQuery('outlinerColor', node=sel2, exists=True):
            print(cmds.getAttr('{}.useOutlinerColor'.format(sel2)))
            if cmds.getAttr('{}.useOutlinerColor'.format(sel2)):
                tmpcol = cmds.getAttr('{}.outlinerColor'.format(sel2))[0]
                print('tmpcol = {}'.format(tmpcol))
                for selcol in sel_colors:
                    dif1 = abs(tmpcol[0] - selcol[0]) < 0.01
                    dif2 = abs(tmpcol[1] - selcol[1]) < 0.01
                    dif3 = abs(tmpcol[2] - selcol[2]) < 0.01
                    if dif1 and dif2 and dif3:
                        getnodes.append(sel2)
                        break
    if getnodes:
        cmds.select(getnodes, r=True)


def get_index_color(rgb):
    """RGB に近いインデックスカラーの番号取得(HyperGraph用)

    Args:
        rgb (list[float, float, float]): RGBカラー

    Returns:
        int: カラーインデックス
    """

    colRgb = om2.MVector(*rgb)
    lens = []
    for i in xrange(1, 32):
        rgbFromIdxCol = cmds.colorIndex(i, q=True)
        color_index = om2.MVector(rgbFromIdxCol[0], rgbFromIdxCol[1], rgbFromIdxCol[2])
        lens.append((colRgb - color_index).length())

    return lens.index(min(lens)) + 1


def set_influence_color(node, color_index, outliner=False):
    """インフルエンスカラーと同色でアウトライナカラー設定＆3Dビュー用カラー設定
        （同色選択の為。オーバーライドはOFF）

    Args:
        node (str): 処理対象
        color_index (int): カラーインデックス
        outliner (bool, optional): アウトライナーカラーを設定する
    """
    basename = 'userDefined'

    disp_color = cmds.displayRGBColor(list=True)

    def split_list(lst):
        return [lst.split()[0], lst.split()[1:]]

    UserDefColors = dict([split_list(lst) for lst in disp_color if lst.startswith(basename)])
    rgb = eval(','.join(UserDefColors[basename + str(color_index)]))
    if outliner:
        colorset_outliner(node, rgb)


def colorset_outliner(node, rgb, resetStat=False):
    """アウトライナカラー設定

    Args:
        node (str): 処理対象
        rgb (list[float, float, float]): RGBカラー
        resetStat (bool, optional): リセット
    """
    if cmds.attributeQuery('outlinerColor', node=node, exists=True):
        try:
            if resetStat:
                cmds.setAttr('{}.useOutlinerColor'.format(node), False)
            else:
                cmds.setAttr('{}.useOutlinerColor'.format(node), True)
                cmds.setAttr('{}.outlinerColor'.format(node), *rgb)
        except BaseException:
            raise


def colorset_main(node, rgb, outliner=False, view=False, shp=False, **kwargs):
    """カラー設定スタート

    Args:
        node (str): 処理対象
        rgb (list[float, float, float]): RGBカラー
        outliner (bool, optional): アウトライナーカラーを設定する
        view (bool, optional): 3Dビュー用カラーを設定する
        shp (bool, optional): シェイプがあればカラーを設定する
    """

    color_index = get_index_color(rgb)
    if outliner:
        colorset_outliner(node, rgb)
    if view:
        colorset_ovride(node, rgb, color_index)
    if shp:
        colorset_shape(node, rgb, color_index)


def colorset_shape(node, rgb, color_index, resetStat=False):
    """シェイプカラー設定（ディスプレイレイヤ対策）

    Args:
        node (str): 処理対象
        rgb (list[float, float, float]): RGBカラー
        color_index (int): カラーインデックス
        resetStat (bool, optional): リセット
    """
    shp = cmds.listRelatives(node, s=True, noIntermediate=True, fullPath=True)
    if shp:
        colorset_ovride(shp[0], rgb, color_index, resetStat=resetStat)


def colorset_ovride(node, rgb, color_index, resetStat=False, OverrideStat=True):
    """オーバーライドカラー設定（オブジェクト、シェイプ）

    Args:
        node (str): 処理対象
        rgb (list[float, float, float]): RGBカラー
        color_index (int): カラーインデックス
        resetStat (bool, optional): リセット
        OverrideStat (bool, optional): [description]. Defaults to True.
    """
    if cmds.attributeQuery('overrideRGBColors', node=node, exists=True):
        # オブジェクトカラー設定
        if not cmds.listConnections('{}.drawOverride'.format(node), s=True, type='displayLayer'):
            # ディスプレイレイヤーに登録されていなければtransformにカラー設定
            try:
                if resetStat:
                    cmds.setAttr('{}.overrideEnabled'.format(node), 0)

                else:
                    if OverrideStat:
                        cmds.setAttr('{}.overrideEnabled'.format(node), 1)

                    cmds.setAttr('{}.overrideRGBColors'.format(node), 1)
                    cmds.setAttr('{}.overrideColorR'.format(node), rgb[0])
                    cmds.setAttr('{}.overrideColorG'.format(node), rgb[1])
                    cmds.setAttr('{}.overrideColorB'.format(node), rgb[2])

                    # インデックスカラー設定（ハイパーグラフ対策）
                    if color_index:
                        cmds.setAttr('{}.overrideColor'.format(node), color_index)

            except BaseException:
                raise
