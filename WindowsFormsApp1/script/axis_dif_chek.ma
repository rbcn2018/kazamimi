//Maya ASCII 2019 scene
//Name: axis_dif_chek.ma
//Last modified: Mon, Feb 17, 2020 12:26:58 AM
//Codeset: 932
requires maya "2019";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201905131615-158f5352ad";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 18362)\n";
createNode transform -s -n "persp";
	rename -uid "FB289028-4DB1-CFB3-10A8-0CAEB1599572";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.2981904754497382 1.0106759084610524 5.749523074647735 ;
	setAttr ".r" -type "double3" 1.4616472699819958 26.600000000003721 -5.5578964847869761e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "47B2D5CE-451D-040D-D5F3-5FAA2F0A5F99";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 7.3367330365224497;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.55806282602967605 2.2955727394065129 -0.5048059254628452 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "44AFBF9C-4751-674D-188B-C3A862750A2C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3D3F2484-42B5-F7E1-2D37-2AA51F36915B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -n "group1";
	rename -uid "A42372CF-42BB-A762-A397-ACA12E125EDE";
createNode joint -n "fix_xaxis1" -p "group1";
	rename -uid "DA59F517-4D2E-CD8A-125E-5FB6E75244E1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.31719009355940653 2.6363046497771783 -0.85036727832345882 ;
	setAttr ".r" -type "double3" 0.00078237226767508493 -1.07323055835274e-05 -0.00019880952491505081 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -23.867997571572527 -11.94821674862574 -62.613435508577162 ;
	setAttr ".bps" -type "matrix" 0.45002591749203968 -0.86868651410323638 0.207027567731004 0
		 0.85052154583278228 0.346272046152719 -0.39586458559389159 0 0.2721943674282446 0.35423073027107171 0.89466799209089909 0
		 0.31719009355940653 2.6363046497771783 -0.85036727832345882 1;
	setAttr ".radi" 0.62244824368576923;
createNode joint -n "fix_xaxis2" -p "fix_xaxis1";
	rename -uid "D1DC8B82-4DA3-FC03-3547-4EAC792B9B6E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.4325405575383587 -0.038712058117054582 0.018676501233564069 ;
	setAttr ".r" -type "double3" -4.5361891133340761e-08 -1.8243636836863802e-06 -1.3417569061693603e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 30.948955814967171 1.8615644500361932 ;
	setAttr ".pa" -type "double3" 2.8511941064398898e-15 1.1454936190561551e-13 8.3705010642610192e-15 ;
	setAttr ".bps" -type "matrix" 0.26946289489499475 -0.91713946847242045 -0.29367489447505557 0
		 0.83545370543226039 0.37430832700530786 -0.40238089220785983 0 0.47896435603739329 -0.13692505871685251 0.86708977271161014 0
		 0.93402867123712152 1.3850868736335731 -0.52175789031836561 1;
	setAttr ".radi" 0.51870273822773127;
createNode joint -n "fix_xaxis3" -p "fix_xaxis2";
	rename -uid "B171214C-4D3C-626D-7522-1BB2C0235936";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.3609685841595049 -0.035389256754053466 0.020719329936637276 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 5.0069047016822106 0.45389622703243321 -0.94806762994566318 ;
	setAttr ".bps" -type "matrix" 0.25180013820647607 -0.92209359959890913 -0.29383683223504559 0
		 0.87857079934182059 0.3451236073502888 -0.33015609367903231 0 0.40584484836335416 -0.17502311055472186 0.89702668289671061 0
		 1.2811169406188441 0.12080538079214298 -0.88923471586250935 1;
	setAttr ".radi" 0.51870273822773127;
createNode ikEffector -n "effector2" -p "fix_xaxis2";
	rename -uid "688C1478-4D8C-F6DB-43E1-1EA5C9DAE378";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "pCube2" -p "group1";
	rename -uid "8008693F-45B9-AC3A-3F8E-4894B1ABE6C2";
	setAttr ".t" -type "double3" 0.51182035285864969 2.2606092177631778 -0.76083059249404805 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -8.8679975715725128 -11.94821674862575 -62.613435508577226 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "D4892A1E-4B5B-B3D5-D653-A3B1A540F49E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pCubeShape1Orig2" -p "pCube2";
	rename -uid "50E5E137-49FB-4E71-FDE2-75A209F73A3F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0.25 0.625 0
		 0.625 0 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.49999893 -0.15500033 0.26999977 0.88198078 -0.1623304 0.30510226
		 -0.49999893 0.15499973 0.26999995 0.90185422 0.14612265 0.28140154 -0.4999994 0.15499985 -0.27000031
		 0.90001631 0.10487068 -0.25701737 -0.49999988 -0.15500021 -0.27000019 0.88014281 -0.2035826 -0.23331679
		 0.94657838 -0.2048279 -0.25830305 1.21729302 -0.20379364 0.20893624 0.9651283 0.10440505 -0.26973549
		 1.23584259 0.10543966 0.19750407 2.032683372 -0.3708185 -0.85208607 2.30569243 -0.35029507 -0.38663474
		 2.051185369 -0.06233871 -0.87654054 2.32419395 -0.041814923 -0.41108885 2.24020529 -0.39283752 -0.97283673
		 2.51321459 -0.37231386 -0.50738525 2.25870752 -0.084357858 -0.99729109 2.53171611 -0.06383431 -0.53183937
		 2.51474094 -0.33457971 -0.030229375 2.53324246 -0.026099563 -0.054683462 2.72226286 -0.3565985 -0.15097985
		 2.74076462 -0.048118949 -0.17543399;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 1 2 4 0
		 3 5 1 4 6 0 5 7 0 6 0 0 7 1 1 7 8 0 1 9 0 8 9 1 5 10 0 10 8 1 3 11 0 11 10 1 9 11 1
		 8 12 0 9 13 0 12 13 1 10 14 0 14 12 1 11 15 0 15 14 1 13 15 0 12 16 0 13 17 1 16 17 0
		 14 18 0 18 16 0 15 19 1 19 18 0 17 19 1 13 20 0 15 21 0 20 21 0 17 22 0 20 22 0 19 23 0
		 22 23 0 21 23 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -31 -33 -35 -36
		mu 0 4 22 23 24 25
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -12 12 14 -14
		mu 0 4 1 10 15 14
		f 4 -10 15 16 -13
		mu 0 4 10 11 16 15
		f 4 -8 17 18 -16
		mu 0 4 11 3 17 16
		f 4 -6 13 19 -18
		mu 0 4 3 1 14 17
		f 4 -15 20 22 -22
		mu 0 4 14 15 19 18
		f 4 -17 23 24 -21
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 21 27 -26
		mu 0 4 17 14 18 21
		f 4 -23 28 30 -30
		mu 0 4 18 19 23 22
		f 4 -25 31 32 -29
		mu 0 4 19 20 24 23
		f 4 -27 33 34 -32
		mu 0 4 20 21 25 24
		f 4 -39 40 42 -44
		mu 0 4 26 27 28 29
		f 4 -28 36 38 -38
		mu 0 4 21 18 27 26
		f 4 29 39 -41 -37
		mu 0 4 18 22 28 27
		f 4 35 41 -43 -40
		mu 0 4 22 25 29 28
		f 4 -34 37 43 -42
		mu 0 4 25 21 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pCubeShape2Orig" -p "pCube2";
	rename -uid "6337827A-4778-F56A-BE0F-4487C79E112B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0.25 0.625 0
		 0.625 0 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.49999893 -0.15500033 0.26999977 0.88198078 -0.1623304 0.30510226
		 -0.49999893 0.15499973 0.26999995 0.90185422 0.14612265 0.28140154 -0.4999994 0.15499985 -0.27000031
		 0.90001631 0.10487068 -0.25701737 -0.49999988 -0.15500021 -0.27000019 0.88014281 -0.2035826 -0.23331679
		 0.94657838 -0.2048279 -0.25830305 1.21729302 -0.20379364 0.20893624 0.9651283 0.10440505 -0.26973549
		 1.23584259 0.10543966 0.19750407 2.032683372 -0.3708185 -0.85208607 2.30569243 -0.35029507 -0.38663474
		 2.051185369 -0.06233871 -0.87654054 2.32419395 -0.041814923 -0.41108885 2.24020529 -0.39283752 -0.97283673
		 2.51321459 -0.37231386 -0.50738525 2.25870752 -0.084357858 -0.99729109 2.53171611 -0.06383431 -0.53183937
		 2.51474094 -0.33457971 -0.030229375 2.53324246 -0.026099563 -0.054683462 2.72226286 -0.3565985 -0.15097985
		 2.74076462 -0.048118949 -0.17543399;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 1 2 4 0
		 3 5 1 4 6 0 5 7 0 6 0 0 7 1 1 7 8 0 1 9 0 8 9 1 5 10 0 10 8 1 3 11 0 11 10 1 9 11 1
		 8 12 0 9 13 0 12 13 1 10 14 0 14 12 1 11 15 0 15 14 1 13 15 0 12 16 0 13 17 1 16 17 0
		 14 18 0 18 16 0 15 19 1 19 18 0 17 19 1 13 20 0 15 21 0 20 21 0 17 22 0 20 22 0 19 23 0
		 22 23 0 21 23 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -31 -33 -35 -36
		mu 0 4 22 23 24 25
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -12 12 14 -14
		mu 0 4 1 10 15 14
		f 4 -10 15 16 -13
		mu 0 4 10 11 16 15
		f 4 -8 17 18 -16
		mu 0 4 11 3 17 16
		f 4 -6 13 19 -18
		mu 0 4 3 1 14 17
		f 4 -15 20 22 -22
		mu 0 4 14 15 19 18
		f 4 -17 23 24 -21
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 21 27 -26
		mu 0 4 17 14 18 21
		f 4 -23 28 30 -30
		mu 0 4 18 19 23 22
		f 4 -25 31 32 -29
		mu 0 4 19 20 24 23
		f 4 -27 33 34 -32
		mu 0 4 20 21 25 24
		f 4 -39 40 42 -44
		mu 0 4 26 27 28 29
		f 4 -28 36 38 -38
		mu 0 4 21 18 27 26
		f 4 29 39 -41 -37
		mu 0 4 18 22 28 27
		f 4 35 41 -43 -40
		mu 0 4 22 25 29 28
		f 4 -34 37 43 -42
		mu 0 4 25 21 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode ikHandle -n "ikHandle2" -p "group1";
	rename -uid "BF261A63-4D3B-3700-F8ED-0A9990C41CFC";
	setAttr ".twi" -90;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle2_poleVectorConstraint1" -p "ikHandle2";
	rename -uid "9CA30F3E-4B46-D448-BDAA-DCAE71EB4B5F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint1_locW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.87525291958908269 -0.34073191037066541 0.34556135286061362 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "ikHandle2_pointConstraint1" -p "ikHandle2";
	rename -uid "6D9E6373-4DC6-0939-9C2B-498871CDB785";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint4_locW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.2811169624328613 0.12080538272857666 -0.88923472166061401 ;
	setAttr -k on ".w0";
createNode transform -s -n "front";
	rename -uid "0F899B97-4006-7824-01CC-F0A0528BAFD2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3A1109F8-451A-22D5-DC6A-B19EE4788D22";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -n "dup";
	rename -uid "9B262397-40C3-FC18-C23B-37B437800B37";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.31719008088111877 2.6363046169281006 -0.85036730766296387 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999944 ;
	setAttr ".dla" yes;
createNode locator -n "dupShape" -p "dup";
	rename -uid "F5D85B0E-47D4-BB57-C861-89AD5AA716C8";
	setAttr -k off ".v";
createNode aimConstraint -n "dup_aimConstraint1" -p "dup";
	rename -uid "DBD3C685-406D-EDF8-E44D-3BA831324040";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint4_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 1 0 0 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -0.88078974948127364 -20.19943620946507 -158.72926624879622 ;
	setAttr -k on ".w0";
createNode transform -n "dup_loc" -p "dup";
	rename -uid "E1FABA65-43DE-DA1D-540B-29807FB0F85B";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 -1.1102230246251565e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999967 1.0000000000000004 ;
createNode locator -n "dup_locShape" -p "dup_loc";
	rename -uid "938691B8-42D9-D81B-3135-E5821484FCB1";
	setAttr -k off ".v";
createNode transform -s -n "side";
	rename -uid "10595B64-4FF2-B1CC-7865-FB809A746164";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "DE723CD7-4569-4A5A-FC09-D292BD4F144E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "joint1_loc1";
	rename -uid "55CBEB82-48D1-A8FE-4FBF-DB8F3CBABDAA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.31719009355940653 2.6363046497771783 -0.85036727832345882 ;
createNode locator -n "joint1_locShape1" -p "joint1_loc1";
	rename -uid "C0097483-4650-BFA1-7F17-C1B0E70676F0";
	setAttr -k off ".v";
createNode transform -n "l1" -p "joint1_loc1";
	rename -uid "EF8E8317-470C-75F7-5B77-C48490756FB2";
	setAttr ".t" -type "double3" 0.96392684705942999 -2.515499268985038 -0.038867437539048644 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000002 ;
createNode locator -n "l1Shape" -p "l1";
	rename -uid "0FBC3FC6-455C-B61D-92DC-2AB52B2918C1";
	setAttr -k off ".v";
createNode transform -n "l2" -p "joint1_loc1";
	rename -uid "D929F421-43FF-0868-4FBA-A7A18F2FFE41";
	setAttr ".t" -type "double3" 0.61683400017393542 -1.2512195581452434 0.32861119530309557 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000002 ;
createNode locator -n "l2Shape" -p "l2";
	rename -uid "A237759C-46B1-9340-5302-A294362A88BD";
	setAttr -k off ".v";
createNode transform -n "joint1_loc2" -p "joint1_loc1";
	rename -uid "DF0B5CD6-4D12-92DF-3562-D19D66512094";
	setAttr ".t" -type "double3" -1.7505058391781654 -0.68146382074133094 0.69112270572122725 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999944 ;
createNode locator -n "joint1_loc2Shape" -p "joint1_loc2";
	rename -uid "ECB71986-4EA1-5E12-F572-9884D00CE873";
	setAttr -k off ".v";
createNode transform -n "joint1_loc";
	rename -uid "B1BF48C0-4983-5095-F02A-1BBD386C6F7F";
	setAttr ".t" -type "double3" -0.55806282602967616 2.2955727394065129 -0.5048059254628452 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999944 ;
createNode locator -n "joint1_locShape" -p "joint1_loc";
	rename -uid "7B744A06-4BEC-2916-FC04-5FA69A0211F9";
	setAttr -k off ".v";
createNode transform -n "group2";
	rename -uid "5654E736-4A55-66F8-F972-239B5096D3FB";
createNode ikHandle -n "ikHandle1" -p "group2";
	rename -uid "003CA336-479B-909D-542C-B0BD5CAAA669";
	setAttr ".twi" -90;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "93393555-4F1B-7A4C-9892-B593D60AA10C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint1_locW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.87525291958908269 -0.34073191037066541 0.34556135286061362 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "ikHandle1_pointConstraint1" -p "ikHandle1";
	rename -uid "03DF3427-468D-7AB3-14EA-A5A5C496A729";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint4_locW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.2811169624328613 0.12080538272857666 -0.88923472166061401 ;
	setAttr -k on ".w0";
createNode transform -n "pCube1" -p "group2";
	rename -uid "B1A02258-4471-140C-EBE2-0EA9452EC547";
	setAttr ".t" -type "double3" 0.51182035285864969 2.2606092177631778 -0.76083059249404805 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -8.8679975715725128 -11.94821674862575 -62.613435508577226 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "146CD589-4D8A-1067-F0B6-B98FF8349155";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pCubeShape1Orig" -p "pCube1";
	rename -uid "FFCDDEBE-4EC3-E279-5D6F-0E81CD0715FF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0.25 0.625 0
		 0.625 0 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.49999893 -0.15500033 0.26999977 0.88198078 -0.1623304 0.30510226
		 -0.49999893 0.15499973 0.26999995 0.90185422 0.14612265 0.28140154 -0.4999994 0.15499985 -0.27000031
		 0.90001631 0.10487068 -0.25701737 -0.49999988 -0.15500021 -0.27000019 0.88014281 -0.2035826 -0.23331679
		 0.94657838 -0.2048279 -0.25830305 1.21729302 -0.20379364 0.20893624 0.9651283 0.10440505 -0.26973549
		 1.23584259 0.10543966 0.19750407 2.032683372 -0.3708185 -0.85208607 2.30569243 -0.35029507 -0.38663474
		 2.051185369 -0.06233871 -0.87654054 2.32419395 -0.041814923 -0.41108885 2.24020529 -0.39283752 -0.97283673
		 2.51321459 -0.37231386 -0.50738525 2.25870752 -0.084357858 -0.99729109 2.53171611 -0.06383431 -0.53183937
		 2.51474094 -0.33457971 -0.030229375 2.53324246 -0.026099563 -0.054683462 2.72226286 -0.3565985 -0.15097985
		 2.74076462 -0.048118949 -0.17543399;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 1 2 4 0
		 3 5 1 4 6 0 5 7 0 6 0 0 7 1 1 7 8 0 1 9 0 8 9 1 5 10 0 10 8 1 3 11 0 11 10 1 9 11 1
		 8 12 0 9 13 0 12 13 1 10 14 0 14 12 1 11 15 0 15 14 1 13 15 0 12 16 0 13 17 1 16 17 0
		 14 18 0 18 16 0 15 19 1 19 18 0 17 19 1 13 20 0 15 21 0 20 21 0 17 22 0 20 22 0 19 23 0
		 22 23 0 21 23 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -31 -33 -35 -36
		mu 0 4 22 23 24 25
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -12 12 14 -14
		mu 0 4 1 10 15 14
		f 4 -10 15 16 -13
		mu 0 4 10 11 16 15
		f 4 -8 17 18 -16
		mu 0 4 11 3 17 16
		f 4 -6 13 19 -18
		mu 0 4 3 1 14 17
		f 4 -15 20 22 -22
		mu 0 4 14 15 19 18
		f 4 -17 23 24 -21
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 21 27 -26
		mu 0 4 17 14 18 21
		f 4 -23 28 30 -30
		mu 0 4 18 19 23 22
		f 4 -25 31 32 -29
		mu 0 4 19 20 24 23
		f 4 -27 33 34 -32
		mu 0 4 20 21 25 24
		f 4 -39 40 42 -44
		mu 0 4 26 27 28 29
		f 4 -28 36 38 -38
		mu 0 4 21 18 27 26
		f 4 29 39 -41 -37
		mu 0 4 18 22 28 27
		f 4 35 41 -43 -40
		mu 0 4 22 25 29 28
		f 4 -34 37 43 -42
		mu 0 4 25 21 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint1" -p "group2";
	rename -uid "0C598DDA-443D-C1CD-9059-BDA85C08DF6D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.31719009355940653 2.6363046497771783 -0.85036727832345882 ;
	setAttr ".r" -type "double3" 0.00076863299768860328 3.0601316527889932e-05 -0.00024497656861174617 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -29.565443460019587 -15.701809012489376 -62.327628900188998 ;
	setAttr ".bps" -type "matrix" 0.44708455917801193 -0.85256926098558661 0.27063084112327862 0
		 0.83231895030974901 0.2856847718789477 -0.47500460636898156 0 0.32765921610704052 0.43761840265117291 0.8373348026692522 0
		 0.31719009355940653 2.6363046497771783 -0.85036727832345882 1;
	setAttr ".radi" 0.62244824368576923;
createNode joint -n "joint2" -p "joint1";
	rename -uid "AD7CFD5A-48A9-8BCC-59FD-8C97C8623761";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.431460653400636 -0.00013840046371216275 -0.0702870026777484 ;
	setAttr ".r" -type "double3" 8.9136371339496676e-09 -1.8010645511418802e-06 -3.4921260377702213e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.9362538109268046 26.993132867573337 3.4600213921563534 ;
	setAttr ".pa" -type "double3" -8.7005299397030682e-16 1.2629865720443499e-13 2.2709809737119157e-14 ;
	setAttr ".bps" -type "matrix" 0.29369414277311295 -0.94157084452569517 -0.16488812946945394 0
		 0.7952589927641931 0.33638534124577313 -0.5043887752742382 0 0.53038371480320501 0.017007261217898029 0.84758708587225329 0
		 0.93402867123711497 1.3850868736335746 -0.5217578903183655 1;
	setAttr ".radi" 0.51870273822773127;
createNode joint -n "joint3" -p "joint2";
	rename -uid "26A26316-4887-EE01-9D94-2EAA37B38806";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.3529409510629304 0.036090492086467973 -0.14888061161096089 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -50.739114661279395 22.932735078411138 -109.29307723975946 ;
	setAttr ".bps" -type "matrix" -0.987304161780304 -0.01252002711889379 0.15834690098714793 0
		 -0.11333392985346324 -0.64294490616259681 -0.75748086971456896 0 0.11129201442718922 -0.76581009170714887 0.63336323777452264 0
		 1.2811169406188365 0.12080538079214054 -0.88923471586250735 1;
	setAttr ".radi" 0.51870273822773127;
createNode ikEffector -n "effector1" -p "joint2";
	rename -uid "03360176-4B57-2F41-A169-1C947A52C1EC";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "joint4_loc";
	rename -uid "A08A3F6D-4C94-6480-CE16-B4972930D48C";
createNode locator -n "joint4_locShape" -p "joint4_loc";
	rename -uid "CC9EE8C2-4DF1-0E10-2CB9-30A598949C25";
	setAttr -k off ".v";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "908057F3-4F39-5EBF-B7B0-8A9552344A54";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "AF94C50B-4B38-56A9-F374-4EA62A10A9BF";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4D3966CF-459E-F57D-A14C-96BFBEF0C3A7";
createNode displayLayerManager -n "layerManager";
	rename -uid "FFC208F6-4E05-4B6F-EFB9-D781AD504B5A";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "80F218C5-478B-9F5D-555C-6E9767B01367";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D0516521-4BF1-125D-B7A7-2D993F4297C5";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1F90FAFB-442E-2332-D93F-13B157E13B58";
	setAttr ".g" yes;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B9F95E08-4F82-55DB-70C4-F1BB18D9ECD8";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 100 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster1";
	rename -uid "1054B075-4485-9C4D-1DF8-E2BBD3C03DF2";
	setAttr -s 24 ".wl";
	setAttr ".wl[0:23].w"
		3 0 0.99793557752850903 1 0.0019034148598201202 2 0.00016100761167092464
		3 0 0.5585697137262563 1 0.44065284150742895 2 0.00077744476631459215
		3 0 0.99797318419905701 1 0.0018708370039132542 2 0.0001559787970297319
		3 0 0.54629727037688847 1 0.45294608763894761 2 0.00075664198416400513
		3 0 0.99799066285199933 1 0.0018234225158257576 2 0.00018591463217486288
		3 0 0.55043146789710595 1 0.44804848634269118 2 0.0015200457602029427
		3 0 0.99795276507337838 1 0.0018547614650577487 2 0.00019247346156390474
		3 0 0.56002096289813852 1 0.43842070664778243 2 0.0015583304540791006
		3 0 0.45195845715420713 1 0.54599469212481255 2 0.0020468507209803434
		3 0 0.4261648343409894 1 0.57192206713222238 2 0.001913098526788317
		3 0 0.46327734812350879 1 0.53489547374404733 2 0.0018271781324439686
		3 0 0.44379651962285366 1 0.55450997012092751 2 0.0016935102562188448
		3 0 0.0012269837460869755 1 0.49938650812695651 2 0.49938650812695651
		3 0 0.0011995895885233063 1 0.49940020520573836 2 0.49940020520573836
		3 0 0.0012659655547938374 1 0.49986540578437372 2 0.49886862866083242
		3 0 0.0012384497044668338 1 0.49939520959176226 2 0.49936634070377089
		3 0 0.0016839683029208142 1 0.49915801584853958 2 0.49915801584853958
		3 0 0.001656316956563304 1 0.49917184152171834 2 0.49917184152171834
		3 0 0.0017241423408072198 1 0.4991379288295964 2 0.4991379288295964
		3 0 0.0016954970542366905 1 0.49915225147288167 2 0.49915225147288167
		3 0 0.020700309243938286 1 0.48964984537803091 2 0.48964984537803091
		3 0 0.021242502055027618 1 0.48937874897248623 2 0.48937874897248623
		3 0 0.015426809345422352 1 0.4922865953272888 2 0.4922865953272888
		3 0 0.015738187356649069 1 0.49213090632167544 2 0.49213090632167544;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.44708455917801193 0.83231895030974912 0.32765921610704052 0
		 -0.85256926098558694 0.28568477187894775 0.43761840265117302 0 0.27063084112327868 -0.47500460636898167 0.83733480266925231 0
		 2.3359571256351463 -1.4210837925041155 -0.54558356995858026 1;
	setAttr ".pm[1]" -type "matrix" 0.29369414277311301 0.7952589927641931 0.53038371480320512 0
		 -0.94157084452569539 0.33638534124577318 0.017007261217897893 0 -0.16488812946945386 -0.5043887752742382 0.84758708587225362 0
		 0.94380698485360193 -1.4718864442305273 -0.076714880867012045 1;
	setAttr ".pm[2]" -type "matrix" -0.98730416178030378 -0.11333392985346318 0.1112920144271895 0
		 -0.012520027118893537 -0.64294490616259681 -0.76581009170714887 0 0.15834690098714782 -0.75748086971456907 0.63336323777452264 0
		 1.4071721353508684 -0.4507130642524016 0.5131444734850632 1;
	setAttr ".gm" -type "matrix" 0.45002591749203869 -0.86868651410323683 0.20702756773100417 0
		 0.89198981319524961 0.42615477165559812 -0.15081871154160306 0 0.042788394937796813 0.25253881050312227 0.96664021354809937 0
		 0.51182035285864969 2.2606092177631778 -0.76083059249404805 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "3123B93B-4094-BC0D-B72F-5F8B348BE279";
createNode objectSet -n "skinCluster1Set";
	rename -uid "AEB8CDFB-49B8-87B0-FA56-B4923070A5FC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "009B4312-4444-865E-9F30-E3A7FB85F768";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "2574FC77-4A0C-BC55-37D8-C793658ECE4F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "81C3C7A5-406A-E9EB-A007-0B9262F3F340";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "DFA46181-4D95-C192-DC4B-1B843A9035E4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "5DD474EA-4502-8C1A-054D-3C99CA228143";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "762063CE-4CEE-AD76-26C2-E0BEB11581F8";
	setAttr -s 3 ".wm";
	setAttr -s 3 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.31719009355940653 2.6363046497771783
		 -0.85036727832345882 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.28463352957347277 0.017786301130951657 -0.52549154884077176 0.80157721613800448 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.431460653400636 -0.00013840046371216275
		 -0.0702870026777484 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.014986686117479841 0.23303307755399916 0.03126105615024824 0.97185067287793703 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3529409510629304 0.036090492086467973
		 -0.14888061161096089 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.096465147034569293 0.44640525873045916 -0.67295288512986229 0.58185155734154836 1
		 1 1 yes;
	setAttr -s 3 ".m";
	setAttr -s 3 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "EEDDC596-4376-47A0-F467-FAAD293F00C2";
	setAttr -s 24 ".wl";
	setAttr ".wl[0:23].w"
		3 0 0.99793557752850903 1 0.0019034148598200966 2 0.00016100761167092456
		3 0 0.55856971372626052 1 0.4406528415074249 2 0.00077744476631461991
		3 0 0.99797318419905701 1 0.0018708370039132284 2 0.00015597879702973117
		3 0 0.54629727037689324 1 0.45294608763894284 2 0.00075664198416398876
		3 0 0.99799066285199955 1 0.0018234225158257247 2 0.00018591463217486131
		3 0 0.55043146789711117 1 0.44804848634268585 2 0.0015200457602029135
		3 0 0.99795276507337838 1 0.0018547614650577169 2 0.00019247346156390366
		3 0 0.56002096289814451 1 0.43842070664777633 2 0.0015583304540791553
		3 0 0.45195845715421429 1 0.54599469212480534 2 0.0020468507209804193
		3 0 0.42616483434099461 1 0.57192206713221705 2 0.0019130985267883276
		3 0 0.46327734812351284 1 0.53489547374404323 2 0.0018271781324439313
		3 0 0.44379651962285582 1 0.5545099701209254 2 0.0016935102562187466
		3 0 0.0012269837460870485 1 0.49938650812695645 2 0.49938650812695645
		3 0 0.0011995895885233781 1 0.49940020520573836 2 0.49940020520573836
		3 0 0.0012659655547937873 1 0.49986540578437377 2 0.49886862866083248
		3 0 0.0012384497044667833 1 0.49939520959176231 2 0.49936634070377095
		3 0 0.0016839683029208747 1 0.49915801584853958 2 0.49915801584853958
		3 0 0.0016563169565633655 1 0.49917184152171828 2 0.49917184152171828
		3 0 0.0017241423408071741 1 0.4991379288295964 2 0.4991379288295964
		3 0 0.0016954970542366454 1 0.49915225147288173 2 0.49915225147288173
		3 0 0.020700309243938689 1 0.48964984537803069 2 0.48964984537803069
		3 0 0.021242502055027625 1 0.48937874897248623 2 0.48937874897248612
		3 0 0.0154268093454226 1 0.49228659532728869 2 0.49228659532728869
		3 0 0.015738187356649069 1 0.49213090632167544 2 0.49213090632167544;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.45002591749203974 0.8505215458327825 0.27219436742824465 0
		 -0.86868651410323661 0.34627204615271912 0.35423073027107177 0 0.20702756773100406 -0.3958645855938917 0.8946679920908992 0
		 2.323428002764973 -1.5192859042933842 -0.25940109274104867 1;
	setAttr ".pm[1]" -type "matrix" 0.2694628948949947 0.8354537054322605 0.47896435603739329 0
		 -0.91713946847242056 0.37430832700530792 -0.13692505871685251 0 -0.29367489447505557 -0.40238089220785977 0.86708977271161003 0
		 0.86540457602516807 -1.5087326702146133 0.19469759098730943 1;
	setAttr ".pm[2]" -type "matrix" 0.25180013820647601 0.8785707993418207 0.4058448483633541 0
		 -0.92209359959890902 0.34512360735028891 -0.17502311055472186 0 -0.29383683223504553 -0.33015609367903237 0.89702668289671061 0
		 -0.47248146630340909 -1.4608309835291056 0.29887629050355535 1;
	setAttr ".gm" -type "matrix" 0.45002591749203869 -0.86868651410323683 0.20702756773100417 0
		 0.89198981319524961 0.42615477165559812 -0.15081871154160306 0 0.042788394937796813 0.25253881050312227 0.96664021354809937 0
		 0.51182035285864969 2.2606092177631778 -0.76083059249404805 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "204B179B-43DC-77F6-3A15-89A8FFEF6A7C";
createNode objectSet -n "skinCluster2Set";
	rename -uid "A02A73F2-4971-132C-8DBA-B3812A65302A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "E036E757-440A-5AC2-8B1C-F5A7359FFF47";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "AB012C17-4364-BB42-604E-C68A8FCF2F09";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "9CEA597A-40E5-F5C1-0673-92BDE19E2BBD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "D9E54872-4A3C-95A2-5611-11A747B3E4A0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "59F3C306-4138-41AE-DD22-B3803FF83712";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	rename -uid "31E1467F-45A9-2692-0C8F-40A00286C798";
	setAttr -s 3 ".wm";
	setAttr -s 3 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.31719009355940653 2.6363046497771783
		 -0.85036727832345882 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.22862954711083475 0.019862883538023346 -0.52401575082389951 0.82020819852883364 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4325405575383587 -0.038712058117054582
		 0.018676501233564069 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.004334180494689646 0.26677390002943868 0.015655627007771795 0.96362223017400128 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3609685841595049 -0.035389256754053466
		 0.020719329936637276 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.043710486593535047 0.0035956916855866966 -0.0084384035531488259 0.99900213098297896 1
		 1 1 yes;
	setAttr -s 3 ".m";
	setAttr -s 3 ".p";
	setAttr ".bp" yes;
createNode displayLayer -n "layer1";
	rename -uid "C3444335-4AC4-4BEB-3213-409DB136532E";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "A86FBC09-45E1-C214-4312-068E22CF39C1";
createNode animCurveTU -n "joint4_loc_visibility";
	rename -uid "AC1EBE49-4B2C-3A11-2F5A-3F9977757354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint4_loc_translateX";
	rename -uid "D43CDCAC-4CD3-7CE0-83A8-2E8297921432";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.2811169624328613 100 0.24967608042959877;
createNode animCurveTL -n "joint4_loc_translateY";
	rename -uid "56615A60-4279-58F0-52EB-09A7B4651777";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.12080538272857666 100 1.8154665383964972;
createNode animCurveTL -n "joint4_loc_translateZ";
	rename -uid "66AD1FEB-4073-184E-9288-C8AE53FC7205";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.88923472166061401 100 -1.0345579027667409;
createNode animCurveTA -n "joint4_loc_rotateX";
	rename -uid "3ABF1121-420C-0E55-4044-34868F724970";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
createNode animCurveTA -n "joint4_loc_rotateY";
	rename -uid "0916730B-491D-55A8-8971-E98143C0D6A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
createNode animCurveTA -n "joint4_loc_rotateZ";
	rename -uid "84F4AEE8-4D9C-7F2D-28E4-4597862BC931";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
createNode animCurveTU -n "joint4_loc_scaleX";
	rename -uid "51C84BE9-4971-6DBB-93F3-4E850EACD09B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
createNode animCurveTU -n "joint4_loc_scaleY";
	rename -uid "0AD9EE98-48BE-226D-8823-C3A6F6C8659D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
createNode animCurveTU -n "joint4_loc_scaleZ";
	rename -uid "4F171E95-4C84-B288-1FD7-CD8E274A0683";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
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
	setAttr -s 2 ".dsm";
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
select -ne :ikSystem;
connectAttr "fix_xaxis1.s" "fix_xaxis2.is";
connectAttr "fix_xaxis2.s" "fix_xaxis3.is";
connectAttr "fix_xaxis3.tx" "effector2.tx";
connectAttr "fix_xaxis3.ty" "effector2.ty";
connectAttr "fix_xaxis3.tz" "effector2.tz";
connectAttr "layer1.di" "pCube2.do";
connectAttr "skinCluster2GroupId.id" "pCubeShape2.iog.og[2].gid";
connectAttr "skinCluster2Set.mwc" "pCubeShape2.iog.og[2].gco";
connectAttr "groupId4.id" "pCubeShape2.iog.og[3].gid";
connectAttr "tweakSet2.mwc" "pCubeShape2.iog.og[3].gco";
connectAttr "skinCluster2.og[0]" "pCubeShape2.i";
connectAttr "tweak2.vl[0].vt[0]" "pCubeShape2.twl";
connectAttr "fix_xaxis1.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikRPsolver.msg" "ikHandle2.hsv";
connectAttr "ikHandle2_poleVectorConstraint1.ctx" "ikHandle2.pvx";
connectAttr "ikHandle2_poleVectorConstraint1.cty" "ikHandle2.pvy";
connectAttr "ikHandle2_poleVectorConstraint1.ctz" "ikHandle2.pvz";
connectAttr "ikHandle2_pointConstraint1.ctx" "ikHandle2.tx";
connectAttr "ikHandle2_pointConstraint1.cty" "ikHandle2.ty";
connectAttr "ikHandle2_pointConstraint1.ctz" "ikHandle2.tz";
connectAttr "ikHandle2.pim" "ikHandle2_poleVectorConstraint1.cpim";
connectAttr "fix_xaxis1.pm" "ikHandle2_poleVectorConstraint1.ps";
connectAttr "fix_xaxis1.t" "ikHandle2_poleVectorConstraint1.crp";
connectAttr "joint1_loc.t" "ikHandle2_poleVectorConstraint1.tg[0].tt";
connectAttr "joint1_loc.rp" "ikHandle2_poleVectorConstraint1.tg[0].trp";
connectAttr "joint1_loc.rpt" "ikHandle2_poleVectorConstraint1.tg[0].trt";
connectAttr "joint1_loc.pm" "ikHandle2_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle2_poleVectorConstraint1.w0" "ikHandle2_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "ikHandle2.pim" "ikHandle2_pointConstraint1.cpim";
connectAttr "ikHandle2.rp" "ikHandle2_pointConstraint1.crp";
connectAttr "ikHandle2.rpt" "ikHandle2_pointConstraint1.crt";
connectAttr "joint4_loc.t" "ikHandle2_pointConstraint1.tg[0].tt";
connectAttr "joint4_loc.rp" "ikHandle2_pointConstraint1.tg[0].trp";
connectAttr "joint4_loc.rpt" "ikHandle2_pointConstraint1.tg[0].trt";
connectAttr "joint4_loc.pm" "ikHandle2_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle2_pointConstraint1.w0" "ikHandle2_pointConstraint1.tg[0].tw"
		;
connectAttr "dup_aimConstraint1.crx" "dup.rx";
connectAttr "dup_aimConstraint1.cry" "dup.ry";
connectAttr "dup_aimConstraint1.crz" "dup.rz";
connectAttr "dup.pim" "dup_aimConstraint1.cpim";
connectAttr "dup.t" "dup_aimConstraint1.ct";
connectAttr "dup.rp" "dup_aimConstraint1.crp";
connectAttr "dup.rpt" "dup_aimConstraint1.crt";
connectAttr "dup.ro" "dup_aimConstraint1.cro";
connectAttr "joint4_loc.t" "dup_aimConstraint1.tg[0].tt";
connectAttr "joint4_loc.rp" "dup_aimConstraint1.tg[0].trp";
connectAttr "joint4_loc.rpt" "dup_aimConstraint1.tg[0].trt";
connectAttr "joint4_loc.pm" "dup_aimConstraint1.tg[0].tpm";
connectAttr "dup_aimConstraint1.w0" "dup_aimConstraint1.tg[0].tw";
connectAttr "joint1_loc.wm" "dup_aimConstraint1.wum";
connectAttr "joint1.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "ikHandle1.pvz";
connectAttr "ikHandle1_pointConstraint1.ctx" "ikHandle1.tx";
connectAttr "ikHandle1_pointConstraint1.cty" "ikHandle1.ty";
connectAttr "ikHandle1_pointConstraint1.ctz" "ikHandle1.tz";
connectAttr "ikHandle1.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "joint1.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "joint1.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "joint1_loc.t" "ikHandle1_poleVectorConstraint1.tg[0].tt";
connectAttr "joint1_loc.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp";
connectAttr "joint1_loc.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt";
connectAttr "joint1_loc.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "ikHandle1.pim" "ikHandle1_pointConstraint1.cpim";
connectAttr "ikHandle1.rp" "ikHandle1_pointConstraint1.crp";
connectAttr "ikHandle1.rpt" "ikHandle1_pointConstraint1.crt";
connectAttr "joint4_loc.t" "ikHandle1_pointConstraint1.tg[0].tt";
connectAttr "joint4_loc.rp" "ikHandle1_pointConstraint1.tg[0].trp";
connectAttr "joint4_loc.rpt" "ikHandle1_pointConstraint1.tg[0].trt";
connectAttr "joint4_loc.pm" "ikHandle1_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle1_pointConstraint1.w0" "ikHandle1_pointConstraint1.tg[0].tw"
		;
connectAttr "layer1.di" "pCube1.do";
connectAttr "skinCluster1GroupId.id" "pCubeShape1.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pCubeShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "pCubeShape1.i";
connectAttr "tweak1.vl[0].vt[0]" "pCubeShape1.twl";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3.tx" "effector1.tx";
connectAttr "joint3.ty" "effector1.ty";
connectAttr "joint3.tz" "effector1.tz";
connectAttr "joint4_loc_translateX.o" "joint4_loc.tx";
connectAttr "joint4_loc_translateY.o" "joint4_loc.ty";
connectAttr "joint4_loc_translateZ.o" "joint4_loc.tz";
connectAttr "joint4_loc_rotateX.o" "joint4_loc.rx";
connectAttr "joint4_loc_rotateY.o" "joint4_loc.ry";
connectAttr "joint4_loc_rotateZ.o" "joint4_loc.rz";
connectAttr "joint4_loc_visibility.o" "joint4_loc.v";
connectAttr "joint4_loc_scaleX.o" "joint4_loc.sx";
connectAttr "joint4_loc_scaleY.o" "joint4_loc.sy";
connectAttr "joint4_loc_scaleZ.o" "joint4_loc.sz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCubeShape1.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pCubeShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pCubeShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "joint3.msg" "bindPose1.m[2]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "joint3.bps" "bindPose1.wm[2]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "fix_xaxis1.wm" "skinCluster2.ma[0]";
connectAttr "fix_xaxis2.wm" "skinCluster2.ma[1]";
connectAttr "fix_xaxis3.wm" "skinCluster2.ma[2]";
connectAttr "fix_xaxis1.liw" "skinCluster2.lw[0]";
connectAttr "fix_xaxis2.liw" "skinCluster2.lw[1]";
connectAttr "fix_xaxis3.liw" "skinCluster2.lw[2]";
connectAttr "fix_xaxis1.obcc" "skinCluster2.ifcl[0]";
connectAttr "fix_xaxis2.obcc" "skinCluster2.ifcl[1]";
connectAttr "fix_xaxis3.obcc" "skinCluster2.ifcl[2]";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "pCubeShape2.iog.og[2]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "pCubeShape2.iog.og[3]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "pCubeShape2Orig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "fix_xaxis1.msg" "bindPose2.m[0]";
connectAttr "fix_xaxis2.msg" "bindPose2.m[1]";
connectAttr "fix_xaxis3.msg" "bindPose2.m[2]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "fix_xaxis1.bps" "bindPose2.wm[0]";
connectAttr "fix_xaxis2.bps" "bindPose2.wm[1]";
connectAttr "fix_xaxis3.bps" "bindPose2.wm[2]";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of axis_dif_chek.ma
