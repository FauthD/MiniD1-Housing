
/* [Hidden] */

module __Customizer_Limit__ () {}

use <dfLibscad/RoundCornersCube.scad>

Epsilon=0.01;
epsilon=Epsilon;
uB=20;
C=21;

//						[sizes x,y,z	],[ESP module,(l,h offset),rot]	[con x,y,z, (l,h offset)], [pins offset, num, rows], [reset  ],[button] color, name
D1Mini_ESP32    =		[[38.9,31.0,2.1],[18,16,3.5, 23,0.9, [0,0,0]],	[5.8,7.9,3.8,-0.5,0.5,uB],[8.5,10,2],[6.6,2.55],[0,0,0],"plum",  "ESP32"];
D1Mini_ESP32_C3 =		[[34.5,25.2,2.8],[0,0,0, 19,0.0,[0,0,0]],		[5.8,7.9,3.8,0.0,0.9,C], [9.1,8,1], [6.6,1.6],[2.8,-1.3,2],"deeppink", "C3"];	// not known yet
D1Mini_ESP32_S2 =		[[34.5,25.2,2.8],[0,0,0, 19,0.0,[0,0,0]],		[5.8,7.9,3.5,0.0,0.9,C], [9.1,8,2], [6.6,1.6],[2.8,-1.3,2],"purple", "S2"];

D1Mini_ESP8866		= 	[[34.2,25.6,3.1],[17,12,3.5, 19,0.0,[180,0,0]],	[5.8,7.9,3.8,0.0,0.3,uB], [9.1,8,1], [6.6,1.6],[0,0,0],"DarkGreen", "8266"];
D1Mini_Wemos_ESP8866= 	[[34.2,25.6,3.1],[0,0,0, 19,0.0,[0,0,0]],		[5.8,7.9,3.8,0.0,0.3,uB], [9.1,8,1], [6.6,1.6],[0,0,0],"Green", "8266Wemos"];
D1Mini_Pro_ESP8866	= 	[[48,25.4,3.1],	 [0,0,0, 19,0.0,[180,0,0]],		[5.8,7.9,3.8,0.0,0.3,uB], [9.1,8,1], [6.6,1.6],[0,0,0],"SlateBlue","8266Pro"];

function GetEspBoard(type) =
	(type=="D1Mini_ESP32" ? D1Mini_ESP32 :
	(type=="D1Mini_ESP32_c3" ? D1Mini_ESP32_C3 :
	(type=="D1Mini_Wemos_ESP8866" ? D1Mini_Wemos_ESP8866 :
	(type=="D1Mini_Pro_ESP8866" ? D1Mini_Pro_ESP8866 :
	(type=="D1Mini_ESP32_S2" ? D1Mini_ESP32_S2 :
	(type=="D1Mini_ESP8866" ? D1Mini_ESP8866 : undef ))))));

function GetBoardLength(type) =
	GetEspBoard(type)[0].x;
	
function GetBoardWidth(type) =
	GetEspBoard(type)[0].y;

function GetExtraButton(type) =
	GetEspBoard(type)[5];

function GetBoardColor(type) =
	GetEspBoard(type)[6];

function GetConnectorType(type) =
	GetEspBoard(type)[2][5];

function GetConnectorLOffset(type) =
	GetEspBoard(type)[2][3];

function GetConnectorHOffset(type) =
	GetEspBoard(type)[2][4];

function GetResetNotch(type) =
	GetEspBoard(type)[4][1];

module WriteName(name, height=0.3, fontsize=4, font = "Liberation Mono:bold")
{
	translate([0, fontsize/2+0.5, 0])
		linear_extrude(height = height, center = true, convexity = 10)
			rotate([0,0,180])
				text(name, size=fontsize, font = font);	
}

module MiniD1Esp(type, pin_direction=0, pin_height=8.8)
{
	pcb_thick=0.9;
	board = GetEspBoard(type);
	size=board[0];
	color(GetBoardColor(type), 0.4)
		translate([-size.x/2, 0, 0])
		difference()
		{
			union()
			{
				{
					// board
					translate([0, 0, size.z/2])
						cube(size=[size.x, size.y, size.z], center=true);
					translate([size.x/8, 0, size.z])
						WriteName(board[7]);
					// ESP
					esp=board[1];
					rot=esp[5];
					if(esp.x)
					{
						translate([size.x/2-esp[3]+esp.x/2, 0, esp[4]])
							rotate(rot)
							{
								translate([-esp.x/2, 0, esp.z/2])
									cube(size=[esp.x, esp.y, esp.z], center=true);
								ant = 6.8;
								translate([-esp.x-ant/2, 0, 0.9/2])
									cube(size=[ant, esp.y, 0.9], center=true);
							}
					}
					// connector
					con=board[2];
					translate([size.x/2-con.x/2-con[3], 0, con.z/2+con[4]])
						rotate([0,90,0])
							RoundCornersCube(size=[con.z, con.y, con.x+Epsilon], r=con.z/2, $fn= (con[5]==C) ? 50 : 8);
					
					// pins
					grid=2.54;
					pin_distance=grid*9;
					pins=board[3];
					pl=(pins[1]+1)*grid;
					pw=pins[2]*grid;
					pin_z = (pin_direction>0) ? pcb_thick : -pin_height;

					if(pin_direction!=0)
					{
						for(y=[-pin_distance,pin_distance])
						{
							translate([size.x/2-pl/2-pins[0], y/2, pin_height/2+pin_z])
								cube(size=[pl,pw,pin_height], center=true);
						}
					}
					// extra button
					button=GetExtraButton(type);
					if(button.y<0)
					{
						translate([size.x/2-button.x, -button.y/2+size.y/2, size.z/2])
							cube(size=[button.x+Epsilon, -button.y-Epsilon, size.z], center=true);
					}
				}
			}
			// reset nodge
			reset=board[4];
			translate([size.x/2-reset.x/2, reset.y/2-size.y/2, 0])
				cube(size=[reset.x+Epsilon, reset.y+Epsilon, 5*size.z/2], center=true);
			
			// 45° corners
			for(n=[-1,1])
			{
				translate([-size.x/2, n*size.y/2, 0])
					rotate([0,0,45])
						cube(size=[3, 3, 5*size.z],center=true);
			}
		}
}

// MiniD1Esp("D1Mini_ESP32");
// MiniD1Esp("D1Mini_ESP8866");
// MiniD1Esp("D1Mini_ESP32_c3");
// MiniD1Esp("D1Mini_ESP32_S2");

//eof