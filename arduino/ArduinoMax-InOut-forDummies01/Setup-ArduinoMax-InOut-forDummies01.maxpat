{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 55.0, 44.0, 1196.0, 754.0 ],
		"bglocked" : 0,
		"defrect" : [ 55.0, 44.0, 1196.0, 754.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 787.0, 127.0, 40.0, 40.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-113",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 787.0, 47.0, 39.0, 39.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-106",
					"outlettype" : [ "bang" ],
					"fgcolor" : [ 0.258824, 0.72549, 0.72549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "It is now possible to toggle on/off the onboard LED on the Arduino.",
					"linecount" : 5,
					"fontsize" : 12.0,
					"patching_rect" : [ 846.0, 122.0, 99.0, 75.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-107",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Example1: Click the button. \nPin 13 is now set to be a digital output.",
					"linecount" : 5,
					"fontsize" : 12.0,
					"patching_rect" : [ 846.0, 44.0, 103.0, 75.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-108",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "[v 13 $1]",
					"fontsize" : 12.0,
					"patching_rect" : [ 787.0, 176.0, 57.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-110",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "[p 13 1]",
					"fontsize" : 12.0,
					"patching_rect" : [ 787.0, 96.0, 51.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-111",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin19_AnaIn",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 693.0, 677.0, 50.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-105",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin18_AnaIn",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 655.0, 677.0, 50.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-104",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin17_AnaIn",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 617.0, 676.0, 50.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-103",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin16_AnaIn",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 579.0, 677.0, 50.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-102",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin15_AnaIn",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 541.0, 677.0, 50.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-101",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin14_AnaIn",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 504.0, 677.0, 50.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-100",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin13_DigiIn",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 466.0, 573.0, 43.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-99",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin12_DigiIn",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 428.0, 573.0, 43.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-98",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin11_DigiIn",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 390.0, 573.0, 43.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-97",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin10_DigiIn",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 352.0, 573.0, 43.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-96",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin9_DigiIn",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 315.0, 573.0, 43.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-95",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin8_DigiIn",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 277.0, 573.0, 43.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-94",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin7_DigiIn",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 239.0, 573.0, 43.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-93",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin6_DigiIn",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 201.0, 573.0, 43.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-92",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin5_DigiIn",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 163.0, 573.0, 43.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-91",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin4_DigiIn",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 126.0, 573.0, 43.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-90",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin3_DigiIn",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 88.0, 573.0, 43.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-89",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s Pin2_DigiIn",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 50.0, 573.0, 43.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-88",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3:",
					"fontsize" : 12.0,
					"patching_rect" : [ 546.0, 68.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-1",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "beta, beta, beta, beta, beta, beta, beta, beta, beta, beta",
					"fontsize" : 12.0,
					"patching_rect" : [ 789.0, 12.0, 312.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-87",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<rasl@cs.au.dk> <lassesvestergaard@gmail.com>",
					"fontsize" : 12.0,
					"patching_rect" : [ 806.0, 685.0, 280.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-84",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OBS! Remember to toggle poll on, for it to work!",
					"linecount" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 965.0, 536.0, 221.0, 34.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-83",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 969.0, 396.0, 39.0, 39.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-76",
					"outlettype" : [ "bang" ],
					"fgcolor" : [ 0.631373, 0.866667, 0.360784, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Observe the rightmost numberbox  (\"from Analog In Pin19\").\nNumbers will flicker unless a sensor is attached to the pin.",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 976.0, 469.0, 197.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-78",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Example3: Click the button. \nPin 19 is now set to be an analog input.",
					"linecount" : 5,
					"fontsize" : 12.0,
					"patching_rect" : [ 1028.0, 392.0, 98.0, 75.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-82",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "[p 19 0]",
					"fontsize" : 12.0,
					"patching_rect" : [ 969.0, 445.0, 49.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-85",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 886.0, 208.0, 39.0, 39.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "bang" ],
					"fgcolor" : [ 0.831373, 0.509804, 0.509804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "It is now possible to regulate a LED-fade or the speed of a small toy motor etc. via manipulation of the dial.",
					"linecount" : 7,
					"fontsize" : 12.0,
					"patching_rect" : [ 946.0, 281.0, 103.0, 103.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-81",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0-1023",
					"fontsize" : 12.0,
					"patching_rect" : [ 508.0, 725.0, 48.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-80",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0-255",
					"fontsize" : 12.0,
					"patching_rect" : [ 606.0, 259.0, 40.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-79",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Example2: Click the button. \nPin 3 is now set to be a pulse wide modulation output.",
					"linecount" : 5,
					"fontsize" : 12.0,
					"patching_rect" : [ 945.0, 202.0, 109.0, 75.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-77",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"patching_rect" : [ 886.0, 294.0, 40.0, 40.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"size" : 256.0,
					"id" : "obj-74",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "[v 3 $1]",
					"fontsize" : 12.0,
					"patching_rect" : [ 886.0, 343.0, 49.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-73",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "[p 3 2]",
					"fontsize" : 12.0,
					"patching_rect" : [ 886.0, 257.0, 43.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-72",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "For standard Arduino´s (UNO, Duemilenova).\nOther Arduino´s can work as well, but not all pin´s are by default accessible.",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 12.0, 360.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-50",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rasmus Lunding, Lasse Vestergaard April 2012",
					"fontsize" : 12.0,
					"patching_rect" : [ 806.0, 665.0, 271.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-5",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Click the button to see serial ports in the Max-window.",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 721.0, 425.0, 118.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-39",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 693.0, 443.0, 29.0, 29.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "bang" ],
					"fgcolor" : [ 0.137255, 0.486275, 0.929412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument is serial port Max-name",
					"fontsize" : 12.0,
					"patching_rect" : [ 714.0, 477.0, 194.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(The Arduino code protocol for data transmission from Max)",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 569.0, 339.0, 135.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-71",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(The Arduino code protocol for pins and pin state)",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 73.0, 338.0, 127.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-70",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"fontsize" : 12.0,
					"patching_rect" : [ 9.0, 511.0, 34.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-69",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Analog In Pin19 (A5)",
					"fontsize" : 12.0,
					"patching_rect" : [ 737.0, 540.0, 156.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-68",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Analog In Pin18 (A4)",
					"fontsize" : 12.0,
					"patching_rect" : [ 699.0, 562.0, 156.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-67",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Analog In Pin17 (A3)",
					"fontsize" : 12.0,
					"patching_rect" : [ 661.0, 584.0, 156.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-66",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Analog In Pin16 (A2)",
					"fontsize" : 12.0,
					"patching_rect" : [ 624.0, 607.0, 156.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-65",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Analog In Pin15 (A1)",
					"fontsize" : 12.0,
					"patching_rect" : [ 586.0, 629.0, 156.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-64",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Analog In Pin14 (A0)",
					"fontsize" : 12.0,
					"patching_rect" : [ 548.0, 652.0, 154.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-63",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Digi In Pin13",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 463.0, 636.0, 39.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-61",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Digi In Pin12",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 426.0, 636.0, 39.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-62",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Digi In Pin11",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 389.0, 636.0, 39.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-59",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Digi In Pin10",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 352.0, 636.0, 39.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-60",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Digi In Pin9",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 315.0, 636.0, 42.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-57",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Digi In Pin8",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 277.0, 636.0, 39.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-58",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Digi In Pin7",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 238.0, 636.0, 39.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-55",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Digi In Pin6",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 199.0, 636.0, 39.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-56",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Digi In Pin5",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 161.0, 636.0, 39.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-53",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Digi In Pin4",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 123.0, 636.0, 39.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-54",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from Digi In Pin3",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 85.0, 636.0, 39.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-52",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "fromDigi In Pin2",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 48.0, 636.0, 34.0, 62.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-51",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 12.0,
					"patching_rect" : [ 693.0, 540.0, 44.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-48",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 12.0,
					"patching_rect" : [ 655.0, 562.0, 44.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-49",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 12.0,
					"patching_rect" : [ 617.0, 584.0, 44.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-46",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 12.0,
					"patching_rect" : [ 579.0, 607.0, 44.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-47",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 12.0,
					"patching_rect" : [ 541.0, 629.0, 44.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-45",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 12.0,
					"patching_rect" : [ 504.0, 652.0, 44.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-44",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 466.0, 537.0, 32.0, 32.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-31",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 428.0, 537.0, 32.0, 32.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 390.0, 537.0, 32.0, 32.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-37",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 352.0, 537.0, 32.0, 32.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-38",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 315.0, 537.0, 32.0, 32.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 277.0, 537.0, 32.0, 32.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 239.0, 537.0, 32.0, 32.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-27",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 201.0, 537.0, 32.0, 32.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 163.0, 537.0, 32.0, 32.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 126.0, 537.0, 32.0, 32.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 88.0, 537.0, 32.0, 32.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2:",
					"fontsize" : 12.0,
					"patching_rect" : [ 159.0, 188.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2:",
					"fontsize" : 12.0,
					"patching_rect" : [ 31.0, 141.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-13",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1:",
					"fontsize" : 12.0,
					"patching_rect" : [ 51.0, 188.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-12",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1:",
					"fontsize" : 12.0,
					"patching_rect" : [ 31.0, 87.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-10",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Choose what state you want the pin to address:: Digital/Analog In, Digital Out or \"Analog Out\" (PWM).",
					"linecount" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 46.0, 135.0, 302.0, 34.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-8",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Choose the pin you want to use (once set, the setting is stored until same pin´s state is redefined -So all pins can be set from here, in sequential order).",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 46.0, 82.0, 316.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-7",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 50.0, 537.0, 32.0, 32.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : " Toggle poll on, when sensor-data is streamed to Max.",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 561.0, 55.0, 127.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-42",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 657.0, 75.0, 71.0, 71.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-43",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set polling samplerate in ms\n(default 15 ms):",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 387.0, 406.0, 116.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-40",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 12.0,
					"patching_rect" : [ 478.0, 435.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-41",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "NOTE: The Analog In pins A0-A5 is termed 14-19 in this setup.",
					"linecount" : 3,
					"fontsize" : 12.0,
					"patching_rect" : [ 379.0, 12.0, 160.0, 48.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-11",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "[v 13 0]",
					"fontsize" : 12.0,
					"patching_rect" : [ 502.0, 337.0, 66.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-36",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "[p 13 1]",
					"fontsize" : 12.0,
					"patching_rect" : [ 3.0, 337.0, 66.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-35",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "PWM",
					"fontsize" : 12.0,
					"patching_rect" : [ 594.0, 190.0, 38.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-33",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Digital Out",
					"linecount" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 549.0, 176.0, 45.0, 34.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-32",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 549.0, 213.0, 40.0, 40.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-30",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak i i",
					"fontsize" : 12.0,
					"patching_rect" : [ 549.0, 280.0, 42.0, 20.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-28",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"patching_rect" : [ 594.0, 213.0, 40.0, 40.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"size" : 256.0,
					"id" : "obj-25",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "[v $1 $2]",
					"fontsize" : 12.0,
					"patching_rect" : [ 549.0, 310.0, 57.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-23",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak i i",
					"fontsize" : 12.0,
					"patching_rect" : [ 50.0, 280.0, 48.0, 20.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-22",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "[p $1 $2]",
					"fontsize" : 12.0,
					"patching_rect" : [ 50.0, 310.0, 57.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-21",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 2",
					"fontsize" : 12.0,
					"patching_rect" : [ 50.0, 242.0, 32.5, 20.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-19",
					"fontname" : "Arial",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 12.0,
					"types" : [  ],
					"patching_rect" : [ 154.0, 213.0, 358.0, 20.0 ],
					"items" : [ "Digital/Analog", "In", "(Digital", "in", "-", "pins", "2-13.", "Analog", "in", "-", "pins", "14-19)", ",", "Digital", "Out", "(all", "pins)", ",", "PWM", "(analog out", "-", "pins", "3, 5, 6, 9, 10, 11)" ],
					"numinlets" : 1,
					"hltcolor" : [ 0.831373, 0.32549, 0.32549, 1.0 ],
					"numoutlets" : 3,
					"bgcolor2" : [ 0.439216, 0.784314, 0.509804, 1.0 ],
					"id" : "obj-16",
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 12.0,
					"types" : [  ],
					"patching_rect" : [ 50.0, 213.0, 100.0, 20.0 ],
					"items" : [ "Pin", 2, ",", "Pin", 3, ",", "Pin", 4, ",", "Pin", 5, ",", "Pin", 6, ",", "Pin", 7, ",", "Pin", 8, ",", "Pin", 9, ",", "Pin", 10, ",", "Pin", 11, ",", "Pin", 12, ",", "Pin", 13, ",", "Pin", 14, ",", "Pin", 15, ",", "Pin", 16, ",", "Pin", 17, ",", "Pin", 18, ",", "Pin", 19 ],
					"numinlets" : 1,
					"hltcolor" : [ 0.784314, 0.254902, 0.254902, 1.0 ],
					"numoutlets" : 3,
					"bgcolor2" : [ 0.364706, 0.658824, 0.627451, 1.0 ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"hint" : "",
					"annotation" : "",
					"text" : "ArduinoMaxInOutDummyCom01 a",
					"fontsize" : 12.0,
					"patching_rect" : [ 50.0, 477.0, 661.5, 20.0 ],
					"numinlets" : 4,
					"numoutlets" : 18,
					"color" : [ 0.929412, 0.729412, 0.070588, 1.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 778.0, 41.0, 173.0, 158.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.364706, 0.792157, 0.792157, 1.0 ],
					"background" : 1,
					"id" : "obj-112"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 882.0, 200.0, 174.0, 185.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.992157, 0.733333, 0.733333, 1.0 ],
					"background" : 1,
					"id" : "obj-75"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 956.0, 386.0, 234.0, 186.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.74902, 0.882353, 0.470588, 1.0 ],
					"background" : 1,
					"id" : "obj-86"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 59.5, 270.5, 558.5, 270.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.635294, 0.827451, 0.341176, 1.0 ],
					"midpoints" : [ 978.5, 466.0, 916.0, 466.0, 916.0, 474.0, 59.5, 474.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.870588, 0.52549, 0.52549, 1.0 ],
					"midpoints" : [ 895.5, 387.0, 837.0, 387.0, 837.0, 407.0, 683.0, 407.0, 683.0, 470.0, 59.5, 470.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.882353, 0.529412, 0.529412, 1.0 ],
					"midpoints" : [ 895.5, 282.0, 714.0, 282.0, 714.0, 399.0, 513.0, 399.0, 513.0, 393.0, 210.0, 393.0, 210.0, 462.0, 59.5, 462.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-2", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [ 666.5, 162.0, 522.0, 162.0, 522.0, 324.0, 273.666656, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 558.5, 330.0, 238.0, 330.0, 238.0, 397.0, 59.5, 397.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 59.5, 330.0, 69.0, 330.0, 69.0, 462.0, 59.5, 462.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 16 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 17 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 14 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 15 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 13 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 12 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 8 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 9 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 10 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 11 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 4 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 5 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 6 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 7 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 3 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-111", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.305882, 0.756863, 0.756863, 1.0 ],
					"midpoints" : [ 796.5, 123.0, 774.0, 123.0, 774.0, 399.0, 513.0, 399.0, 513.0, 393.0, 210.0, 393.0, 210.0, 462.0, 59.5, 462.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.290196, 0.792157, 0.792157, 1.0 ],
					"midpoints" : [ 796.5, 399.0, 513.0, 399.0, 513.0, 393.0, 210.0, 393.0, 210.0, 462.0, 59.5, 462.0 ]
				}

			}
 ]
	}

}
