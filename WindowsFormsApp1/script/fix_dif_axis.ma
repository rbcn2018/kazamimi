//Maya ASCII 2019 scene
//Name: fix_dif_axis.ma
//Last modified: Mon, Feb 17, 2020 12:27:39 AM
//Codeset: 932
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires -nodeType "quatToEuler" -nodeType "quatInvert" "quatNodes" "1.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201905131615-158f5352ad";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 18362)\n";
createNode transform -s -n "persp";
	rename -uid "FB289028-4DB1-CFB3-10A8-0CAEB1599572";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.3327969479429169 0.37816147001383027 6.2848577111469881 ;
	setAttr ".r" -type "double3" 6.2616472700690391 -27.400000000011509 -2.2390315702960005e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "47B2D5CE-451D-040D-D5F3-5FAA2F0A5F99";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 5.9154920062086775;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.5258031676674908 -0.22969980596697764 -0.52433343605595106 ;
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
createNode joint -n "fix_xaxis1" -p "group1";
	rename -uid "DA59F517-4D2E-CD8A-125E-5FB6E75244E1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".r" -type "double3" 0.00078237226767508493 -1.07323055835274e-05 -0.00019880952491505081 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -23.867997571572527 -11.94821674862574 -62.613435508577162 ;
	setAttr ".bps" -type "matrix" 0.45002301726678018 -0.86868764926831477 0.20702910891657844 0
		 0.85052682408998403 0.34627386889264256 -0.39585165052772764 0 0.27218266923797435 0.35422616466151996 0.89467335873808229 0
		 0.31719009355940653 2.6363046497771783 -0.85036727832345882 1;
	setAttr ".radi" 0.62244824368576923;
createNode joint -n "fix_xaxis2" -p "fix_xaxis1";
	rename -uid "D1DC8B82-4DA3-FC03-3547-4EAC792B9B6E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".r" -type "double3" -4.5361891133340761e-08 -1.8243636836863802e-06 -1.3417569061693603e-07 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 30.948955814967171 1.8615644500361932 ;
	setAttr ".pa" -type "double3" 2.8511941064398898e-15 1.1454936190561551e-13 8.3705010642610192e-15 ;
	setAttr ".bps" -type "matrix" 0.26946658727871231 -0.91713804710909508 -0.29367594536372749 0
		 0.8354590751167541 0.37431018565876006 -0.40236801403337502 0 0.47895291224234338 -0.13692949812593153 0.86709539290527826 0
		 0.93402409373334672 1.3850850916319326 -0.5217560830203638 1;
	setAttr ".radi" 0.51870273822773127;
createNode joint -n "fix_xaxis3" -p "fix_xaxis2";
	rename -uid "B171214C-4D3C-626D-7522-1BB2C0235936";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.3609685841595049 -0.035389256754053466 0.020719329936637276 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 5.0069047016822106 0.45389622703243321 -0.94806762994566318 ;
	setAttr ".bps" -type "matrix" 0.25180383178068116 -0.92209217405878763 -0.29383814054697616 0
		 0.87857521242206316 0.34512509560686871 -0.33014279410563557 0 0.40583300311592801 -0.17502768615818406 0.89703114921390525 0
		 1.2811169611964011 0.12080537546338954 -0.88923467809335177 1;
	setAttr ".radi" 0.51870273822773127;
createNode joint -n "fix_xaxis4" -p "fix_xaxis3";
	rename -uid "63E50963-4E53-BF85-088D-7A83D1C1AC2F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.0048630129492272852 -0.06377175625175624 0.66755836720307726 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -3.1805546814635168e-15 -3.1805546814635152e-15 2.3854160110976364e-15 ;
	setAttr ".bps" -type "matrix" 0.25180383178068116 -0.92209217405878763 -0.29383814054697616 0
		 0.87857521242206316 0.34512509560686871 -0.33014279410563557 0 0.40583300311592801 -0.17502768615818406 0.89703114921390525 0
		 1.4972304191127912 -0.022529200579934794 -0.2707891816822956 1;
	setAttr ".radi" 0.51870273822773127;
createNode joint -n "enct4" -p "fix_xaxis4";
	rename -uid "1783C5FC-4C9F-508E-E09F-CFBB72FBC651";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -4.5464630393787786e-09 -9.0048160039657432e-09 1.2795921544572764e-09 ;
	setAttr ".r" -type "double3" -25.39012488389475 -32.483345479911108 113.4861177332609 ;
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k off ".sx";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -39.357392239457816 14.860091512682242 -107.06159528369587 ;
	setAttr ".pa" -type "double3" -25.39012488389475 -32.483345479911108 113.4861177332609 ;
	setAttr ".bps" -type "matrix" 0.30399944347900859 -0.90449548099725829 -0.2991191455256445 0
		 0.88527258495992689 0.38420489702144228 -0.26206687586017396 0 0.35196134543841873 -0.18513379475471661 0.91752312742344355 0
		 1.5177356094768424 -0.0036574601114844757 -0.27239683201586418 1;
	setAttr ".radi" 0.51870273822773127;
createNode joint -n "enct3" -p "fix_xaxis3";
	rename -uid "5FFDCFE3-4D81-2EA7-A10F-88800F3C53E5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 5.986938722557511e-11 4.3370524949182254e-09 -1.1638756625131919e-09 ;
	setAttr ".r" -type "double3" -25.39012488389475 -32.483345479911108 113.4861177332609 ;
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k off ".sx";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -39.357392239457802 14.860091512682246 -107.06159528369587 ;
	setAttr ".bps" -type "matrix" -0.987304161780304 -0.01252002711889379 0.15834690098714793 0
		 -0.11333392985346324 -0.64294490616259681 -0.75748086971456896 0 0.11129201442718922 -0.76581009170714887 0.63336323777452264 0
		 1.2811169406188365 0.12080538079214054 -0.88923471586250735 1;
	setAttr ".radi" 0.51870273822773127;
createNode ikEffector -n "effector2" -p "fix_xaxis2";
	rename -uid "688C1478-4D8C-F6DB-43E1-1EA5C9DAE378";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "enct1" -p "fix_xaxis1";
	rename -uid "98197B49-44D9-1915-3A9E-B3B5E21F3556";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 5.5511151231257827e-17 ;
	setAttr ".r" -type "double3" 0.00076863299768860328 3.0601316527889932e-05 -0.00024497656861174617 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -5.5906472706776 -3.5438564237528873 -1.2684627153570445 ;
	setAttr ".bps" -type "matrix" 0.44708455917801193 -0.85256926098558661 0.27063084112327862 0
		 0.83231895030974901 0.2856847718789477 -0.47500460636898156 0 0.32765921610704052 0.43761840265117291 0.8373348026692522 0
		 0.31719009355940653 2.6363046497771783 -0.85036727832345882 1;
	setAttr ".radi" 0.62244824368576923;
createNode ikHandle -n "ikHandle2" -p "group1";
	rename -uid "BF261A63-4D3B-3700-F8ED-0A9990C41CFC";
	setAttr ".v" no;
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
createNode transform -n "ik_goal";
	rename -uid "A08A3F6D-4C94-6480-CE16-B4972930D48C";
createNode locator -n "ik_goalShape" -p "ik_goal";
	rename -uid "CC9EE8C2-4DF1-0E10-2CB9-30A598949C25";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.26999999999999985 0.26999999999999985 0.26999999999999985 ;
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
createNode transform -n "up_vect";
	rename -uid "B1BF48C0-4983-5095-F02A-1BBD386C6F7F";
	setAttr ".t" -type "double3" -0.55806282602967616 2.2955727394065129 -0.5048059254628452 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999944 ;
createNode locator -n "up_vectShape" -p "up_vect";
	rename -uid "7B744A06-4BEC-2916-FC04-5FA69A0211F9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.17999999999999983 0.17999999999999983 0.17999999999999983 ;
createNode transform -n "group2";
	rename -uid "5654E736-4A55-66F8-F972-239B5096D3FB";
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
createNode joint -n "err_axis1" -p "group2";
	rename -uid "0C598DDA-443D-C1CD-9059-BDA85C08DF6D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -29.565443460019587 -15.701809012489376 -62.327628900188998 ;
	setAttr ".bps" -type "matrix" 0.44708082547051342 -0.85257071619435787 0.27063242485785782 0
		 0.83232525741275376 0.28568699728684355 -0.47499221620361337 0 0.32764828912936123 0.43761411479643425 0.8373413193922391 0
		 0.31719009355940636 2.6363046497771783 -0.85036727832345871 1;
	setAttr ".radi" 0.62244824368576923;
createNode joint -n "err_axis2" -p "err_axis1";
	rename -uid "AD7CFD5A-48A9-8BCC-59FD-8C97C8623761";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.4314606534006358 -0.00013840046371260684 -0.070287002677748511 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.9362538109268046 26.993132867573337 3.4600213921563534 ;
	setAttr ".pa" -type "double3" -8.7005299397030682e-16 1.2629865720443499e-13 2.2709809737119157e-14 ;
	setAttr ".bps" -type "matrix" 0.29369613730530891 -0.94157007244326829 -0.16488898571802663 0
		 0.79526569674997183 0.33638772232121317 -0.50437661706737402 0 0.53037255821235996 0.017002910066364008 0.8475941543831883 0
		 0.93402409373334239 1.3850850916319362 -0.52175608302036047 1;
	setAttr ".radi" 0.51870273822773127;
createNode joint -n "err_axis3" -p "err_axis2";
	rename -uid "26A26316-4887-EE01-9D94-2EAA37B38806";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.3529409510629304 0.036090492086467529 -0.14888061161096078 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -50.739114661279395 22.932735078411138 -109.29307723975946 ;
	setAttr ".bps" -type "matrix" 0.30399944347900887 -0.90449548099725807 -0.29911914552564445 0
		 0.88527258495992711 0.3842048970214425 -0.26206687586017374 0 0.35196134543841862 -0.18513379475471664 0.91752312742344366 0
		 1.2811169645495639 0.12080537710872052 -0.88923468058682287 1;
	setAttr ".radi" 0.51870273822773127;
createNode joint -n "err_axis4" -p "err_axis3";
	rename -uid "396E38C9-4A84-39A0-009B-679545E92398";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.010354953513355691 -0.025824618539266764 0.67003770666092821 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -38.943425456398423 11.531151353683338 -110.06594590298978 ;
	setAttr ".pa" -type "double3" -25.390124883894732 -32.483345479911115 113.48611773326088 ;
	setAttr ".bps" -type "matrix" 0.30399944347900854 -0.90449548099725807 -0.29911914552564473 0
		 0.88527258495992711 0.38420489702144234 -0.26206687586017402 0 0.35196134543841895 -0.18513379475471689 0.91752312742344355 0
		 1.4972304105758671 -0.022529199719428628 -0.27078917622566234 1;
	setAttr ".radi" 0.51870273822773127;
createNode orientConstraint -n "err_axis4_orientConstraint1" -p "err_axis4";
	rename -uid "095F4FEB-4D03-4AEE-A2A8-F0A804BC61AC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "enct4W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -25.390124883894728 -32.483345479911122 113.48611773326088 ;
	setAttr ".rsrr" -type "double3" -25.390124883894742 -32.483345479911122 113.48611773326088 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "err_axis3_orientConstraint1" -p "err_axis3";
	rename -uid "68DC2155-4BC1-848D-5168-EFA14CD5D9FD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "enct3W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -25.390124883894739 -32.483345479911115 113.4861177332609 ;
	setAttr ".rsrr" -type "double3" -25.390124883894739 -32.483345479911108 113.4861177332609 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "err_axis2_orientConstraint1" -p "err_axis2";
	rename -uid "4DF658AF-4026-BDCF-D1E0-ADAC036666F4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "up1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 7.5538173864408606e-15 -1.8010645362793139e-06 -1.143011957376211e-15 ;
	setAttr ".rsrr" -type "double3" 7.5538173864408606e-15 -1.8010645362793139e-06 -1.143011957376211e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "err_axis1_orientConstraint1" -p "err_axis1";
	rename -uid "8940107F-4884-9712-9BF1-008B0ED58CAE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "enct1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0.00076863299768079887 3.060131652235283e-05 -0.0002449765685971649 ;
	setAttr ".rsrr" -type "double3" 0.00076863299768079887 3.060131652235283e-05 -0.0002449765685971649 ;
	setAttr -k on ".w0";
createNode transform -n "up2" -p "group2";
	rename -uid "5275FC1D-4155-7DEC-07A4-DB84C4B518F0";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.0000000000000002 ;
createNode locator -n "up2Shape" -p "up2";
	rename -uid "E7853A35-473C-45BF-EA93-DCB339D3F00A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.29999999999999993 0.29999999999999993 0.29999999999999993 ;
createNode aimConstraint -n "up2_aimConstraint1" -p "up2";
	rename -uid "6C564A1E-4E80-2707-88BA-B58B1E6AB1EB";
	addAttr -dcb 0 -ci true -sn "w0" -ln "fix_xaxis3W0" -dv 1 -at "double";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0.022671303620747197 -0.8719065428285937 -1.489526104823812 ;
	setAttr -k on ".w0";
createNode transform -n "up3" -p "up2";
	rename -uid "B94DF0AC-44A0-251C-8825-29AEA56C6A9C";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 5.5511151231257827e-17 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode locator -n "up3Shape" -p "up3";
	rename -uid "1BBEFFB3-4C3D-9837-D284-56855C6AA0E7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.29999999999999993 0.29999999999999993 0.29999999999999993 ;
createNode aimConstraint -n "up3_aimConstraint1" -p "up3";
	rename -uid "DCD05422-44AD-D119-ED27-E0AD0383FD67";
	addAttr -dcb 0 -ci true -sn "w0" -ln "enct2_locW0" -dv 1 -at "double";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0.022671323164336635 -0.87190715651189032 -1.4895263403655636 ;
	setAttr -k on ".w0";
createNode transform -n "up4" -p "up2";
	rename -uid "20FE22B3-47D8-3858-220E-03A089DFAA3E";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 5.5511151231257827e-17 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".rq" -type "double4" -0.0010968296060069841 0.03059277843240308 0.009838319995764587 
		0.99948290947482532 ;
createNode locator -n "up4Shape" -p "up4";
	rename -uid "3ED69AB5-4DB8-393A-213B-958E9AE225F5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.27999999999999992 0.27999999999999992 0.27999999999999992 ;
createNode transform -n "up1" -p "up4";
	rename -uid "3DAE1D56-4016-9646-9EE2-01801D7AAFA9";
	setAttr ".t" -type "double3" -5.440092820663267e-15 -3.7747582837255322e-15 3.3306690738754696e-16 ;
	setAttr ".r" -type "double3" -5.9676219510845474 -6.4029006087690572 -0.85915434913785316 ;
	setAttr ".s" -type "double3" 1 0.99999999999999933 1 ;
createNode locator -n "up1Shape" -p "up1";
	rename -uid "AE02BD26-446E-85FD-F287-6E8C945C89C4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.35 0.35 0.35 ;
createNode pointConstraint -n "up2_pointConstraint1" -p "up2";
	rename -uid "9A9401F0-4A00-5A0E-0C01-639AA0E1FE51";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fix_xaxis2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0.93402409373334672 1.3850850916319326 -0.5217560830203638 ;
	setAttr -k on ".w0";
createNode joint -n "enct2" -p "group2";
	rename -uid "45BF227B-475C-AFE8-5DCE-6D935AC0FDBF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k off ".sx";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -30.755545953780608 9.4907870337749944 -72.676167556674315 ;
	setAttr ".pa" -type "double3" -8.7005299397030682e-16 1.2629865720443499e-13 2.2709809737119157e-14 ;
	setAttr ".bps" -type "matrix" 0.29369414277311295 -0.94157084452569517 -0.16488812946945394 0
		 0.7952589927641931 0.33638534124577313 -0.5043887752742382 0 0.53038371480320501 0.017007261217898029 0.84758708587225329 0
		 0.93402867123711497 1.3850868736335746 -0.5217578903183655 1;
	setAttr ".radi" 0.51870273822773127;
createNode transform -n "enct2_loc" -p "enct2";
	rename -uid "0C767236-494D-35C4-6518-2889202BE6AC";
	setAttr ".t" -type "double3" 1.352940949109485 0.036090480440765349 -0.14888059705808626 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode locator -n "enct2_locShape" -p "enct2_loc";
	rename -uid "5EB6500E-40E4-660A-98AB-C4836AE81DA5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.24899999999999989 0.24899999999999989 0.24899999999999989 ;
createNode orientConstraint -n "enct2_orientConstraint1" -p "enct2";
	rename -uid "BF006F7D-4884-AF67-6C55-B49784FA4592";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fix_xaxis2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 6.271200447146005 6.9841240155904103 3.1132551874926917 ;
	setAttr ".o" -type "double3" -5.9315925180853295 -7.2743679224669506 -2.3527982234112068 ;
	setAttr ".rsrr" -type "double3" -2.4102640734572167e-15 -1.801064554169934e-06 -1.3417964683596904e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "enct2_pointConstraint1" -p "enct2";
	rename -uid "B3BE7133-4EF7-962B-6C38-B69ADFB5032C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fix_xaxis2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -1.1102230246251565e-16 -4.4408920985006262e-16 5.5511151231257827e-17 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3664E882-4CF3-E574-6C65-25B411232189";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "3A56DC3B-4B91-68CD-37B4-7EBCAE1A80B7";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "760D2F21-432F-5501-F4CE-CFA3BA2A9D13";
createNode displayLayerManager -n "layerManager";
	rename -uid "B07EDEEB-45B5-3D7A-1059-DFBD0C59FBB5";
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "80F218C5-478B-9F5D-555C-6E9767B01367";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "213BEBBE-4E8E-EDF1-94D4-B8A5393C5BA9";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1F90FAFB-442E-2332-D93F-13B157E13B58";
	setAttr ".g" yes;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B9F95E08-4F82-55DB-70C4-F1BB18D9ECD8";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 100 ";
	setAttr ".st" 6;
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
	setAttr -s 3 ".ktv[0:2]"  0 1 53 1 100 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint4_loc_translateX";
	rename -uid "D43CDCAC-4CD3-7CE0-83A8-2E8297921432";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2811169624328613 53 1.2811169624328613
		 100 0.24967608042959877;
createNode animCurveTL -n "joint4_loc_translateY";
	rename -uid "56615A60-4279-58F0-52EB-09A7B4651777";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.12080538272857666 53 0.12080538272857666
		 100 1.8154665383964972;
createNode animCurveTL -n "joint4_loc_translateZ";
	rename -uid "66AD1FEB-4073-184E-9288-C8AE53FC7205";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.88923472166061401 53 -0.88923472166061401
		 100 -1.0345579027667409;
createNode animCurveTA -n "joint4_loc_rotateX";
	rename -uid "3ABF1121-420C-0E55-4044-34868F724970";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 53 0 100 0;
createNode animCurveTA -n "joint4_loc_rotateY";
	rename -uid "0916730B-491D-55A8-8971-E98143C0D6A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 53 0 100 0;
createNode animCurveTA -n "joint4_loc_rotateZ";
	rename -uid "84F4AEE8-4D9C-7F2D-28E4-4597862BC931";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 53 0 100 0;
createNode animCurveTU -n "joint4_loc_scaleX";
	rename -uid "51C84BE9-4971-6DBB-93F3-4E850EACD09B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 53 1 100 1;
createNode animCurveTU -n "joint4_loc_scaleY";
	rename -uid "0AD9EE98-48BE-226D-8823-C3A6F6C8659D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 53 1 100 1;
createNode animCurveTU -n "joint4_loc_scaleZ";
	rename -uid "4F171E95-4C84-B288-1FD7-CD8E274A0683";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 53 1 100 1;
createNode animCurveTL -n "fix_xaxis1_translateX";
	rename -uid "B482B289-4CFF-46FB-7E97-469690756867";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.31719009355940653 20 0.31719009355940653;
createNode animCurveTL -n "fix_xaxis1_translateY";
	rename -uid "ACDAFB38-448B-27A5-2983-FDBD6BDDB17A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.6363046497771783 20 2.6363046497771783;
createNode animCurveTL -n "fix_xaxis1_translateZ";
	rename -uid "42A20AB9-44E7-8384-93FD-50A4B88CFA28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.85036727832345882 20 -0.85036727832345882;
createNode animCurveTU -n "fix_xaxis1_scaleX";
	rename -uid "542990E3-4459-8950-1B81-94BD7C2E5AF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 20 1.3443611400702928;
createNode animCurveTU -n "fix_xaxis1_scaleY";
	rename -uid "E9BD492F-456B-DC08-D683-E8B18DAD18DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 20 1.3443611400702928;
createNode animCurveTU -n "fix_xaxis1_scaleZ";
	rename -uid "01986C6B-45B2-2E51-E6B0-178217EA54B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 20 1.3443611400702928;
createNode animCurveTL -n "joint1_translateX";
	rename -uid "8A8F9B70-4B16-F6BF-59D4-2AB1A7F2D203";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.31719009355940653;
createNode animCurveTL -n "joint1_translateY";
	rename -uid "A32A68E2-44CC-F6B7-1661-9CB29D33F554";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.6363046497771783;
createNode animCurveTL -n "joint1_translateZ";
	rename -uid "4E5A3500-4C61-A418-474E-8D81754C4FD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.85036727832345882;
createNode skinCluster -n "skinCluster2";
	rename -uid "834AC116-42C8-8B61-87DB-12801930712D";
	setAttr -s 24 ".wl";
	setAttr ".wl[0:23].w"
		3 0 0.99793557393558074 1 0.0019034184553524396 2 0.00016100760906668645
		3 0 0.55856485739382644 1 0.4406483686944086 2 0.00078677391176499537
		3 0 0.99797318574998062 1 0.0018708354544301475 2 0.00015597879558923135
		3 0 0.54629154288999549 1 0.4529415912063498 2 0.000766865903654742
		3 0 0.9979906661698652 1 0.001823419201478528 2 0.00018591462865633047
		3 0 0.55043099146382324 1 0.44804890681629428 2 0.0015201017198824566
		3 0 0.99795276349022355 1 0.001854763053214701 2 0.00019247345656177626
		3 0 0.56002135080743476 1 0.43842035310757033 2 0.0015582960849948614
		3 0 0.45195825686935553 1 0.5459949338532466 2 0.0020468092773978774
		3 0 0.42611641000777961 1 0.57185829315998848 2 0.0020252968322317958
		3 0 0.46327759859605822 1 0.53489515437550283 2 0.0018272470284388961
		3 0 0.44374589411580656 1 0.55444635806514075 2 0.0018077478190527887
		3 1 0.49719830067172971 2 0.49719830067172971 3 0.0056033986565405258
		3 1 0.065147277027173489 2 0.91772203331103575 3 0.017130689661790727
		3 1 0.49764320902606463 2 0.49665100835307902 3 0.0057057826208563641
		3 1 0.049610633939445641 2 0.93605177561991559 3 0.014337590440638707
		3 1 0.4936344266534255 2 0.4936344266534255 3 0.012731146693149105
		3 1 0.19943727205019687 2 0.71835998441653459 3 0.082202743533268452
		3 1 0.49351929824683649 2 0.49351929824683649 3 0.012961403506326992
		3 1 0.1858094848539491 2 0.73175675265866214 3 0.08243376248738879
		3 1 0.0017271909040746725 2 0.49913640454796271 3 0.49913640454796271
		3 1 0.000842375145000877 2 0.49957881242749957 3 0.49957881242749957
		3 1 0.010859162399886192 2 0.49457041880005692 3 0.49457041880005692
		3 1 0.0086751604638118669 2 0.49566241976809405 3 0.49566241976809405;
	setAttr -s 4 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.45002301726678029 0.85052682408998437 0.27218266923797435 0
		 -0.86868764926831499 0.34627386889264261 0.35422616466151996 0 0.20702910891657852 -0.39585165052772786 0.8946733587380824 0
		 2.3234332259024506 -1.519281384245007 -0.25938078223213284 1;
	setAttr ".pm[1]" -type "matrix" 0.26946658727871242 0.83545907511675432 0.47895291224234338 0
		 -0.91713804710909552 0.37431018565876018 -0.13692949812593161 0 -0.29367594536372749 -0.40236801403337508 0.86709539290527815 0
		 0.86539874011453521 -1.508728322223893 0.19471774246802992 1;
	setAttr ".pm[2]" -type "matrix" 0.25180383178068128 0.87857521242206338 0.40583300311592796 0
		 -0.92209217405878807 0.34512509560686883 -0.17502768615818412 0 -0.29383814054697616 -0.33014279410563563 0.89703114921390503 0
		 -0.47248753281029043 -1.4608249943186267 0.29889594684867676 1;
	setAttr ".pm[3]" -type "matrix" 0.25180383178068128 0.87857521242206338 0.40583300311592796 0
		 -0.92209217405878807 0.34512509560686883 -0.17502768615818412 0 -0.29383814054697616 -0.33014279410563563 0.89703114921390503 0
		 -0.47735054575951785 -1.3970532380668705 -0.3686624203544005 1;
	setAttr ".gm" -type "matrix" 0.45002591749203869 -0.86868651410323683 0.20702756773100417 0
		 0.89198981319524961 0.42615477165559812 -0.15081871154160306 0 0.042788394937796813 0.25253881050312227 0.96664021354809937 0
		 0.51182035285864969 2.2606092177631778 -0.76083059249404805 1;
	setAttr -s 4 ".ma";
	setAttr -s 4 ".dpf[0:3]"  4 4 4 4;
	setAttr -s 4 ".lw";
	setAttr -s 4 ".lw";
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 4 ".ifcl";
	setAttr -s 4 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "360EABA1-4E15-2D37-A067-82879A2435D7";
createNode objectSet -n "skinCluster2Set";
	rename -uid "E29D1799-4C99-EF82-439C-0A965C79C445";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "970AB050-4B86-FCEA-2A6B-B48C34052564";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "2B2436BF-474B-F15D-E67F-E9951A99E84D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "49A1E0A2-403A-1EC2-82EA-F4BF869738DA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "2A2F5F36-4FDF-260D-98C3-17A99B56796E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "7128866B-4042-AA6B-762B-F8A8FFB3B6F5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	rename -uid "72EB52F2-4357-7686-E83E-29971F8D4018";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 1.3654972047224634e-05 -1.8731406876272444e-07
		 -3.4698807940933367e-06 0 0.31719009355940653 2.6363046497771783 -0.85036727832345882 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.22862954711083475 0.019862883538023346 -0.52401575082389951 0.82020819852883364 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -7.9171435520801836e-10 -3.1841153034139696e-08
		 -2.3418075774027953e-09 0 1.4325405575383587 -0.038712058117054582 0.018676501233564069 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.004334180494689646 0.26677390002943868 0.015655627007771795 0.96362223017400128 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3609685841595049 -0.035389256754053466
		 0.020719329936637276 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.043710486593535047 0.0035956916855866966 -0.0084384035531488259 0.99900213098297896 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.0048630129492272852
		 -0.06377175625175624 0.66755836720307726 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster3";
	rename -uid "17D239FF-4800-7CBC-2EB9-F8B24E4D7322";
	setAttr -s 24 ".wl";
	setAttr ".wl[0:23].w"
		3 0 0.99793557393560428 1 0.0019034184553524936 2 0.00016100760904321152
		3 0 0.55856485739316697 1 0.44064836869389384 2 0.00078677391293923316
		3 0 0.99797318574990623 1 0.0018708354544300285 2 0.00015597879566376686
		3 0 0.54629154288896153 1 0.45294159120549982 2 0.00076686590553862925
		3 0 0.99799066616966847 1 0.0018234192014781954 2 0.00018591462885328867
		3 0 0.55043099120634997 1 0.44804890707080552 2 0.0015201017228445774
		3 0 0.99795276349014905 1 0.0018547630532145753 2 0.00019247345663640279
		3 0 0.56002135085448157 1 0.43842035306093174 2 0.0015582960845866765
		3 0 0.45195825699015485 1 0.5459949337326282 2 0.0020468092772170233
		3 0 0.4261164110491682 1 0.57185829210469186 2 0.002025296846139963
		3 0 0.46327759779852157 1 0.53489515517135244 2 0.0018272470301260741
		3 0 0.44374589399390346 1 0.55444635817908905 2 0.001807747827007542
		3 1 0.49719830065763654 2 0.49719830065763654 3 0.0056033986847269816
		3 1 0.06514727281019099 2 0.9177220376558386 3 0.017130689533970452
		3 1 0.49764320912648546 2 0.49665100859309219 3 0.0057057822804222986
		3 1 0.049610635586917487 2 0.93605177428350939 3 0.014337590129573122
		3 1 0.49363442667699031 2 0.4936344266769902 3 0.012731146646019511
		3 1 0.19943726978789145 2 0.71835998618235952 3 0.082202744029749017
		3 1 0.49351929855614607 2 0.49351929855614607 3 0.012961402887707887
		3 1 0.18580949092392463 2 0.73175674903557109 3 0.082433760040504261
		3 1 0.001727190509475575 2 0.49913640474526216 3 0.49913640474526216
		3 1 0.00084237533040201176 2 0.49957881233479906 3 0.49957881233479895
		3 1 0.010859162058556599 2 0.49457041897072174 3 0.49457041897072174
		3 1 0.0086751615199010933 2 0.4956624192400495 3 0.4956624192400495;
	setAttr -s 4 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.44708082547051342 0.83232525741275376 0.32764828912936123 0
		 -0.85257071619435787 0.28568699728684355 0.43761411479643431 0 0.27063242485785777 -0.47499221620361337 0.8373413193922391 0
		 2.3359634930598903 -1.4210811237166885 -0.54556325833013275 1;
	setAttr ".pm[1]" -type "matrix" 0.29369613730530886 0.79526569674997161 0.53037255821235985 0
		 -0.94157007244326829 0.33638772232121311 0.017002910066364087 0 -0.16488898571802671 -0.5043766170673738 0.84759415438318819 0
		 0.94380357026696082 -1.4718845089673764 -0.076693819290686291 1;
	setAttr ".pm[2]" -type "matrix" 0.3039994434790087 0.88527258495992667 0.3519613454384185 0
		 -0.90449548099725796 0.38420489702144239 -0.18513379475471645 0 -0.29911914552564445 -0.26206687586017352 0.91752312742344333 0
		 -0.54617804440847695 -1.4135906989624074 0.38735489252947319 1;
	setAttr ".pm[3]" -type "matrix" 0.30399944347900837 0.88527258495992667 0.35196134543841878 0
		 -0.90449548099725807 0.38420489702144228 -0.18513379475471672 0 -0.29911914552564478 -0.26206687586017385 0.91752312742344311 0
		 -0.55653299792183208 -1.3877660804231413 -0.28268281413145557 1;
	setAttr ".gm" -type "matrix" 0.45002591749203869 -0.86868651410323683 0.20702756773100417 0
		 0.89198981319524961 0.42615477165559812 -0.15081871154160306 0 0.042788394937796813 0.25253881050312227 0.96664021354809937 0
		 0.51182035285864969 2.2606092177631778 -0.76083059249404805 1;
	setAttr -s 4 ".ma";
	setAttr -s 4 ".dpf[0:3]"  4 4 4 4;
	setAttr -s 4 ".lw";
	setAttr -s 4 ".lw";
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 4 ".ifcl";
	setAttr -s 4 ".ifcl";
createNode tweak -n "tweak3";
	rename -uid "027AB8F9-4121-513D-B83C-5594508FE7B3";
createNode objectSet -n "skinCluster3Set";
	rename -uid "2F0F7A9A-4ACB-D2B4-B158-538AFE5F0683";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	rename -uid "4C925C36-47E9-C5D3-383D-4B9A84096FA0";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	rename -uid "8957A4EF-49E6-85C9-DE13-C3901014CC95";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	rename -uid "76463EF1-4BBF-F0E1-196B-58ACB3730AD3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	rename -uid "CBC51AD3-4C7F-01D7-48B7-E2828B663CBF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "2707604C-4991-B31D-2ED3-779561627EAC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose3";
	rename -uid "B404810F-4D49-C011-6D90-649D1E6A6157";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 1.3415176549007348e-05 5.3409372875999778e-07
		 -4.2756477122600083e-06 0 0.31719009355940636 2.6363046497771783 -0.85036727832345871 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.28463352957347277 0.017786301130951657 -0.52549154884077176 0.80157721613800448 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 7.2858391757592052e-17 -3.1434506356513466e-08
		 -3.6689401631422846e-16 0 1.4314606534006358 -0.00013840046371260684 -0.070287002677748511 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.014986686117479841 0.23303307755399916 0.03126105615024824 0.97185067287793703 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -0.44314127671650616 -0.56694133068726638
		 1.9807064097513265 0 1.3529409510629304 0.036090492086467529 -0.14888061161096078 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.096465147034569293 0.44640525873045916 -0.67295288512986229 0.58185155734154836 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0.44314127671650605 -0.56694133068726649
		 1.9807064097513263 0 0.01035495351335558 -0.025824618539266764 0.67003770666092832 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.11245765478601369 0.32606586095211698 -0.74951266915130821 0.56503547586259217 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes no no no no;
	setAttr ".bp" yes;
createNode animCurveTL -n "fix_xaxis2_translateX";
	rename -uid "F9DCFF46-41AB-C108-88B8-ECB46833911D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4325405575383587 20 1.4325405575383587
		 40 1.4325405575383587;
createNode animCurveTL -n "fix_xaxis2_translateY";
	rename -uid "96C370E0-462D-4272-A934-7A95126589C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.038712058117054582 20 -0.038712058117054582
		 40 -0.038712058117054582;
createNode animCurveTL -n "fix_xaxis2_translateZ";
	rename -uid "5E79B992-46EF-5A6E-2296-2AAF1743688A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.018676501233564069 20 0.018676501233564069
		 40 0.018676501233564069;
createNode animCurveTU -n "fix_xaxis2_scaleX";
	rename -uid "F57B59A2-41F2-4EF0-A945-9ABC580015C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1.5160756819340473 40 1;
createNode animCurveTU -n "fix_xaxis2_scaleY";
	rename -uid "289AAF5C-4C2A-1B6D-F7A8-C2B1650ED3DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 40 1;
createNode animCurveTU -n "fix_xaxis2_scaleZ";
	rename -uid "59BBB365-4830-EDAF-6C64-8AA0193CAEB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 40 1;
createNode animCurveTA -n "fix_xaxis3_rotateX";
	rename -uid "78BD4430-43B3-7DDB-3090-C3A8640B090A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "fix_xaxis3_rotateY";
	rename -uid "36DE381C-47A3-7DC6-FF17-ABBC74A82405";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "fix_xaxis3_rotateZ";
	rename -uid "FE5F4373-4718-F60D-F9AF-5398D8773118";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "fix_xaxis3_scaleX";
	rename -uid "1A01B7BC-43FB-C675-7DBB-FD90603FFF92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "fix_xaxis3_scaleY";
	rename -uid "84D2D7D8-4857-C21A-65FB-FE8DAC3DEA36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "fix_xaxis3_scaleZ";
	rename -uid "F5E2C487-4EB3-8691-E87B-078921CB8B08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode displayLayer -n "layer2";
	rename -uid "D2D45B49-43D9-49DD-6F78-A69E9DED230D";
	setAttr ".dt" 2;
	setAttr ".do" 2;
createNode decomposeMatrix -n "decomposeMatrix1";
	rename -uid "D290EA2F-460D-945A-3DA1-D1AD251EBD9C";
createNode quatInvert -n "quatInvert1";
	rename -uid "192C88E2-482F-FCDC-1578-14ACF178E8A6";
createNode decomposeMatrix -n "decomposeMatrix2";
	rename -uid "B6395A51-47CB-B5F2-C58F-79AEE0A39096";
createNode quatInvert -n "quatInvert2";
	rename -uid "97BC90E2-434B-0149-C499-4BB250C46800";
createNode quatToEuler -n "quatToEuler1";
	rename -uid "8DBB537B-4B28-7897-ECC6-2FA76A4E59FB";
createNode plusMinusAverage -n "plusMinusAverage1";
	rename -uid "45F5F678-4C85-D70F-9C34-17B2BBF675BC";
	setAttr -s 2 ".i1[1]"  0;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "1E7A00CA-42F5-8770-4855-BEBF16CFC6A3";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 110.97076711832611 -2392.8331596177118 ;
	setAttr ".tgi[0].vh" -type "double2" 1833.5459513054361 -995.31388310134002 ;
	setAttr -s 9 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 742.85711669921875;
	setAttr ".tgi[0].ni[0].y" -1272.857177734375;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1050;
	setAttr ".tgi[0].ni[1].y" -1222.857177734375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 435.71429443359375;
	setAttr ".tgi[0].ni[2].y" -1272.857177734375;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 128.57142639160156;
	setAttr ".tgi[0].ni[3].y" -1272.857177734375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -178.57142639160156;
	setAttr ".tgi[0].ni[4].y" -1272.857177734375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 1664.2857666015625;
	setAttr ".tgi[0].ni[5].y" -1454.2857666015625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 1664.2857666015625;
	setAttr ".tgi[0].ni[6].y" -1222.857177734375;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 1357.142822265625;
	setAttr ".tgi[0].ni[7].y" -1222.857177734375;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1664.2857666015625;
	setAttr ".tgi[0].ni[8].y" -1324.2857666015625;
	setAttr ".tgi[0].ni[8].nvs" 18304;
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
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
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
connectAttr "layer1.di" "pCube2.do";
connectAttr "skinCluster2GroupId.id" "pCubeShape2.iog.og[6].gid";
connectAttr "skinCluster2Set.mwc" "pCubeShape2.iog.og[6].gco";
connectAttr "groupId4.id" "pCubeShape2.iog.og[7].gid";
connectAttr "tweakSet2.mwc" "pCubeShape2.iog.og[7].gco";
connectAttr "skinCluster2.og[0]" "pCubeShape2.i";
connectAttr "tweak2.vl[0].vt[0]" "pCubeShape2.twl";
connectAttr "fix_xaxis1_scaleX.o" "fix_xaxis1.sx";
connectAttr "fix_xaxis1_scaleY.o" "fix_xaxis1.sy";
connectAttr "fix_xaxis1_scaleZ.o" "fix_xaxis1.sz";
connectAttr "fix_xaxis1_translateX.o" "fix_xaxis1.tx";
connectAttr "fix_xaxis1_translateY.o" "fix_xaxis1.ty";
connectAttr "fix_xaxis1_translateZ.o" "fix_xaxis1.tz";
connectAttr "fix_xaxis1.s" "fix_xaxis2.is";
connectAttr "fix_xaxis2_scaleX.o" "fix_xaxis2.sx";
connectAttr "fix_xaxis2_scaleY.o" "fix_xaxis2.sy";
connectAttr "fix_xaxis2_scaleZ.o" "fix_xaxis2.sz";
connectAttr "fix_xaxis2_translateX.o" "fix_xaxis2.tx";
connectAttr "fix_xaxis2_translateY.o" "fix_xaxis2.ty";
connectAttr "fix_xaxis2_translateZ.o" "fix_xaxis2.tz";
connectAttr "fix_xaxis2.s" "fix_xaxis3.is";
connectAttr "fix_xaxis3_scaleX.o" "fix_xaxis3.sx";
connectAttr "fix_xaxis3_scaleY.o" "fix_xaxis3.sy";
connectAttr "fix_xaxis3_scaleZ.o" "fix_xaxis3.sz";
connectAttr "fix_xaxis3_rotateX.o" "fix_xaxis3.rx";
connectAttr "fix_xaxis3_rotateY.o" "fix_xaxis3.ry";
connectAttr "fix_xaxis3_rotateZ.o" "fix_xaxis3.rz";
connectAttr "fix_xaxis3.s" "fix_xaxis4.is";
connectAttr "fix_xaxis4.sy" "enct4.sy";
connectAttr "fix_xaxis4.sz" "enct4.sz";
connectAttr "fix_xaxis4.sx" "enct4.sx";
connectAttr "fix_xaxis4.s" "enct4.is";
connectAttr "fix_xaxis3.sy" "enct3.sy";
connectAttr "fix_xaxis3.sz" "enct3.sz";
connectAttr "fix_xaxis3.sx" "enct3.sx";
connectAttr "fix_xaxis3.s" "enct3.is";
connectAttr "fix_xaxis3.tx" "effector2.tx";
connectAttr "fix_xaxis3.ty" "effector2.ty";
connectAttr "fix_xaxis3.tz" "effector2.tz";
connectAttr "fix_xaxis1.sx" "enct1.sx";
connectAttr "fix_xaxis1.sy" "enct1.sy";
connectAttr "fix_xaxis1.sz" "enct1.sz";
connectAttr "fix_xaxis1.s" "enct1.is";
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
connectAttr "up_vect.t" "ikHandle2_poleVectorConstraint1.tg[0].tt";
connectAttr "up_vect.rp" "ikHandle2_poleVectorConstraint1.tg[0].trp";
connectAttr "up_vect.rpt" "ikHandle2_poleVectorConstraint1.tg[0].trt";
connectAttr "up_vect.pm" "ikHandle2_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle2_poleVectorConstraint1.w0" "ikHandle2_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "ikHandle2.pim" "ikHandle2_pointConstraint1.cpim";
connectAttr "ikHandle2.rp" "ikHandle2_pointConstraint1.crp";
connectAttr "ikHandle2.rpt" "ikHandle2_pointConstraint1.crt";
connectAttr "ik_goal.t" "ikHandle2_pointConstraint1.tg[0].tt";
connectAttr "ik_goal.rp" "ikHandle2_pointConstraint1.tg[0].trp";
connectAttr "ik_goal.rpt" "ikHandle2_pointConstraint1.tg[0].trt";
connectAttr "ik_goal.pm" "ikHandle2_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle2_pointConstraint1.w0" "ikHandle2_pointConstraint1.tg[0].tw"
		;
connectAttr "joint4_loc_translateX.o" "ik_goal.tx";
connectAttr "joint4_loc_translateY.o" "ik_goal.ty";
connectAttr "joint4_loc_translateZ.o" "ik_goal.tz";
connectAttr "joint4_loc_rotateX.o" "ik_goal.rx";
connectAttr "joint4_loc_rotateY.o" "ik_goal.ry";
connectAttr "joint4_loc_rotateZ.o" "ik_goal.rz";
connectAttr "joint4_loc_visibility.o" "ik_goal.v";
connectAttr "joint4_loc_scaleX.o" "ik_goal.sx";
connectAttr "joint4_loc_scaleY.o" "ik_goal.sy";
connectAttr "joint4_loc_scaleZ.o" "ik_goal.sz";
connectAttr "layer2.di" "group2.do";
connectAttr "layer1.di" "pCube1.do";
connectAttr "skinCluster3GroupId.id" "pCubeShape1.iog.og[4].gid";
connectAttr "skinCluster3Set.mwc" "pCubeShape1.iog.og[4].gco";
connectAttr "groupId6.id" "pCubeShape1.iog.og[5].gid";
connectAttr "tweakSet3.mwc" "pCubeShape1.iog.og[5].gco";
connectAttr "skinCluster3.og[0]" "pCubeShape1.i";
connectAttr "tweak3.vl[0].vt[0]" "pCubeShape1.twl";
connectAttr "joint1_translateX.o" "err_axis1.tx";
connectAttr "joint1_translateY.o" "err_axis1.ty";
connectAttr "joint1_translateZ.o" "err_axis1.tz";
connectAttr "err_axis1_orientConstraint1.crx" "err_axis1.rx";
connectAttr "err_axis1_orientConstraint1.cry" "err_axis1.ry";
connectAttr "err_axis1_orientConstraint1.crz" "err_axis1.rz";
connectAttr "enct1.sx" "err_axis1.sx";
connectAttr "enct1.sy" "err_axis1.sy";
connectAttr "enct1.sz" "err_axis1.sz";
connectAttr "err_axis2_orientConstraint1.crx" "err_axis2.rx";
connectAttr "err_axis2_orientConstraint1.cry" "err_axis2.ry";
connectAttr "err_axis2_orientConstraint1.crz" "err_axis2.rz";
connectAttr "err_axis1.s" "err_axis2.is";
connectAttr "enct2.sy" "err_axis2.sy";
connectAttr "enct2.sz" "err_axis2.sz";
connectAttr "plusMinusAverage1.o1" "err_axis2.sx";
connectAttr "err_axis3_orientConstraint1.crx" "err_axis3.rx";
connectAttr "err_axis3_orientConstraint1.cry" "err_axis3.ry";
connectAttr "err_axis3_orientConstraint1.crz" "err_axis3.rz";
connectAttr "err_axis2.s" "err_axis3.is";
connectAttr "enct3.sy" "err_axis3.sy";
connectAttr "enct3.sz" "err_axis3.sz";
connectAttr "enct3.sx" "err_axis3.sx";
connectAttr "err_axis4_orientConstraint1.crx" "err_axis4.rx";
connectAttr "err_axis4_orientConstraint1.cry" "err_axis4.ry";
connectAttr "err_axis4_orientConstraint1.crz" "err_axis4.rz";
connectAttr "err_axis3.s" "err_axis4.is";
connectAttr "enct4.sy" "err_axis4.sy";
connectAttr "enct4.sz" "err_axis4.sz";
connectAttr "enct4.sx" "err_axis4.sx";
connectAttr "err_axis4.ro" "err_axis4_orientConstraint1.cro";
connectAttr "err_axis4.pim" "err_axis4_orientConstraint1.cpim";
connectAttr "err_axis4.jo" "err_axis4_orientConstraint1.cjo";
connectAttr "err_axis4.is" "err_axis4_orientConstraint1.is";
connectAttr "enct4.r" "err_axis4_orientConstraint1.tg[0].tr";
connectAttr "enct4.ro" "err_axis4_orientConstraint1.tg[0].tro";
connectAttr "enct4.pm" "err_axis4_orientConstraint1.tg[0].tpm";
connectAttr "enct4.jo" "err_axis4_orientConstraint1.tg[0].tjo";
connectAttr "err_axis4_orientConstraint1.w0" "err_axis4_orientConstraint1.tg[0].tw"
		;
connectAttr "err_axis3.ro" "err_axis3_orientConstraint1.cro";
connectAttr "err_axis3.pim" "err_axis3_orientConstraint1.cpim";
connectAttr "err_axis3.jo" "err_axis3_orientConstraint1.cjo";
connectAttr "err_axis3.is" "err_axis3_orientConstraint1.is";
connectAttr "enct3.r" "err_axis3_orientConstraint1.tg[0].tr";
connectAttr "enct3.ro" "err_axis3_orientConstraint1.tg[0].tro";
connectAttr "enct3.pm" "err_axis3_orientConstraint1.tg[0].tpm";
connectAttr "enct3.jo" "err_axis3_orientConstraint1.tg[0].tjo";
connectAttr "err_axis3_orientConstraint1.w0" "err_axis3_orientConstraint1.tg[0].tw"
		;
connectAttr "err_axis2.ro" "err_axis2_orientConstraint1.cro";
connectAttr "err_axis2.pim" "err_axis2_orientConstraint1.cpim";
connectAttr "err_axis2.jo" "err_axis2_orientConstraint1.cjo";
connectAttr "err_axis2.is" "err_axis2_orientConstraint1.is";
connectAttr "up1.r" "err_axis2_orientConstraint1.tg[0].tr";
connectAttr "up1.ro" "err_axis2_orientConstraint1.tg[0].tro";
connectAttr "up1.pm" "err_axis2_orientConstraint1.tg[0].tpm";
connectAttr "err_axis2_orientConstraint1.w0" "err_axis2_orientConstraint1.tg[0].tw"
		;
connectAttr "err_axis1.ro" "err_axis1_orientConstraint1.cro";
connectAttr "err_axis1.pim" "err_axis1_orientConstraint1.cpim";
connectAttr "err_axis1.jo" "err_axis1_orientConstraint1.cjo";
connectAttr "err_axis1.is" "err_axis1_orientConstraint1.is";
connectAttr "enct1.r" "err_axis1_orientConstraint1.tg[0].tr";
connectAttr "enct1.ro" "err_axis1_orientConstraint1.tg[0].tro";
connectAttr "enct1.pm" "err_axis1_orientConstraint1.tg[0].tpm";
connectAttr "enct1.jo" "err_axis1_orientConstraint1.tg[0].tjo";
connectAttr "err_axis1_orientConstraint1.w0" "err_axis1_orientConstraint1.tg[0].tw"
		;
connectAttr "up2_aimConstraint1.crx" "up2.rx";
connectAttr "up2_aimConstraint1.cry" "up2.ry";
connectAttr "up2_aimConstraint1.crz" "up2.rz";
connectAttr "up2_pointConstraint1.ctx" "up2.tx";
connectAttr "up2_pointConstraint1.cty" "up2.ty";
connectAttr "up2_pointConstraint1.ctz" "up2.tz";
connectAttr "up2.pim" "up2_aimConstraint1.cpim";
connectAttr "up2.t" "up2_aimConstraint1.ct";
connectAttr "up2.rp" "up2_aimConstraint1.crp";
connectAttr "up2.rpt" "up2_aimConstraint1.crt";
connectAttr "up2.ro" "up2_aimConstraint1.cro";
connectAttr "fix_xaxis3.t" "up2_aimConstraint1.tg[0].tt";
connectAttr "fix_xaxis3.rp" "up2_aimConstraint1.tg[0].trp";
connectAttr "fix_xaxis3.rpt" "up2_aimConstraint1.tg[0].trt";
connectAttr "fix_xaxis3.pm" "up2_aimConstraint1.tg[0].tpm";
connectAttr "up2_aimConstraint1.w0" "up2_aimConstraint1.tg[0].tw";
connectAttr "fix_xaxis2.wm" "up2_aimConstraint1.wum";
connectAttr "up3_aimConstraint1.crx" "up3.rx";
connectAttr "up3_aimConstraint1.cry" "up3.ry";
connectAttr "up3_aimConstraint1.crz" "up3.rz";
connectAttr "up3.pim" "up3_aimConstraint1.cpim";
connectAttr "up3.t" "up3_aimConstraint1.ct";
connectAttr "up3.rp" "up3_aimConstraint1.crp";
connectAttr "up3.rpt" "up3_aimConstraint1.crt";
connectAttr "up3.ro" "up3_aimConstraint1.cro";
connectAttr "enct2_loc.t" "up3_aimConstraint1.tg[0].tt";
connectAttr "enct2_loc.rp" "up3_aimConstraint1.tg[0].trp";
connectAttr "enct2_loc.rpt" "up3_aimConstraint1.tg[0].trt";
connectAttr "enct2_loc.pm" "up3_aimConstraint1.tg[0].tpm";
connectAttr "up3_aimConstraint1.w0" "up3_aimConstraint1.tg[0].tw";
connectAttr "fix_xaxis2.wm" "up3_aimConstraint1.wum";
connectAttr "quatToEuler1.ort" "up4.r";
connectAttr "up2.pim" "up2_pointConstraint1.cpim";
connectAttr "up2.rp" "up2_pointConstraint1.crp";
connectAttr "up2.rpt" "up2_pointConstraint1.crt";
connectAttr "fix_xaxis2.t" "up2_pointConstraint1.tg[0].tt";
connectAttr "fix_xaxis2.rp" "up2_pointConstraint1.tg[0].trp";
connectAttr "fix_xaxis2.rpt" "up2_pointConstraint1.tg[0].trt";
connectAttr "fix_xaxis2.pm" "up2_pointConstraint1.tg[0].tpm";
connectAttr "up2_pointConstraint1.w0" "up2_pointConstraint1.tg[0].tw";
connectAttr "fix_xaxis2.sy" "enct2.sy";
connectAttr "fix_xaxis2.sz" "enct2.sz";
connectAttr "fix_xaxis2.sx" "enct2.sx";
connectAttr "enct2_orientConstraint1.crx" "enct2.rx";
connectAttr "enct2_orientConstraint1.cry" "enct2.ry";
connectAttr "enct2_orientConstraint1.crz" "enct2.rz";
connectAttr "enct2_pointConstraint1.ctx" "enct2.tx";
connectAttr "enct2_pointConstraint1.cty" "enct2.ty";
connectAttr "enct2_pointConstraint1.ctz" "enct2.tz";
connectAttr "enct2.ro" "enct2_orientConstraint1.cro";
connectAttr "enct2.pim" "enct2_orientConstraint1.cpim";
connectAttr "enct2.jo" "enct2_orientConstraint1.cjo";
connectAttr "enct2.is" "enct2_orientConstraint1.is";
connectAttr "fix_xaxis2.r" "enct2_orientConstraint1.tg[0].tr";
connectAttr "fix_xaxis2.ro" "enct2_orientConstraint1.tg[0].tro";
connectAttr "fix_xaxis2.pm" "enct2_orientConstraint1.tg[0].tpm";
connectAttr "fix_xaxis2.jo" "enct2_orientConstraint1.tg[0].tjo";
connectAttr "enct2_orientConstraint1.w0" "enct2_orientConstraint1.tg[0].tw";
connectAttr "enct2.pim" "enct2_pointConstraint1.cpim";
connectAttr "enct2.rp" "enct2_pointConstraint1.crp";
connectAttr "enct2.rpt" "enct2_pointConstraint1.crt";
connectAttr "fix_xaxis2.t" "enct2_pointConstraint1.tg[0].tt";
connectAttr "fix_xaxis2.rp" "enct2_pointConstraint1.tg[0].trp";
connectAttr "fix_xaxis2.rpt" "enct2_pointConstraint1.tg[0].trt";
connectAttr "fix_xaxis2.pm" "enct2_pointConstraint1.tg[0].tpm";
connectAttr "enct2_pointConstraint1.w0" "enct2_pointConstraint1.tg[0].tw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "fix_xaxis1.wm" "skinCluster2.ma[0]";
connectAttr "fix_xaxis2.wm" "skinCluster2.ma[1]";
connectAttr "fix_xaxis3.wm" "skinCluster2.ma[2]";
connectAttr "fix_xaxis4.wm" "skinCluster2.ma[3]";
connectAttr "fix_xaxis1.liw" "skinCluster2.lw[0]";
connectAttr "fix_xaxis2.liw" "skinCluster2.lw[1]";
connectAttr "fix_xaxis3.liw" "skinCluster2.lw[2]";
connectAttr "fix_xaxis4.liw" "skinCluster2.lw[3]";
connectAttr "fix_xaxis1.obcc" "skinCluster2.ifcl[0]";
connectAttr "fix_xaxis2.obcc" "skinCluster2.ifcl[1]";
connectAttr "fix_xaxis3.obcc" "skinCluster2.ifcl[2]";
connectAttr "fix_xaxis4.obcc" "skinCluster2.ifcl[3]";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "pCubeShape2.iog.og[6]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "pCubeShape2.iog.og[7]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "pCubeShape2Orig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "group1.msg" "bindPose2.m[0]";
connectAttr "fix_xaxis1.msg" "bindPose2.m[1]";
connectAttr "fix_xaxis2.msg" "bindPose2.m[2]";
connectAttr "fix_xaxis3.msg" "bindPose2.m[3]";
connectAttr "fix_xaxis4.msg" "bindPose2.m[4]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "fix_xaxis1.bps" "bindPose2.wm[1]";
connectAttr "fix_xaxis2.bps" "bindPose2.wm[2]";
connectAttr "fix_xaxis3.bps" "bindPose2.wm[3]";
connectAttr "fix_xaxis4.bps" "bindPose2.wm[4]";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "bindPose3.msg" "skinCluster3.bp";
connectAttr "err_axis1.wm" "skinCluster3.ma[0]";
connectAttr "err_axis2.wm" "skinCluster3.ma[1]";
connectAttr "err_axis3.wm" "skinCluster3.ma[2]";
connectAttr "err_axis4.wm" "skinCluster3.ma[3]";
connectAttr "err_axis1.liw" "skinCluster3.lw[0]";
connectAttr "err_axis2.liw" "skinCluster3.lw[1]";
connectAttr "err_axis3.liw" "skinCluster3.lw[2]";
connectAttr "err_axis4.liw" "skinCluster3.lw[3]";
connectAttr "err_axis1.obcc" "skinCluster3.ifcl[0]";
connectAttr "err_axis2.obcc" "skinCluster3.ifcl[1]";
connectAttr "err_axis3.obcc" "skinCluster3.ifcl[2]";
connectAttr "err_axis4.obcc" "skinCluster3.ifcl[3]";
connectAttr "groupParts6.og" "tweak3.ip[0].ig";
connectAttr "groupId6.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "pCubeShape1.iog.og[4]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "pCubeShape1.iog.og[5]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "pCubeShape1Orig.w" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "group2.msg" "bindPose3.m[0]";
connectAttr "err_axis1.msg" "bindPose3.m[1]";
connectAttr "err_axis2.msg" "bindPose3.m[2]";
connectAttr "err_axis3.msg" "bindPose3.m[3]";
connectAttr "err_axis4.msg" "bindPose3.m[4]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[1]" "bindPose3.p[2]";
connectAttr "bindPose3.m[2]" "bindPose3.p[3]";
connectAttr "bindPose3.m[3]" "bindPose3.p[4]";
connectAttr "err_axis1.bps" "bindPose3.wm[1]";
connectAttr "err_axis2.bps" "bindPose3.wm[2]";
connectAttr "err_axis3.bps" "bindPose3.wm[3]";
connectAttr "err_axis4.bps" "bindPose3.wm[4]";
connectAttr "layerManager.dli[2]" "layer2.id";
connectAttr "decomposeMatrix2.oq" "quatInvert1.iq";
connectAttr "up3.m" "decomposeMatrix2.imat";
connectAttr "decomposeMatrix2.oq" "quatInvert2.iq";
connectAttr "quatInvert2.oq" "quatToEuler1.iq";
connectAttr "enct2.sx" "plusMinusAverage1.i1[0]";
connectAttr "decomposeMatrix2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "quatInvert2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "up3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "up3_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "enct2_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "enct2_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "up4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "quatToEuler1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "quatInvert1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "decomposeMatrix1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "quatInvert1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "quatInvert2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "quatToEuler1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of fix_dif_axis.ma
