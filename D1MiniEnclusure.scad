// Using for D1 Mini ESP32 version
// (c) Dieter Fauth

/* [Print and view] */
WhatToPrint = "print"; // [print:ForPrint, d1mini:D1Mini, body:Body, cover:Cover, mount:Mount, cut:Cut, mountcut:MountCut]

//Defaults are for D1 Mini ESP32 version
/* [Sizes] */
BodyInnerLength = 39.35;
BodyInnerWidth = 31.25;
BodyInnerDepth = 6.8;
BodyThickness = 1.8;		//	[1.4:0.2:4]

ScrewType="Sink_SelfTab"; // ["Sink_SelfTab", "Sink_M_ManualTab", "Sink_Din7500"]
ScrewDiameter = 2.0;	  // [0,2,2.5]

// Place screws towards the unside
ScrewOffset = 2.4;	//	[2:0.1:5]
// round the body
Radius=4;	//	[0:0.5:8]
// Gap between cover and body
GapTolerance=0.15;

// For revision text (0 turns off)
Fontsize=6;	//	[0:1:10]
// For revision text
Emboss=0.2;

/* [D1Mini] */
// 8266 and ESP32 use different sizes
EspType="D1Mini_ESP32"; // [D1Mini_ESP32, D1Mini_ESP8866, D1Mini_ESP32_S2, D1Mini_ESP32_c3]

// mount board upside down
UpsideDown = false; // [false, true]

// Vertical distance from inner bottom
USB_HoleOffset = 1.15;	//	[0:0.05:50]

// Hole for USB connector handle (11 or USB_InnerHoleWidth)
USB_HoleWidth = 8.2;
// Hole for USB connector handle (6.6 or USB_InnerHoleHeigth)
USB_HoleHeigth = 4.0;

// Hole for USB connector
USB_InnerHoleWidth = 8.3;
USB_InnerHoleHeigth = 4.1;

// Hole for the reset switch
Reset_Diameter = 1.5;
// Inner distance from edge
Reset_Distance = 3.3;

// none=0, up=1, down=-1
EspPins = 0; //[0,-1, 1]
EspPinHeight = 8.8;  //[5:0.1:13]

// Tolerance for mounting the ESP modules
EspTolerance = 0.4;	// [0:0.05:0.6]

// PCB mount heigth
PcbMountLength = 1.5;	//	[0:0.1:10]
PcbMountWidth = 18;		//	[0:1:30]

/* [RMF68 1] */
RMF69_1_ENABLE = false;
RMF69_1_POS_X = 0;			// [-100:0.5:100]
RMF69_1_POS_y = 0;			// [-100:0.5:100]
RMF69_1_ROT_Z = 0;			// [0,90,180,270]
RMF69_1_ANTENNA_ROT_Z = 0;	// [0,90,180,270]
RMF69_1_ANTENNA_ROT_Y = 0;	// [0,90,180,270]
RMF69_1_AntennaType = "Antenna_Wire"; // [Antenna_Wire:Antenna_Wire, Antenna_433_Helix:Antenna_433_Helix, Antenna_868_Helix:Antenna_868_Helix]

/* [RMF68 2] */
RMF69_2_ENABLE = false;
RMF69_2_POS_X = 0;			// [-100:0.5:100]
RMF69_2_POS_y = 0;			// [-100:0.5:100]
RMF69_2_ROT_Z = 0;			// [0,90,180,270]
RMF69_2_ANTENNA_ROT_Z = 0;	// [0,90,180,270]
RMF69_2_ANTENNA_ROT_Y = 0;	// [0,90,180,270]
RMF69_2_AntennaType = "Antenna_Wire"; // [Antenna_Wire:Antenna_Wire, Antenna_433_Helix:Antenna_433_Helix, Antenna_868_Helix:Antenna_868_Helix]

/* [C1101_A 1] */
C1101_A_1_ENABLE = false;
C1101_A_1_POS_X = 0;		// [-100:0.5:100]
C1101_A_1_POS_y = 0;		// [-100:0.5:100]
C1101_A_1_ROT_Z = 0;		// [0,90,180,270]
C1101_A_1_ANTENNA_ROT_Z = 0;	// [0,90,180,270]
C1101_A_1_ANTENNA_ROT_Y = 0;	// [0,90,180,270]
C1101_A_1_AntennaType = "Antenna_Wire"; // [Antenna_Wire:Antenna_Wire, Antenna_433_Helix:Antenna_433_Helix, Antenna_868_Helix:Antenna_868_Helix]

/* [C1101_A 2] */
C1101_A_2_ENABLE = false;
C1101_A_2_POS_X = 0;		// [-100:0.5:100]
C1101_A_2_POS_y = 0;		// [-100:0.5:100]
C1101_A_2_ROT_Z = 0;		// [0,90,180,270]
C1101_A_2_ANTENNA_ROT_Z = 0;	// [0,90,180,270]
C1101_A_2_ANTENNA_ROT_Y = 0;	// [0,90,180,270]
C1101_A_2_AntennaType = "Antenna_Wire"; // [Antenna_Wire:Antenna_Wire, Antenna_433_Helix:Antenna_433_Helix, Antenna_868_Helix:Antenna_868_Helix]

/* [C1101_B 1] */
C1101_B_1_ENABLE = false;
C1101_B_1_POS_X = 0;		// [-100:0.5:100]
C1101_B_1_POS_y = 0;		// [-100:0.5:100]
C1101_B_1_ROT_Z = 0;		// [0,90,180,270]
C1101_B_1_ANTENNA_ROT_Z = 0;	// [0,90,180,270]
C1101_B_1_ANTENNA_ROT_Y = 0;	// [0,90,180,270]
C1101_B_1_AntennaType = "Antenna_Wire"; // [Antenna_Wire:Antenna_Wire, Antenna_433_Helix:Antenna_433_Helix, Antenna_868_Helix:Antenna_868_Helix]

/* [C1101_B 2] */
C1101_B_2_ENABLE = false;
C1101_B_2_POS_X = 0;		// [-100:0.5:100]
C1101_B_2_POS_y = 0;		// [-100:0.5:100]
C1101_B_2_ROT_Z = 0;		// [0,90,180,270]
C1101_B_2_ANTENNA_ROT_Z = 0;	// [0,90,180,270]
C1101_B_2_ANTENNA_ROT_Y = 0;	// [0,90,180,270]
C1101_B_2_AntennaType = "Antenna_Wire"; // [Antenna_Wire:Antenna_Wire, Antenna_433_Helix:Antenna_433_Helix, Antenna_868_Helix:Antenna_868_Helix]

/* [Printer] */
// Some printers do not print height enough
UnderPrint = 0.35;	// [0:0.05:0.4]
Tolerance = 0.2;	// [0:0.05:0.4]

/* [Debug] */
// ignore asserts. Dangerous, do not print.
IgnoreAsserts = false;
ShowModules = false;

/* [Hidden] */

module __Customizer_Limit__ () {}
shown_by_customizer=false;

use <dfLibscad/Revision.scad>
use <dfLibscad/Screws.scad>
use <dfLibscad/RoundCornersCube.scad>
use <dfLibscad/Enclosure.scad>
include <./svn_rev.scad>
include <./EspModules.scad>
include <./RfModules.scad>

Epsilon=0.01;
epsilon=Epsilon;

//$fn=32;
$fa = 0.1;
$fs = 0.1;

ScrewMount=2.3*ScrewDiameter;
Inner = [BodyInnerLength, BodyInnerWidth + (ScrewDiameter==0 ? 1.7*Radius : 2*ScrewMount), BodyInnerDepth+Emboss];
Thick = [BodyThickness, BodyThickness, BodyThickness];
Outer = EN_GetOuterSize (Inner, Thick);
Screws = [ScrewDiameter, ScrewType, ScrewOffset];
PcbThickness = 0.9;

// echo("Outer=",Outer, ShowModules);

module D1MiniEsp32PcbMount()
{
	DiffEspToUsb = 0.5;
	DiffUsbEdgeToCenter = 0.55;
	ConnectorSideHeight= USB_HoleOffset + (UpsideDown ? DiffUsbEdgeToCenter : 0);
	AntennaSideHeight  = ConnectorSideHeight + (UpsideDown ? 2.5 : Tolerance);

	BoardLength = GetBoardLength(EspType) + EspTolerance;
	BoardWidth = GetBoardWidth(EspType) + EspTolerance;
	BoardStart = Inner.x/2-PcbMountLength/2;
	HolderLength = BoardLength-3.5;
	
	// PcbMount in case the enclosure is larger in lenght direction
	h = ConnectorSideHeight+3*PcbThickness;
	translate([BoardStart-BoardLength, 0, h/2-Inner.z/2])
		cube(size=[BodyThickness, PcbMountWidth, h], center=true);

	// PcbMount at connector side
	translate([BoardStart, 0, ConnectorSideHeight/2-Inner.z/2])
		cube(size=[2*PcbMountLength, PcbMountWidth, ConnectorSideHeight], center=true);
	// PcbMount at antenna side
	translate([BoardStart-BoardLength+PcbMountLength, 0, AntennaSideHeight/2-Inner.z/2])
		cube(size=[PcbMountLength, PcbMountWidth, AntennaSideHeight], center=true);

	w=BodyThickness + Radius/8;	// FIXME
	// PcbMount at antenna side width holder
	for(y=[-BoardWidth/2-w/2,BoardWidth/2+w/2])
	{
		translate([BoardStart-HolderLength+BodyThickness, y, AntennaSideHeight/2-Inner.z/2])
			cube(size=[2, w, ConnectorSideHeight+2*PcbThickness], center=true);
	}
	// PcbMounts at connector side width holder
	Notch=GetResetNotch(EspType);
	translate([BoardStart, BoardWidth/2+w/2, ConnectorSideHeight/2-Inner.z/2])
		cube(size=[2, w, ConnectorSideHeight+2*PcbThickness], center=true);
	translate([BoardStart, -BoardWidth/2-w/2-1/2+Notch, ConnectorSideHeight/2-Inner.z/2])
		cube(size=[2, w+1, ConnectorSideHeight+2*PcbThickness], center=true);
			
	if (!IgnoreAsserts)
	{
		UpperConnectorLimit = USB_InnerHoleHeigth+USB_HoleOffset;
		MinMaterial = 0.4;
		echo("Increase BodyInnerDepth to ", UpperConnectorLimit+MinMaterial);
		assert(BodyInnerDepth > UpperConnectorLimit+MinMaterial, "BodyInnerDepth must be increased");
	}
}

module D1MiniEsp8266PcbMount()
{
	MinOffset = 3.8;
	DiffUsbEdgeToCenter = 0.55;
	ConnectorSideHeight= USB_HoleOffset + (UpsideDown ? 0 : -Tolerance/2);
	AntennaSideHeight  = ConnectorSideHeight + (UpsideDown ? 0 : -PcbThickness);

	BoardLength = GetBoardLength(EspType) + EspTolerance;
	BoardWidth = GetBoardWidth(EspType) + EspTolerance;
	BoardStart = Inner.x/2-PcbMountLength/2;
	HolderLength = BoardLength-3.5;

	// PcbMount in case the enclosure is larger in lenght direction
	translate([BoardStart-BoardLength, 0, AntennaSideHeight/2-Inner.z/2])
		cube(size=[BodyThickness-Epsilon, PcbMountWidth, ConnectorSideHeight+3*PcbThickness], center=true);

	if (UpsideDown)
	{
		if (!IgnoreAsserts)
		{
			assert(false, "UpsideDown is not yet supported here");
		}
	}
	else
	{
		if (!IgnoreAsserts)
		{
			assert(USB_HoleOffset >= MinOffset, "USB_HoleOffset must be increased");
			UpperConnectorLimit = USB_InnerHoleHeigth+USB_HoleOffset;
			MinMaterial = 0.4;
			echo("Min BodyInnerDepth ", UpperConnectorLimit+MinMaterial);
			assert(BodyInnerDepth >= UpperConnectorLimit+MinMaterial, "BodyInnerDepth must be increased");
		}
		
		// PcbMount at connector side
		translate([BoardStart, 0, ConnectorSideHeight/2-Inner.z/2])
			cube(size=[2*PcbMountLength, PcbMountWidth, ConnectorSideHeight], center=true);
		// PcbMount at antenna side
		translate([BoardStart-BoardLength+PcbMountLength, 0, AntennaSideHeight/2-Inner.z/2])
			cube(size=[PcbMountLength, PcbMountWidth, AntennaSideHeight], center=true);

		// PcbMount at antenna side width holder
		w=Radius/3+BodyThickness/2;
		for(y=[-BoardWidth/2-w/2,BoardWidth/2+w/2])
		{
			translate([BoardStart-HolderLength+BodyThickness, y, AntennaSideHeight/2-Inner.z/2])
				cube(size=[2, w, ConnectorSideHeight+2*PcbThickness], center=true);
		}
		// PcbMount at connector side width holder
		translate([BoardStart, BoardWidth/2+w/2, AntennaSideHeight/2-Inner.z/2])
			cube(size=[2, w, ConnectorSideHeight+2*PcbThickness], center=true);
		translate([BoardStart, -BoardWidth/2-w/2-1/2+1.9, AntennaSideHeight/2-Inner.z/2])
			cube(size=[2, w+1, ConnectorSideHeight+2*PcbThickness], center=true);
	}
}

module Extras()
{
	ExtraPos = Inner.x/2-GetBoardLength(EspType);
	if(RMF69_1_ENABLE)
	{
		size = GetRfHolderSize("RMF69");
		translate([RMF69_1_POS_X, RMF69_1_POS_y, -Inner.z/2])
			rotate([0,0,RMF69_1_ROT_Z])
				RfModuleMount(module_type="RMF69", antenna_type=RMF69_1_AntennaType, antenna_angle=[0,RMF69_1_ANTENNA_ROT_Y,RMF69_1_ANTENNA_ROT_Z]);
	}
	if(RMF69_2_ENABLE)
	{
		size = GetRfHolderSize("RMF69");
		translate([RMF69_2_POS_X, RMF69_2_POS_y, -Inner.z/2])
			rotate([0,0,RMF69_2_ROT_Z])
				RfModuleMount(module_type="RMF69", antenna_type=RMF69_2_AntennaType, antenna_angle=[0,RMF69_2_ANTENNA_ROT_Y,RMF69_2_ANTENNA_ROT_Z]);
	}

	if(C1101_A_1_ENABLE)
	{
		size = GetRfHolderSize("C1101_A");
		translate([C1101_A_1_POS_X, C1101_A_1_POS_y, -Inner.z/2])
			rotate([0,0,C1101_A_1_ROT_Z])
				RfModuleMount(module_type="RMF69", antenna_type=C1101_A_1_AntennaType, antenna_angle=[0,C1101_A_1_ANTENNA_ROT_Y,C1101_A_1_ANTENNA_ROT_Z]);
	}
	
	if(C1101_A_2_ENABLE)
	{
		size = GetRfHolderSize("C1101_A");
		translate([C1101_A_2_POS_X, C1101_A_2_POS_y, -Inner.z/2])
			rotate([0,0,C1101_A_2_ROT_Z])
				RfModuleMount(module_type="C1101_A", antenna_type=C1101_A_2_AntennaType, antenna_angle=[0,C1101_A_2_ANTENNA_ROT_Y,C1101_A_2_ANTENNA_ROT_Z]);
	}

	if(C1101_B_1_ENABLE)
	{
		size = GetRfHolderSize("C1101_A");
		translate([C1101_B_1_POS_X, C1101_B_1_POS_y, -Inner.z/2])
			rotate([0,0,C1101_B_1_ROT_Z])
				RfModuleMount(module_type="C1101_B_SIDE", antenna_type=C1101_B_1_AntennaType, antenna_angle=[0,C1101_B_1_ANTENNA_ROT_Y,C1101_B_1_ANTENNA_ROT_Z]);
	}
	
	if(C1101_B_2_ENABLE)
	{
		size = GetRfHolderSize("C1101_A");
		translate([C1101_B_2_POS_X, C1101_B_2_POS_y, -Inner.z/2])
			rotate([0,0,C1101_B_2_ROT_Z])
				RfModuleMount(module_type="C1101_B_SIDE", antenna_type=C1101_B_2_AntennaType, antenna_angle=[0,C1101_B_2_ANTENNA_ROT_Y,C1101_B_2_ANTENNA_ROT_Z]);
	}
		
	// if(C1101_B_1_ENABLE)
	// {
	// 	translate([ExtraPos+2, -Inner.y/2, -Inner.z/2])
	// 		rotate([0,0,-90])
	// 			RfModuleMount(module_type="C1101_B_SIDE", antenna_type=AntennaType);
	// }
	
}

module UsbHole()
{
	Connector = GetConnectorType(EspType);
	Radius = (Connector == C) ? 3.3/2 : 1;
	Width = (Connector == C) ? 9.1 : USB_HoleWidth;
	Heigth = (Connector == C) ? 3.7 : USB_HoleHeigth;
	InnerWidth = (Connector == C) ? 9.1 : USB_InnerHoleWidth;
	InnerHeigth = (Connector == C) ? 3.7 : USB_InnerHoleHeigth;
	H_Offset=GetConnectorHOffset(EspType);

	translate([Outer.x/2+Thick[2]/2, 0, USB_HoleOffset+USB_InnerHoleHeigth/2-Inner.z/2+H_Offset])
	{
		rotate([90,0,90])
			RoundCornersCube(size=[Width, Heigth, 2*Thick[2]], r=Radius);
		rotate([90,0,90])
			RoundCornersCube(size=[InnerWidth, InnerHeigth, 5*Thick[2]], r=Radius);
	}	
}

module D1Mini()
{
	// Vertical distance from inner bottom
	Reset_Offset = USB_HoleOffset + USB_InnerHoleHeigth/2; // + (UpsideDown ? -2.3 : 2.3);

	difference()
	{
		print_part(part="body");
		UsbHole();

		translate([Inner.x/2-Reset_Distance, 0, -Inner.z/2+Reset_Offset])
				rotate([90,0,0])
					cylinder(d=Reset_Diameter, h=2*Outer.y, center=true);
	}
	if (EspType=="D1Mini_ESP32")
		D1MiniEsp32PcbMount();
	else if (EspType=="D1Mini_ESP8866")
		D1MiniEsp8266PcbMount();
	else if (EspType=="D1Mini_ESP32_S2")
		D1MiniEsp32PcbMount();
	else if (EspType=="D1Mini_ESP32_c3")
		D1MiniEsp32PcbMount();

	// print revision
	if(Fontsize>0)	// turn of by setting font size to 0
	{
		translate([Inner.x/2-1.5*PcbMountLength, 0, Emboss/2-Inner.z/2])
			#WriteRevision(rev=SVN_RevisionStr, height=Emboss, fontsize=Fontsize,rot=[0,0,180]);
	}

	if (ShowModules)
		translate([Inner.x/2, 0, USB_HoleOffset-Inner.z/2])
			MiniD1Esp(EspType, pin_direction=EspPins, pin_height=EspPinHeight);

	Extras();
}

module Cover(inner, thick, tolerance, radius, screws, revinfo)
{
	shell = thick.y;
	top_thickness = thick.z;
	
	difference()
	{
		EN_Cover(inner, thick, tolerance, radius=radius, screws=screws);
			
		// print revision
		if(Fontsize>0)	// turn of by setting font size to 0
		{
			edge=0.2;
			translate([inner.x/2-2*shell, 0, edge/2-top_thickness/2-Epsilon])
				WriteRevision(rev=SVN_RevisionStr, height=edge, fontsize=Fontsize, mirror=true, rot=[0,0,0]);
		}
	}
}

module RawBody()
{
	EN_RawBody(inner=Inner, thick=Thick, tolerance=GapTolerance, radius=Radius, screws=Screws, screwmount=ScrewMount, under_print=UnderPrint);
}

module ForPrint()
{
	translate([0, Outer.y/2+1, Outer.z/2])
		print_part(part="d1mini");
	translate([0, -Outer.y/2-1, Thick[2]/2])
		print_part(part="cover");
}

module Mount()
{
	translate([0, 0, Outer.z/2])
		print_part(part="body");
	color("blue")
		translate([0, 0, Outer.z-Thick[2]/2+GapTolerance/2])
			print_part(part="cover");
}

print_part(part=WhatToPrint);

module print_part(part)
{
	// echo("part=", part);
	if (part == "body")
	{
		RawBody();
	}
	else if (part == "cover")
	{
		Cover(inner=Inner, thick=Thick, tolerance=-GapTolerance, radius=Radius, screws=Screws);
	}
	else if (part == "print")
	{
		ForPrint();
	}
	else if (part == "mount")
	{
		Mount();
	}
	else if (part == "d1mini")
	{
		D1Mini();
	}
	else if (part == "cut")
	{
		difference()
		{
			print_part("d1mini");
			translate([Outer.x, Outer.y, Outer.z/2-Epsilon])
				cube(size=[2*Outer.x, 2*Outer.y, 2*Outer.z], center=true);
			translate([-Outer.x/2+Epsilon, Outer.y/8+3, Outer.z/2-Epsilon])
				cube(size=[Outer.x, Outer.y/4, 2*Outer.z], center=true);
		}
		
	}
	else if (part == "mountcut")
	{
		difference()
		{
			print_part("mount");
			translate([Outer.x, 1.5*Outer.y-2.2*BodyThickness, Outer.z/2])
				cube(size=[2*Outer.x, 2*Outer.y+Epsilon, 2*Outer.z], center=true);
		}
	}
}

