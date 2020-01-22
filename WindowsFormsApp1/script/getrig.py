import traceback
import maya.mel
maya.mel.eval('sy_IllbeBack;')
try:
	import makeLegRig;reload(makeLegRig)
	makeLegRig.makeDogLegRear(side='L', mirror=1)
	makeLegRig.makeDogLegFront(side='L', mirror=1)
#	makeLegRig.makeDogLegFront(side='L')
except:
	raise Exception(traceback.format_exc(sys.exc_info()))


import maya.mel
maya.mel.eval('sy_IllbeBack;')
import traceback
try:
    import makeSpineRig;reload(makeSpineRig)
    makeSpineRig.main()
except:
	raise Exception(traceback.format_exc(sys.exc_info()))


import traceback
lst = [
'C_Spine01',
'C_Spine02',
'C_Spine03',
'C_Spine04',
'C_Spine05',
'C_Spine06',
'C_Spine07',
'C_Spine08',
]
try:
	import sycmn as c1; reload(c1)
	c1.makeLinerCurve(lst)
except:
	raise Exception(traceback.format_exc(sys.exc_info()))





import maya.cmds as cmds
selall = cmds.ls(sl=1, type='transform')
cmds.ikHandle(sj=selall[0], ee=selall[-1], sol='ikRPsolver')
print cmds.ikHandle('ikHandle1', q=1, p=1)

shpscl = 1
crv = cmds.curve(d=1, p=[(-shpscl, -shpscl, shpscl), (-shpscl, shpscl, shpscl), (shpscl, shpscl, shpscl), (shpscl, -shpscl, shpscl), (shpscl, -shpscl, -shpscl), (shpscl, shpscl, -shpscl), (-shpscl, shpscl, -shpscl), (-shpscl, -shpscl, -shpscl), (-shpscl, -shpscl, shpscl), (shpscl, -shpscl, shpscl), (shpscl, shpscl, shpscl), (shpscl, shpscl, -shpscl), (shpscl, -shpscl, -shpscl), (-shpscl, -shpscl, -shpscl), (-shpscl, shpscl, -shpscl), (-shpscl, shpscl, shpscl)])

