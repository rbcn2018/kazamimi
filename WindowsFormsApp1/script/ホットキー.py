
# コンポーネント　－　オブジェクト　選択モードトグル
if(!`selectType -q -polymeshVertex` || !`selectMode -q -component`){
	SelectVertexMask;
}else{
	selectMode -object;
}

if(!`selectType -q -polymeshEdge` || !`selectMode -q -component`){
	SelectEdgeMask;
}else{
	selectMode -object;
}

if(!`selectType -q -facet` || !`selectMode -q -component`){
	SelectFacetMask;
}else{
	selectMode -object;
}

# AEオートアップデートOFF
import maya.mel
cmds.menuItem("AEautoUpdateMenuItem", e=1, cb=1-maya.mel.eval('int $int1 = $gAutoUpdateAttrEdFlag'))
maya.mel.eval('$gAutoUpdateAttrEdFlag = 1-$gAutoUpdateAttrEdFlag')
maya.mel.eval('autoUpdateAttrEd();')


# AlternativeCopy
import maya.cmds as cmds
import tempfile
tmpFolder = tempfile.gettempdir()
tmppath = '{0}\\tmpScene1.mb'.format(tmpFolder)
cmds.file(tmppath,
f=1,
exportSelected=1,
constructionHistory=1,
channels=1,
expressions=1,
constraints=1,
shader=1,
type ='mayaBinary'
)

# AlternativePaste
import maya.cmds as cmds
import tempfile
wname = 'testUI'
wname = 'Import obj'
dialogstat = cmds.confirmDialog(title=wname, message=u'コピーしたオブジェクトをペーストしますか？', 
                                button=['Yes','No'], defaultButton='No', cancelButton='No', dismissString='No')
if dialogstat == u'Yes':
    tmpFolder = tempfile.gettempdir()
    tmppath = '{0}\\tmpScene1.mb'.format(tmpFolder)
    cmds.file(tmppath, i=1, type ='mayaBinary')


# MoveTool2
#maya.mel.eval("setTRSPreserveChildPosition true;")
stat = cmds.manipMoveContext('Move', q=1, preserveChildPosition=1)
cmds.manipMoveContext('Move', e=1, preserveChildPosition=not stat)
cmds.MoveTool


# アニメーション再生
playButtonForward;


