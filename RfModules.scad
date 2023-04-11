
/* [Hidden] */

module __Customizer_Limit__ () {}

Epsilon=0.01;
epsilon=Epsilon;

// ShowModules=false;

use <dfLibscad/Enclosure.scad>

//				   size,	mount(high,holderW,angle), Antenna pos, color
C1101_A 		= [[19.2,16.8,2],  [2,3,0],    [19.2, 0.85,0, 0], "SteelBlue","C1101"];
C1101_B 		= [[29.3,15.3,2.5],[14.5,3,0], [29.3,0.15,13, 0], "SkyBlue",  "C1101"];
C1101_B_SIDE 	= [[29.3,15.3,2.5],[14.5,3,90],[29.3,0.15,13, 0], "SkyBlue",  "C1101"];
RMF69   		= [[20.0,15.9,2],  [2.0,3,0],  [20.0,5.6,0, 0],   "DarkBlue", "RMF69"];

Antenna_433_Helix = [45, 5.6];
Antenna_868_Helix = [17, 5.6];
Antenna_Wire = [0, 0];

function GetRfModule(type) =
	(type=="RMF69" ? RMF69 :
	(type=="C1101_A" ? C1101_A :
	(type=="C1101_B" ? C1101_B :
	(type=="C1101_B_SIDE" ? C1101_B_SIDE : undef ))));

function GetAntenna(type) =
	(type=="Antenna_433_Helix" ? Antenna_433_Helix :
	(type=="Antenna_868_Helix" ? Antenna_868_Helix :
	(type=="Antenna_Wire" ? Antenna_Wire : undef )));

module WriteName(name, height=0.3, fontsize=4, font = "Liberation Mono:bold")
{
	translate([0, fontsize/2+0.5, 0])
		linear_extrude(height = height, center = true, convexity = 10)
			rotate([0,0,180])
				text(name, size=fontsize, font = font);	
}

module RfHelixAntenna(d, h)
{
	translate([0, 0, h/2])
		cylinder(d=d, h=h, center=true);
}

// RfHelixAntenna(6, 45);

module RfModule(module_type="RMF69", antenna_type="Antenna_Wire", antenna_angle=[0,0,0])
{
	echo("RfModule", module_type,antenna_type,antenna_angle );
	mod = GetRfModule(module_type);
	assert(mod!=undef);
	antenna = GetAntenna(antenna_type);
	assert(antenna!=undef);
	
	size=mod[0];
	assert(size!=undef);
	antenna_pos=mod[2];
	assert(antenna_pos!=undef);
	color=mod[3];
	assert(color!=undef);

	translate([0, 0, size.z/2])
	{
		color(color, 0.4)
		{
			cube(size=size, center=true);
			translate([size.x/2-2, 0, size.z/2])
				WriteName(mod[4]);		
		}

		color("maroon", 0.4)
			translate([-antenna_pos[0]/2, antenna_pos[1], 0])
					cube(size=[2,2,3], center=true);

		color("brown", 0.4)
		{
			translate([-size.x/2, antenna_pos[1], 1])
				rotate(antenna_angle)
					rotate([0,-90,0])
						RfHelixAntenna(d=antenna[1], h=antenna[0]);
		}
	}
}

// RfModule();
// RfModule(module_type="RMF69", antenna_type="Antenna_433_Helix",antenna_angle=[90,0,0]);
// RfModule(module_type="C1101_B", antenna_type="Antenna_433_Helix",antenna_angle=[90,0,0]);
// RfModule(module_type="C1101_B_SIDE", antenna_type="Antenna_433_Helix",antenna_angle=[90,0,0]);

function GetRfHolderSize(type) =
(
	let(mod = GetRfModule(type))
	let(size = mod[0])
	let(mount = mod[1])
	let (ret = [size.x, size.y+mount[1], size.z+mount[0]])
	ret
);


// ShowModules=true;
module RfModuleMount(module_type="RMF69", antenna_type="Antenna_Wire", antenna_angle=[0,0,90], tolerance=0.2)
{
	// echo(module_type,antenna_type,antenna_angle,tolerance);
	mod = GetRfModule(module_type);
	assert(mod!=undef);
	
	size=mod[0];
	assert(size!=undef);
	mount=mod[1];
	assert(mount!=undef);
	
	MountHeight = mount[0];
	assert(MountHeight!=undef);
	
	angle = mount[2];
	assert(angle!=undef);
	
	HolderWidth = mount[1];
	assert(HolderWidth!=undef);

	mount_size=[size.x*0.7, size.y, size.z];
	if(angle==0)
	{
		{
			EN_ModulMount(size=mount_size, holder_width=HolderWidth, holder_height=MountHeight);
			if (ShowModules)
				translate([0, 0, MountHeight])
					rotate([-angle,0,90])
						RfModule(module_type=module_type, antenna_type=antenna_type, antenna_angle=antenna_angle);
		}
	}
	else
	{
		// dirty yet, center, rot not supported
		h=2.2;
		pcb=1.8;
		// HolderWidth=4.4;
		end_cap=2;
		translate([-HolderWidth/2, -size.x/2-end_cap/2, 0])
		{
			difference()
			{
				union()
				{
					translate([0, 0, h/2])
						cube(size=[HolderWidth, size.x+end_cap, h+Epsilon], center=true);
				}
				cube(size=[pcb,size.x+tolerance,3*size.y], center=true);
				cube(size=[HolderWidth+Epsilon,0.7*size.x,3*h], center=true);
			}
		}
		if (ShowModules)
			translate([size.z-(HolderWidth+pcb)/2, -size.x/2-end_cap/2, size.y/2])
				rotate([-angle,0,90])
					RfModule(module_type=module_type, antenna_type=antenna_type, antenna_angle=antenna_angle);
	}
}

// RfModuleMount(module_type="RMF69", antenna_type="Antenna_433_Helix", antenna_angle=[0,0,90]);

// RfModuleMount(module_type="RMF69", center=true, rot=90);
// translate([28,0,0])
// RfModuleMount(module_type="C1101_A");
// RfModuleMount(module_type="C1101_B_SIDE");

// mod = GetModule("RMF69");
	
// 	size=mod[0];
// 	mount=mod[1];
	
// 	MountHeight = mount[0];
// 	angle = mount[1];
// 	HolderWidth = 2*1.2;
// 	mount_size=[size.x*0.7, size.y, size.z];
	
// #EN_ModulMount(size=mount_size, holder_width=HolderWidth, holder_height=MountHeight);
