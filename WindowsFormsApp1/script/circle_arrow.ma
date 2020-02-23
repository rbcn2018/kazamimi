//Maya ASCII 2019 scene
//Name: circle_arrow.ma
//Last modified: Sun, Feb 23, 2020 12:17:07 AM
//Codeset: 932
requires maya "2019";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201905131615-158f5352ad";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 18362)\n";
createNode transform -s -n "persp";
	rename -uid "48F807D2-4065-A67C-A8FF-7295D0DB2C8D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.6627523187569055 12.306772072783852 -0.95869567327396044 ;
	setAttr ".r" -type "double3" -74.138352729573 104.1999999999954 2.5444437451708134e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0579E1C4-4B39-2009-A3B4-958630E4305A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 12.799927581819668;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 -0.0015882304628200214 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "765C5F0E-496E-12BA-3BB5-EC9DA0F9EDAB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "EF93F63C-4B59-8C39-8F13-61830DD86B92";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "00404A75-4F4B-03BE-DC9E-46BB06710598";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5CD268B3-4803-B3FA-51E9-D2B667AA7C55";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "FF30092A-43AD-7596-4DD8-68A0F337B0E9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "76DA76B1-4580-2A77-FD69-5989550ED790";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "bezier5";
	rename -uid "06098508-4496-BD68-A78A-7DAB3BE00AC5";
createNode bezierCurve -n "bezierShape5" -p "bezier5";
	rename -uid "019321F3-41B6-55A6-3581-F2BBDEB001B3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 31 0 no 3
		36 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4 5 5 5 6 6 6 7 7 7 8 8 8 9 9 9 9.3599999999999994
		 9.3599999999999994 9.3599999999999994 9.694285714285714 9.694285714285714 9.694285714285714
		
		34
		2 0 0
		2 0 1
		1 0 2
		0 0 2
		-1 0 2
		-2 0 1
		-2 0 0
		-2 0 -1
		-1 0 -2
		0 0 -2
		1 0 -2
		2 0 -1
		2 0 0
		1.6397698523251341 -0.0031764609256400428 0.35623050143001977
		1.6383680299599803 0 0.35740958626626429
		1.6383680299599803 0 0.35740958626626429
		1.6383680299599803 0 0.35740958626626429
		1.6383680299599803 0 0.16962749245661615
		1.6383680299599803 0 0.16962749245661615
		1.6383680299599803 0 0.16962749245661615
		1.429636550848902 0 0.16962749245661615
		1.429636550848902 0 0.16962749245661615
		1.429636550848902 0 0.16962749245661615
		1.429636550848902 0 -0.16962749245661615
		1.429636550848902 0 -0.16962749245661615
		1.429636550848902 0 -0.16962749245661615
		1.6383680299599803 0 -0.16962749245661615
		1.6383680299599803 0 -0.16962749245661615
		1.6383680299599803 0 -0.16962749245661615
		1.6383680299599803 0 -0.35740958626626429
		1.6383680299599803 0 -0.35740958626626429
		1.6383680299599803 0 -0.35740958626626429
		2 0 0
		2 0 0
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A471E7E6-4EB6-4357-BDC5-BBB8395C4196";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E2ACF00B-4A94-7757-E1A2-50909D83BBD0";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A4CC39BF-4527-F7EA-F999-DAB596FAB0D1";
createNode displayLayerManager -n "layerManager";
	rename -uid "5BB17EA9-4038-E631-19A2-40B0CADEE1B6";
createNode displayLayer -n "defaultLayer";
	rename -uid "85655976-41C2-B29B-2921-A9BF42C105B2";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "90E5BFB0-4A79-BD4B-8132-398BAC87EB9D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "FAA47532-4C4B-9451-701C-AAB20EC8282E";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "123A91C3-4D8B-5A48-F840-6DB6C098B5D0";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -463.09521969348742 -232.14284791832918 ;
	setAttr ".tgi[0].vh" -type "double2" 464.28569583665836 232.14284791832918 ;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "497F3A44-440E-6FEE-B0D9-3CAD3203B85D";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 100 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of circle_arrow.ma
