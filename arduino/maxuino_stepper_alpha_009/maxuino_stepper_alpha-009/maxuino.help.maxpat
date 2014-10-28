{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 40.0, 44.0, 1349.0, 780.0 ],
		"bgcolor" : [ 0.239216, 0.282353, 0.168627, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 40.0, 44.0, 1349.0, 780.0 ],
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
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 923.0, 703.0, 14.0, 14.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-66"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 905.0, 703.0, 14.0, 14.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "format: /pin#/stepperSpeed [0, 1000.] (in rpm)",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 999.901306, 526.841492, 224.0, 18.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-65",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "format: /pin#/stepperStep [-65536, 65536.]",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 999.901306, 513.841492, 208.0, 18.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-61",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "message: \"stepperStep\" & \"StepperSpeed\"",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 999.901306, 499.841492, 196.0, 18.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-63",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "info",
					"fontsize" : 14.0,
					"numinlets" : 1,
					"patching_rect" : [ 1200.901245, 662.205139, 36.0, 23.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-60",
					"fontname" : "Trebuchet MS Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "done!",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 948.901245, 701.227966, 36.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-59",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 887.0, 703.0, 14.0, 14.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-57"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 866.0, 703.0, 14.0, 14.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 845.0, 703.0, 14.0, 14.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-46"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 823.0, 703.0, 14.0, 14.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "OSC-route /0 /1 /2 /3 /4 /5",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 822.264893, 679.351379, 125.0, 18.0 ],
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"id" : "obj-42",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "OSC-route /stepper",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 822.264893, 656.351379, 126.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-40",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use pin mode 5 and 6 together for one stepper's steps and speed (rps)",
					"linecount" : 2,
					"fontsize" : 11.0,
					"numinlets" : 1,
					"patching_rect" : [ 999.901306, 469.08194, 230.0, 32.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.792157, 0.0, 0.0, 1.0 ],
					"frgb" : [ 0.792157, 0.0, 0.0, 1.0 ],
					"id" : "obj-32",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "speed (rev per minute)",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 1050.901245, 553.790771, 114.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-55",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 1001.901245, 553.790771, 49.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-56",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "# of steps",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 927.901245, 553.790771, 54.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-52",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 878.901245, 553.790771, 49.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-54",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 992.901245, 616.657715, 47.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-50",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf set /%d/stepperSpeed",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 973.901245, 589.657715, 142.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-51",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 858.901245, 616.657715, 47.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-48",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf set /%d/stepperStep",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 831.901306, 589.657715, 135.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-49",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 831.901306, 521.657715, 47.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-45",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "select stepper #",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 901.901306, 451.227966, 83.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-30",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 901.901306, 465.790741, 49.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-41",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "select pin #",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 831.901306, 451.227966, 62.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf set /%d/stepperNum",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 831.901306, 494.657715, 136.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 831.901306, 465.790741, 49.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-20",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stepper Output",
					"fontsize" : 14.0,
					"numinlets" : 1,
					"patching_rect" : [ 1132.901245, 447.205139, 111.0, 23.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-1",
					"fontname" : "Trebuchet MS Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "message: analog / digital",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"patching_rect" : [ 35.776001, 624.841492, 135.0, 19.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-249",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "format: /[analog | digital ]/pin# [0. - 1] ",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"patching_rect" : [ 35.776001, 648.841492, 229.0, 19.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-248",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.slider",
					"varname" : "live.slider[4]",
					"fontface" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 606.285706, 659.0, 40.0, 58.0 ],
					"parameter_enable" : 1,
					"numoutlets" : 2,
					"showname" : 0,
					"outlettype" : [ "", "float" ],
					"id" : "obj-247",
					"fontname" : "Trebuchet MS",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 1,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 0,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.slider[8]",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "live.slider[12]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : ""
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "format: /pin#/sevoConfig min max",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 1074.901245, 197.841492, 167.0, 18.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-245",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "message: \"servoConfig\"",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 1074.901245, 179.841492, 115.0, 18.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-246",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "form Arduino to Max:\nmaxuino outputs incoming data (e.g. analog and digital sensor readings) from the microcontroller using OSC",
					"linecount" : 3,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 296.304932, 53.804016, 355.0, 41.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-244",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Analog/Digital Input",
					"fontsize" : 14.0,
					"numinlets" : 1,
					"patching_rect" : [ 35.776001, 573.205139, 140.0, 23.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-242",
					"fontname" : "Trebuchet MS Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "msg's to the Serial object",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 540.264893, 455.838989, 73.0, 30.0 ],
					"numoutlets" : 0,
					"id" : "obj-221",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "arg1: serial port",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 625.264893, 493.838989, 83.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-220",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "msg's to maxuino",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 442.264893, 454.838989, 73.0, 30.0 ],
					"numoutlets" : 0,
					"id" : "obj-219",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC-messages",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 352.264893, 470.838989, 73.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-218",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p basic-info",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 56.530884, 69.638992, 64.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-217",
					"fontname" : "Trebuchet MS",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 21.0, 62.0, 753.0, 224.0 ],
						"bgcolor" : [ 0.239216, 0.282353, 0.168627, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 21.0, 62.0, 753.0, 224.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax launchbrowser http://cnmat.berkeley.edu/max",
									"linecount" : 2,
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 266.400024, 385.200012, 247.0, 28.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "cnmat.berkeley.edu/max",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 269.0, 84.0, 133.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.141176, 0.137255, 0.509804, 1.0 ],
									"frgb" : [ 0.141176, 0.137255, 0.509804, 1.0 ],
									"id" : "obj-2",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 266.0, 84.0, 133.0, 17.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"bgcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numinlets" : 1,
									"patching_rect" : [ 266.0, 83.0, 147.0, 20.0 ],
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"id" : "obj-4",
									"handoff" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3.  You must install the \"OSC-route\" object from CNMAT",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 83.999985, 446.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-1",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2006, released under GNU GPL Gerda Strobl, Georg Holzmann Ported to Max by Marius Schebella, updated for Firmata v2 by Chris Coleman",
									"linecount" : 5,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 507.0, 16.0, 168.0, 65.0 ],
									"numoutlets" : 0,
									"id" : "obj-97",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "by chris coleman",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 175.0, 86.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-133",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-Arduino 018 or earlier: user our included firmata\n-Arduino 019: included under examples -> Firmata -> Standard Firmata)",
									"linecount" : 2,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 56.0, 51.0, 332.0, 30.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-127",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : " & Ali Momeni",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 250.0, 175.0, 72.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-128",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "http://www.digitalcoleman.com",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 98.0, 175.0, 165.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.141176, 0.137255, 0.509804, 1.0 ],
									"frgb" : [ 0.141176, 0.137255, 0.509804, 1.0 ],
									"id" : "obj-129",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 99.0, 175.0, 152.0, 17.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"bgcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numinlets" : 1,
									"patching_rect" : [ 99.0, 174.0, 155.0, 20.0 ],
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"id" : "obj-20",
									"handoff" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "http://alimomeni.net",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 324.0, 175.0, 112.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.141176, 0.137255, 0.509804, 1.0 ],
									"frgb" : [ 0.141176, 0.137255, 0.509804, 1.0 ],
									"id" : "obj-12",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 321.0, 175.0, 109.0, 17.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"bgcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numinlets" : 1,
									"patching_rect" : [ 321.0, 174.0, 106.0, 20.0 ],
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"id" : "obj-130",
									"handoff" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "5. If you still have troubles, mail to chris.d.coleman@gmail.com/batchku@gmail.com or try someone from the readme, or the Arduino Forums.",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 128.999985, 719.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-82",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4. Upload the firmware onto your arduino with the Arduino programming software",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 107.999985, 446.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-83",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "firmata.org/wiki/Download",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 230.0, 151.0, 133.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.141176, 0.137255, 0.509804, 1.0 ],
									"frgb" : [ 0.141176, 0.137255, 0.509804, 1.0 ],
									"id" : "obj-84",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 227.0, 151.0, 133.0, 17.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"bgcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"id" : "obj-85"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numinlets" : 1,
									"patching_rect" : [ 227.0, 150.0, 147.0, 20.0 ],
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"id" : "obj-86",
									"handoff" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2. You need the firmata v.2.1 firmware",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 31.999992, 185.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-88",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1. General information on Arduino:",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 10.0, 190.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-89",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "www.arduino.cc",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 173.0, 10.0, 104.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.141176, 0.137255, 0.509804, 1.0 ],
									"frgb" : [ 0.141176, 0.137255, 0.509804, 1.0 ],
									"id" : "obj-90",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 172.0, 10.0, 84.0, 17.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"bgcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"id" : "obj-91"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numinlets" : 1,
									"patching_rect" : [ 172.0, 10.0, 84.0, 17.0 ],
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"id" : "obj-92",
									"handoff" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "(C) Copyright 2006 Free Software Foundation",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 151.0, 240.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-165",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax launchbrowser http://www.digitalcoleman.com/",
									"linecount" : 2,
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 99.400024, 338.200012, 252.0, 28.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-131",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax launchbrowser http://alimomeni.net",
									"linecount" : 2,
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 321.400024, 219.200012, 199.0, 28.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-212",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax launchbrowser http://www.maxuino.org",
									"linecount" : 2,
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 465.400024, 172.200012, 214.0, 28.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-213",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax launchbrowser http://firmata.org/wiki/Download",
									"linecount" : 2,
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 227.400024, 300.200012, 260.0, 28.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-214",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax launchbrowser http://www.arduino.cc",
									"linecount" : 2,
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 172.400024, 256.200012, 244.0, 28.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-215",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 465.400024, 13.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-216",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-215", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-214", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-216", 0 ],
									"destination" : [ "obj-213", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-131", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-130", 0 ],
									"destination" : [ "obj-212", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use the built-in GUI",
					"fontface" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 36.930908, 446.338989, 122.0, 20.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-206",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/1/servoConfig 1854 3177",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 1008.056885, 387.761841, 129.363632, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-204",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /1/servoConfig",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 1118.0, 356.48761, 118.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-197",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.dial",
					"varname" : "duty-max",
					"fontface" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 1184.0, 225.0, 44.0, 48.0 ],
					"parameter_enable" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"id" : "obj-198",
					"fontname" : "Trebuchet MS",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 0,
							"parameter_mmax" : 4500.0,
							"parameter_mmin" : 1500.0,
							"parameter_type" : 0,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "duty-max",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "duty-max[1]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : ""
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf set /%d/servoConfig",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 1021.535645, 307.657715, 134.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-200",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 1 1",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 1166.0, 307.0, 43.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-202",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.dial",
					"varname" : "duty-min",
					"fontface" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 1125.0, 225.0, 44.0, 48.0 ],
					"parameter_enable" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"id" : "obj-203",
					"fontname" : "Trebuchet MS",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 0,
							"parameter_mmax" : 4500.0,
							"parameter_mmin" : 1500.0,
							"parameter_type" : 0,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "duty-min",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "duty-min[1]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : ""
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "servo's generally expect a 50 Hz PWM signal; this PWM freq is produced in hardware by microcontroller.  Servos also expect duty cycles somewhere between %5 and %15 corresponding to the two extermes of their rotation.  different servos expect different ranges.",
					"text" : "what's all this?",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"patching_rect" : [ 1105.901245, 140.08194, 82.0, 19.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.792157, 0.0, 0.0, 1.0 ],
					"frgb" : [ 0.792157, 0.0, 0.0, 1.0 ],
					"id" : "obj-195",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Servo Configuration",
					"fontsize" : 14.0,
					"numinlets" : 1,
					"patching_rect" : [ 1097.901245, 121.205139, 140.0, 23.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-194",
					"fontname" : "Trebuchet MS Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/1/analogWrite 0.458677",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 863.056824, 387.761841, 129.363632, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-181",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 973.437012, 332.624695, 47.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-182",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use pin mode 4 to control a servo's position.",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"patching_rect" : [ 825.901306, 140.08194, 228.0, 19.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.792157, 0.0, 0.0, 1.0 ],
					"frgb" : [ 0.792157, 0.0, 0.0, 1.0 ],
					"id" : "obj-183",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "format: /pin#/analogWrite [0.-1.]",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 822.901306, 197.841492, 163.0, 18.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-184",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "message: \"analogWrite\"",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 822.901306, 179.841492, 115.0, 18.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-185",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Servo Output",
					"fontsize" : 14.0,
					"numinlets" : 1,
					"patching_rect" : [ 822.901306, 121.205139, 97.0, 23.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-186",
					"fontname" : "Trebuchet MS Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set position for servo on that pin",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 940.34613, 224.227966, 157.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-188",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.slider",
					"varname" : "live.slider[2]",
					"numinlets" : 1,
					"patching_rect" : [ 972.527893, 254.475311, 80.0, 31.0 ],
					"parameter_enable" : 1,
					"numoutlets" : 2,
					"showname" : 0,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"id" : "obj-189",
					"presentation_rect" : [ 986.527893, 469.475311, 50.0, 31.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 1,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 0,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.slider",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "live.slider[16]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : ""
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "select pin #",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 822.901306, 224.227966, 62.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-190",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /1/analogWrite",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 973.437012, 358.806519, 120.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-191",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf set /%d/analogWrite",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 822.901306, 307.657715, 135.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-192",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 822.901306, 251.790741, 49.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-193",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/1/analogWrite 0.458677",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 566.056824, 387.761841, 129.363632, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-168",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 676.437012, 332.624695, 47.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-167",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 418.784119, 330.806519, 50.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-141",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 160.372131, 330.806519, 50.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-80",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/gui",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 83.930908, 464.838989, 32.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-58",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "maxuino",
					"text" : "maxuino a maxuino-gui-pattr.json",
					"fontsize" : 14.0,
					"numinlets" : 3,
					"patching_rect" : [ 339.930908, 522.338989, 233.0, 23.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-53",
					"fontname" : "Trebuchet MS Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "arg2: name of pattr file\n(remembers hardware and pin mode settings)",
					"linecount" : 3,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 625.264893, 510.838989, 171.0, 41.0 ],
					"numoutlets" : 0,
					"id" : "obj-6",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend port",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 1135.930786, 54.338989, 63.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p devices",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 1069.930908, 26.338989, 49.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"fontname" : "Trebuchet MS",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 381.0, 284.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 381.0, 284.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t print",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 53.0, 93.0, 41.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "print" ],
									"id" : "obj-8",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route port",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 90.0, 139.0, 56.0, 18.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-1",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t clear",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 184.0, 164.0, 40.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "clear" ],
									"id" : "obj-2",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 90.0, 187.0, 111.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "serial",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 64.0, 115.0, 36.0, 18.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"id" : "obj-4",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "iter",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 90.0, 164.0, 25.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 64.0, 45.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 90.0, 212.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-7",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 1128.930786, 23.338989, 50.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-23",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "update",
					"fontsize" : 8.0,
					"numinlets" : 2,
					"patching_rect" : [ 992.930908, 27.338989, 37.0, 14.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 8.0,
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 993.930908, 52.338989, 135.0, 16.0 ],
					"items" : [ "usbserial-A4001Le9", ",", "Bluetooth-PDA-Sync", ",", "Bluetooth-Modem", ",", "SerialPort" ],
					"numoutlets" : 3,
					"arrow" : 0,
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-26",
					"fontname" : "Trebuchet MS",
					"pattrmode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "alternatively you can send a message \"port\" + portnumber (a, b, c)",
					"linecount" : 3,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 855.930908, 35.338989, 128.0, 38.0 ],
					"numoutlets" : 0,
					"id" : "obj-27",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Select Serial Port",
					"fontface" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 842.930908, 5.338989, 122.0, 20.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-28",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "www.maxuino.org",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 161.530884, 14.638996, 91.0, 18.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.141176, 0.137255, 0.509804, 1.0 ],
					"frgb" : [ 0.141176, 0.137255, 0.509804, 1.0 ],
					"id" : "obj-16",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"patching_rect" : [ 160.530884, 14.638996, 84.0, 17.0 ],
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"id" : "obj-18",
					"handoff" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Arduino/OSC Interface For Max/MSP",
					"fontsize" : 14.0,
					"numinlets" : 1,
					"patching_rect" : [ 43.530884, 36.638996, 246.0, 23.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-94",
					"fontname" : "Trebuchet MS Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "::::_MAXUINO_::::",
					"fontsize" : 14.0,
					"numinlets" : 1,
					"patching_rect" : [ 43.530884, 12.638996, 203.0, 23.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-95",
					"fontname" : "Trebuchet MS Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gswitch2",
					"numinlets" : 2,
					"patching_rect" : [ 998.264893, 660.838989, 39.0, 32.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print from-maxuino",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 1018.264893, 697.838989, 100.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-9",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p version",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 1124.264893, 671.838989, 53.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Trebuchet MS",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1037.0, 886.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 1037.0, 886.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OSC-route /version",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 51.0, 140.0, 96.0, 18.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-1",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 51.0, 191.0, 65.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-148",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf firmata_version_%s",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 51.0, 164.0, 131.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-150",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OSC-route /board",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 100.0, 90.0, 18.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-151",
									"fontname" : "Trebuchet MS"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 225.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-10",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-151", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-151", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-150", 0 ],
									"destination" : [ "obj-148", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-148", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-150", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "firmata_version_2.20",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 1124.264893, 696.838989, 110.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-149",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from MAX to Arduino:: \nUse [the magic of] OSC to communicate with the maxuino-hardware",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 296.304932, 12.804016, 406.0, 30.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-31",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 331.264893, 443.838989, 472.0, 111.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-22",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 817.264893, 3.838989, 427.0, 83.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-14",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 30.264893, 113.111725, 250.809174, 313.157043 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-33",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 30.264893, 570.838989, 659.0, 151.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-36",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/1/mode 3",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 112.22187, 393.267029, 67.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-38",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "before using a pin, you must set the mode for that pin; possible values are 0-4.",
					"linecount" : 2,
					"fontsize" : 11.0,
					"numinlets" : 1,
					"patching_rect" : [ 63.404144, 140.08194, 225.368134, 32.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.792157, 0.0, 0.0, 1.0 ],
					"frgb" : [ 0.792157, 0.0, 0.0, 1.0 ],
					"id" : "obj-37",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mode",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 176.836487, 224.227966, 34.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A in",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 176.836487, 281.318909, 30.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-29",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "servo",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 176.836487, 308.318909, 36.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-5",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pwm",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 176.836487, 295.318909, 34.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-15",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "D out",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 176.836487, 266.318909, 37.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-34",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "D in",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 176.836487, 254.318909, 32.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-35",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"offset" : 14,
					"patching_rect" : [ 160.372131, 251.790741, 18.0, 72.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"itemtype" : 0,
					"size" : 5,
					"value" : 3,
					"disabled" : [ 0, 0, 0, 0, 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /1/mode",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 160.038147, 358.806519, 91.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-112",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf set /%d/mode",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 41.776001, 291.657745, 109.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-111",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sel pin #",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 41.776001, 224.227966, 48.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-64",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 41.776001, 251.790741, 50.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-62",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 30.264893, 4.838989, 710.0, 97.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-87",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "format: /pin#/mode [0 - 4] ",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"patching_rect" : [ 41.776001, 197.841492, 177.0, 19.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-77",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "message: \"mode\"",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"patching_rect" : [ 41.776001, 179.841492, 101.0, 19.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-78",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Set Pin Mode",
					"fontsize" : 14.0,
					"numinlets" : 1,
					"patching_rect" : [ 41.776001, 121.205139, 121.0, 23.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-79",
					"fontname" : "Trebuchet MS Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/13/digitalWrite 0",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 323.965881, 387.761841, 114.27272, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-93",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use pin mode 1 allows you set output pins to HIGH or LOW",
					"linecount" : 2,
					"fontsize" : 11.0,
					"numinlets" : 1,
					"patching_rect" : [ 323.198822, 140.08194, 196.0, 32.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.792157, 0.0, 0.0, 1.0 ],
					"frgb" : [ 0.792157, 0.0, 0.0, 1.0 ],
					"id" : "obj-98",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for more information on OSC and pattern matching check out the helpfile for OSC-route",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 1095.44104, 1353.197632, 233.0, 27.0 ],
					"numoutlets" : 0,
					"id" : "obj-99",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "format: /pin#/digitalWrite [0  or 1]",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 300.198822, 197.841492, 169.0, 18.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-103",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "message: \"digitalWrite\"",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 300.198822, 179.841492, 114.0, 18.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-104",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Digital Output",
					"fontsize" : 14.0,
					"numinlets" : 1,
					"patching_rect" : [ 300.198822, 121.205139, 102.0, 23.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-105",
					"fontname" : "Trebuchet MS Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "turn that pin on/off",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 440.248413, 224.227966, 102.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-106",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 292.727692, 113.111725, 250.809174, 313.157043 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-140",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "select pin #",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 300.198822, 224.227966, 62.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-107",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /1/digitalWrite",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 418.784119, 358.806519, 119.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-114",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf set /%d/digitalWrite",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 300.198822, 297.657745, 134.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-115",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 418.784119, 251.790741, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-119"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 300.198822, 251.790741, 49.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-121",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use pin mode 3 to set the duty cycle of the pulse-width-modulation output",
					"linecount" : 2,
					"fontsize" : 11.0,
					"numinlets" : 1,
					"patching_rect" : [ 583.901306, 140.08194, 206.0, 32.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.792157, 0.0, 0.0, 1.0 ],
					"frgb" : [ 0.792157, 0.0, 0.0, 1.0 ],
					"id" : "obj-143",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "format: /pin#/analogWrite [0.-1.]",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 560.901306, 197.841492, 163.0, 18.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-144",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "message: \"analogWrite\"",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 560.901306, 179.841492, 115.0, 18.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-145",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "PWM Output",
					"fontsize" : 14.0,
					"numinlets" : 1,
					"patching_rect" : [ 560.901306, 121.205139, 121.0, 23.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-146",
					"fontname" : "Trebuchet MS Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 30.264893, 441.111755, 165.809174, 51.157043 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-205",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 554.545837, 113.111725, 250.809174, 313.157043 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-164",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set PWM duty cycle",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 672.34613, 224.227966, 97.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-21",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.slider",
					"varname" : "live.slider[3]",
					"fontface" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 675.527893, 254.475311, 81.0, 32.0 ],
					"parameter_enable" : 1,
					"numoutlets" : 2,
					"showname" : 0,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"id" : "obj-147",
					"fontname" : "Trebuchet MS",
					"presentation_rect" : [ 0.0, 0.0, 50.0, 32.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 1,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 0,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.slider",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "live.slider[3]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : ""
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "select pin #",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 560.901306, 224.227966, 62.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-154",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /1/analogWrite",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 676.437012, 358.806519, 120.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-113",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf set /%d/analogWrite",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 560.901306, 291.657745, 135.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-155",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 560.901306, 251.790741, 49.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-156",
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 817.264893, 113.111725, 429.809174, 313.157043 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-187",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 389.333344, 655.0, 19.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-229"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 366.333344, 655.0, 19.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-230"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 343.333344, 655.0, 19.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-231"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 319.264893, 655.351379, 19.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.slider",
					"varname" : "live.slider[1]",
					"fontface" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 569.285706, 659.0, 40.0, 58.0 ],
					"parameter_enable" : 1,
					"numoutlets" : 2,
					"showname" : 0,
					"outlettype" : [ "", "float" ],
					"id" : "obj-234",
					"fontname" : "Trebuchet MS",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 1,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 0,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.slider[8]",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "live.slider[11]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : ""
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 817.264893, 620.111755, 168.809204, 102.157043 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-39",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 989.264893, 654.111755, 256.809174, 68.157043 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-243",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 817.264893, 444.111725, 429.809204, 205.157043 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-2",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.slider",
					"varname" : "live.slider[8]",
					"fontface" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 532.285706, 659.0, 40.0, 58.0 ],
					"parameter_enable" : 1,
					"numoutlets" : 2,
					"showname" : 0,
					"outlettype" : [ "", "float" ],
					"id" : "obj-235",
					"fontname" : "Trebuchet MS",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 1,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 0,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.slider[8]",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "live.slider[10]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : ""
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.slider",
					"varname" : "live.slider[9]",
					"fontface" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 495.285706, 659.0, 40.0, 58.0 ],
					"parameter_enable" : 1,
					"numoutlets" : 2,
					"showname" : 0,
					"outlettype" : [ "", "float" ],
					"id" : "obj-236",
					"fontname" : "Trebuchet MS",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 1,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 0,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.slider[8]",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "live.slider[9]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : ""
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "...",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"patching_rect" : [ 433.264893, 626.351379, 20.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-13",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "...",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"patching_rect" : [ 662.264893, 626.351379, 20.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-12",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "OSC-route /0 /1 /2 /3",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 319.264893, 627.351379, 103.0, 18.0 ],
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"id" : "obj-237",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.slider",
					"varname" : "live.slider",
					"fontface" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 458.264893, 659.351379, 40.0, 58.0 ],
					"parameter_enable" : 1,
					"numoutlets" : 2,
					"showname" : 0,
					"outlettype" : [ "", "float" ],
					"id" : "obj-238",
					"fontname" : "Trebuchet MS",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 1,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 0,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.slider[8]",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "live.slider[8]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : ""
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "OSC-route /0 /1 /2 /3 /4",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 458.264893, 626.351379, 188.0, 18.0 ],
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"id" : "obj-239",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "OSC-route /digital /analog",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 319.264893, 577.351379, 126.0, 18.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-240",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use with pin mode 0 (digital in) or mode 3 (analog in)",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"patching_rect" : [ 35.776001, 596.351379, 274.0, 19.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.733333, 0.0, 0.0, 1.0 ],
					"frgb" : [ 0.733333, 0.0, 0.0, 1.0 ],
					"id" : "obj-241",
					"fontname" : "Trebuchet MS"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-42", 5 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 4 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 2 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 3 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-112", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [ 1079.430908, 46.338974, 1003.430908, 46.338974 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-53", 2 ],
					"hidden" : 0,
					"midpoints" : [ 1145.430786, 99.0, 810.0, 99.0, 810.0, 457.0, 615.0, 457.0, 615.0, 563.0, 563.430908, 563.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 93.430908, 499.0, 324.0, 499.0, 324.0, 496.0, 349.430908, 496.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1011.401245, 585.0, 1128.0, 585.0, 1128.0, 612.0, 1002.401245, 612.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 888.401245, 585.0, 971.0, 585.0, 971.0, 614.0, 868.401245, 614.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 349.430908, 564.0, 699.0, 564.0, 699.0, 652.0, 831.764893, 652.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-240", 0 ],
					"hidden" : 0,
					"midpoints" : [ 349.430908, 564.0, 328.764893, 564.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 349.430908, 555.0, 699.0, 555.0, 699.0, 645.0, 804.0, 645.0, 804.0, 645.0, 1133.764893, 645.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 349.430908, 555.0, 699.0, 555.0, 699.0, 645.0, 1027.764893, 645.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1002.401245, 636.0, 807.0, 636.0, 807.0, 495.0, 615.0, 495.0, 615.0, 495.0, 435.0, 495.0, 435.0, 507.0, 349.430908, 507.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 868.401245, 636.0, 807.0, 636.0, 807.0, 495.0, 615.0, 495.0, 615.0, 495.0, 435.0, 495.0, 435.0, 507.0, 349.430908, 507.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 841.401306, 548.657715, 595.416138, 548.657715, 595.416138, 512.338989, 349.430908, 512.338989 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 911.401306, 483.0, 972.0, 483.0, 972.0, 517.0, 841.401306, 517.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1061.430908, 74.338974, 1131.930908, 74.338974, 1131.930908, 49.338974, 1145.430786, 49.338974 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [ 1002.430908, 43.338974, 1035.930908, 43.338974, 1035.930908, 22.338974, 1079.430908, 22.338974 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-240", 1 ],
					"destination" : [ "obj-239", 0 ],
					"hidden" : 0,
					"midpoints" : [ 382.264893, 612.0, 467.764893, 612.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-240", 0 ],
					"destination" : [ "obj-237", 0 ],
					"hidden" : 0,
					"midpoints" : [ 328.764893, 597.0, 328.764893, 597.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-239", 4 ],
					"destination" : [ "obj-247", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-239", 0 ],
					"destination" : [ "obj-238", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-239", 1 ],
					"destination" : [ "obj-236", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-239", 2 ],
					"destination" : [ "obj-235", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-239", 3 ],
					"destination" : [ "obj-234", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-237", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-237", 1 ],
					"destination" : [ "obj-231", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-237", 2 ],
					"destination" : [ "obj-230", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-237", 3 ],
					"destination" : [ "obj-229", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 1138.430786, 43.338974, 1122.930908, 43.338974, 1122.930908, 13.338974, 1002.430908, 13.338974 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-203", 0 ],
					"destination" : [ "obj-202", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-202", 0 ],
					"destination" : [ "obj-197", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1175.5, 342.0, 1127.5, 342.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-200", 0 ],
					"destination" : [ "obj-197", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1031.035645, 343.0, 1127.5, 343.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 841.401306, 489.0, 983.401245, 489.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 841.401306, 489.0, 827.0, 489.0, 827.0, 576.0, 841.401306, 576.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-198", 0 ],
					"destination" : [ "obj-202", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-197", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1127.5, 384.0, 1185.0, 384.0, 1185.0, 437.0, 349.0, 437.0, 349.0, 501.0, 349.430908, 501.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-197", 0 ],
					"destination" : [ "obj-204", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-193", 0 ],
					"destination" : [ "obj-200", 0 ],
					"hidden" : 0,
					"midpoints" : [ 832.401306, 300.0, 1031.035645, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-193", 0 ],
					"destination" : [ "obj-192", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-192", 0 ],
					"destination" : [ "obj-191", 0 ],
					"hidden" : 0,
					"midpoints" : [ 832.401306, 354.636353, 982.937012, 354.636353 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-191", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 982.937012, 384.0, 999.0, 384.0, 999.0, 437.0, 349.0, 437.0, 349.0, 501.0, 349.430908, 501.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-191", 0 ],
					"destination" : [ "obj-181", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-189", 0 ],
					"destination" : [ "obj-182", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-182", 0 ],
					"destination" : [ "obj-191", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-217", 0 ],
					"hidden" : 1,
					"midpoints" : [ 170.030884, 33.0, 39.0, 33.0, 39.0, 66.0, 66.030884, 66.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-167", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-156", 0 ],
					"destination" : [ "obj-155", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-155", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [ 570.401306, 354.636353, 685.937012, 354.636353 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-147", 0 ],
					"destination" : [ "obj-167", 0 ],
					"hidden" : 0,
					"midpoints" : [ 685.027893, 288.0, 696.0, 288.0, 696.0, 324.0, 685.937012, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-141", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-121", 0 ],
					"destination" : [ "obj-115", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-119", 0 ],
					"destination" : [ "obj-141", 0 ],
					"hidden" : 0,
					"midpoints" : [ 428.284119, 288.0, 435.0, 288.0, 435.0, 327.0, 428.284119, 327.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-115", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 0,
					"midpoints" : [ 309.698822, 353.909088, 428.284119, 353.909088 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-114", 0 ],
					"destination" : [ "obj-93", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-114", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 428.284119, 384.0, 483.0, 384.0, 483.0, 437.0, 349.0, 437.0, 349.0, 501.0, 349.430908, 501.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 685.937012, 384.0, 738.0, 384.0, 738.0, 437.0, 349.0, 437.0, 349.0, 501.0, 349.430908, 501.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-168", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 169.538147, 387.0, 269.0, 387.0, 269.0, 437.0, 349.430908, 437.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-111", 0 ],
					"destination" : [ "obj-112", 0 ],
					"hidden" : 0,
					"midpoints" : [ 51.276001, 353.909088, 169.538147, 353.909088 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-149", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ],
		"parameters" : 		{
			"obj-53::obj-125::obj-49::obj-5" : [ "A_in[24]", "A_in", 0 ],
			"obj-53::obj-125::obj-655::obj-480" : [ "pwm[70]", "pwm", 0 ],
			"obj-53::obj-125::obj-648::obj-480" : [ "pwm[83]", "pwm", 0 ],
			"obj-53::obj-125::obj-757::obj-59" : [ "live.numbox[1]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-757::obj-11" : [ "live.toggle[288]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-692::obj-2" : [ "live.toggle[276]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-642::obj-59" : [ "live.numbox[102]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-696::obj-11" : [ "live.toggle[322]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-656::obj-11" : [ "live.toggle[299]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-759::obj-480" : [ "pwm[64]", "pwm", 0 ],
			"obj-53::obj-125::obj-768::obj-59" : [ "live.numbox[6]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-710::obj-480" : [ "pwm[54]", "pwm", 0 ],
			"obj-53::obj-125::obj-713::obj-59" : [ "live.numbox[14]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-714::obj-2" : [ "live.toggle[199]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-694::obj-58" : [ "live.numbox[36]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-644::obj-11" : [ "live.toggle[338]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-504::obj-59" : [ "live.numbox[106]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-710::obj-58" : [ "live.numbox[8]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-711::obj-59" : [ "live.numbox[10]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-715::obj-2" : [ "live.toggle[190]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-727::obj-2" : [ "live.toggle[214]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-645::obj-2" : [ "live.toggle[257]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-758::obj-480" : [ "pwm[103]", "pwm", 0 ],
			"obj-53::obj-125::obj-504::obj-58" : [ "live.numbox[107]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-672::obj-2" : [ "live.toggle[249]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-667::obj-2" : [ "live.toggle[255]", "live.toggle", 0 ],
			"obj-189" : [ "live.slider[16]", "live.slider", 0 ],
			"obj-53::obj-125::obj-707::obj-480" : [ "pwm[61]", "pwm", 0 ],
			"obj-53::obj-125::obj-675::obj-11" : [ "live.toggle[218]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-676::obj-480" : [ "pwm[77]", "pwm", 0 ],
			"obj-53::obj-125::obj-658::obj-59" : [ "live.numbox[84]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-643::obj-11" : [ "live.toggle[286]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-46::obj-5" : [ "A_in[31]", "A_in", 0 ],
			"obj-53::obj-125::obj-711::obj-2" : [ "live.toggle[290]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-711::obj-480" : [ "pwm[91]", "pwm", 0 ],
			"obj-53::obj-125::obj-716::obj-480" : [ "pwm[85]", "pwm", 0 ],
			"obj-53::obj-125::obj-670::obj-59" : [ "live.numbox[48]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-677::obj-58" : [ "live.numbox[62]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-653::obj-58" : [ "live.numbox[74]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-655::obj-58" : [ "live.numbox[79]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-643::obj-59" : [ "live.numbox[100]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-696::obj-480" : [ "pwm[92]", "pwm", 0 ],
			"obj-53::obj-125::obj-672::obj-58" : [ "live.numbox[52]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-687::obj-59" : [ "live.numbox[66]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-687::obj-480" : [ "pwm[87]", "pwm", 0 ],
			"obj-53::obj-125::obj-658::obj-11" : [ "live.toggle[254]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-649::obj-2" : [ "live.toggle[314]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-644::obj-59" : [ "live.numbox[98]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-715::obj-11" : [ "live.toggle[242]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-717::obj-58" : [ "live.numbox[22]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-727::obj-59" : [ "live.numbox[27]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-698::obj-11" : [ "live.toggle[350]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-673::obj-58" : [ "live.numbox[55]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-641::obj-11" : [ "live.toggle[269]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-713::obj-2" : [ "live.toggle[213]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-696::obj-59" : [ "live.numbox[41]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-674::obj-11" : [ "live.toggle[295]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-678::obj-58" : [ "live.numbox[65]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-653::obj-11" : [ "live.toggle[251]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-716::obj-58" : [ "live.numbox[20]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-673::obj-2" : [ "live.toggle[202]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-675::obj-58" : [ "live.numbox[59]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-658::obj-2" : [ "live.toggle[195]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-647::obj-480" : [ "pwm[89]", "pwm", 0 ],
			"obj-53::obj-125::obj-712::obj-11" : [ "live.toggle[304]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-718::obj-59" : [ "live.numbox[25]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-694::obj-480" : [ "pwm[60]", "pwm", 0 ],
			"obj-53::obj-125::obj-678::obj-59" : [ "live.numbox[64]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-645::obj-480" : [ "pwm[98]", "pwm", 0 ],
			"obj-53::obj-125::obj-714::obj-11" : [ "live.toggle[241]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-695::obj-11" : [ "live.toggle[277]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-653::obj-480" : [ "pwm[69]", "pwm", 0 ],
			"obj-53::obj-125::obj-658::obj-58" : [ "live.numbox[85]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-645::obj-59" : [ "live.numbox[96]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-644::obj-58" : [ "live.numbox[99]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-641::obj-59" : [ "live.numbox[104]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-697::obj-2" : [ "live.toggle[293]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-642::obj-11" : [ "live.toggle[317]", "live.toggle", 0 ],
			"obj-235" : [ "live.slider[10]", "live.slider[8]", 0 ],
			"obj-53::obj-125::obj-50::obj-2" : [ "live.toggle[330]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-758::obj-59" : [ "live.numbox[3]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-759::obj-58" : [ "live.numbox[5]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-715::obj-59" : [ "live.numbox[18]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-675::obj-480" : [ "pwm[67]", "pwm", 0 ],
			"obj-53::obj-125::obj-678::obj-11" : [ "live.toggle[250]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-57::obj-2" : [ "live.toggle[339]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-691::obj-11" : [ "live.toggle[246]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-707::obj-11" : [ "live.toggle[231]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-710::obj-2" : [ "live.toggle[223]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-672::obj-11" : [ "live.toggle[234]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-649::obj-480" : [ "pwm[97]", "pwm", 0 ],
			"obj-53::obj-125::obj-51::obj-2" : [ "live.toggle[189]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-651::obj-480" : [ "pwm[82]", "pwm", 0 ],
			"obj-53::obj-125::obj-648::obj-59" : [ "live.numbox[90]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-768::obj-11" : [ "live.toggle[345]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-715::obj-480" : [ "pwm[56]", "pwm", 0 ],
			"obj-53::obj-125::obj-717::obj-2" : [ "live.toggle[182]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-718::obj-58" : [ "live.numbox[24]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-693::obj-11" : [ "live.toggle[307]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-698::obj-59" : [ "live.numbox[45]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-707::obj-58" : [ "live.numbox[47]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-676::obj-59" : [ "live.numbox[60]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-654::obj-59" : [ "live.numbox[77]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-656::obj-480" : [ "pwm[88]", "pwm", 0 ],
			"obj-53::obj-125::obj-641::obj-480" : [ "pwm[57]", "pwm", 0 ],
			"obj-53::obj-125::obj-712::obj-480" : [ "pwm[84]", "pwm", 0 ],
			"obj-53::obj-125::obj-695::obj-480" : [ "pwm[73]", "pwm", 0 ],
			"obj-53::obj-125::obj-698::obj-2" : [ "live.toggle[294]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-672::obj-480" : [ "pwm[80]", "pwm", 0 ],
			"obj-53::obj-125::obj-667::obj-480" : [ "pwm[78]", "pwm", 0 ],
			"obj-53::obj-125::obj-648::obj-2" : [ "live.toggle[209]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-646::obj-59" : [ "live.numbox[95]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-642::obj-2" : [ "live.toggle[301]", "live.toggle", 0 ],
			"obj-147" : [ "live.slider[3]", "live.slider", 0 ],
			"obj-53::obj-125::obj-63::obj-2" : [ "live.toggle[178]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-690::obj-11" : [ "live.toggle[227]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-678::obj-2" : [ "live.toggle[187]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-716::obj-59" : [ "live.numbox[21]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-692::obj-11" : [ "live.toggle[333]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-504::obj-2" : [ "live.toggle[188]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-693::obj-59" : [ "live.numbox[35]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-674::obj-59" : [ "live.numbox[56]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-676::obj-11" : [ "live.toggle[280]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-647::obj-2" : [ "live.toggle[256]", "live.toggle", 0 ],
			"obj-203" : [ "duty-min[1]", "duty-min", 0 ],
			"obj-53::obj-125::obj-674::obj-480" : [ "pwm[86]", "pwm", 0 ],
			"obj-53::obj-125::obj-687::obj-58" : [ "live.numbox[67]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-658::obj-480" : [ "pwm[107]", "pwm", 0 ],
			"obj-53::obj-125::obj-641::obj-2" : [ "live.toggle[258]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-59::obj-5" : [ "A_in[30]", "A_in", 0 ],
			"obj-53::obj-125::obj-758::obj-58" : [ "live.numbox[2]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-712::obj-59" : [ "live.numbox[13]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-713::obj-11" : [ "live.toggle[198]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-692::obj-59" : [ "live.numbox[32]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-650::obj-59" : [ "live.numbox[68]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-717::obj-11" : [ "live.toggle[244]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-692::obj-58" : [ "live.numbox[33]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-504::obj-480" : [ "pwm[58]", "pwm", 0 ],
			"obj-53::obj-125::obj-694::obj-59" : [ "live.numbox[37]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-674::obj-2" : [ "live.toggle[279]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-651::obj-58" : [ "live.numbox[71]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-656::obj-59" : [ "live.numbox[80]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-657::obj-58" : [ "live.numbox[83]", "live.numbox", 0 ],
			"obj-238" : [ "live.slider[8]", "live.slider[8]", 0 ],
			"obj-53::obj-125::obj-63::obj-5" : [ "A_in[19]", "A_in", 0 ],
			"obj-53::obj-125::obj-54::obj-2" : [ "live.toggle[302]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-50::obj-5" : [ "A_in[16]", "A_in", 0 ],
			"obj-53::obj-125::obj-647::obj-11" : [ "live.toggle[300]", "live.toggle", 0 ],
			"obj-236" : [ "live.slider[9]", "live.slider[8]", 0 ],
			"obj-53::obj-125::obj-757::obj-2" : [ "live.toggle[320]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-655::obj-2" : [ "live.toggle[352]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-56::obj-2" : [ "live.toggle[319]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-694::obj-2" : [ "live.toggle[215]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-671::obj-2" : [ "live.toggle[248]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-712::obj-2" : [ "live.toggle[260]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-673::obj-11" : [ "live.toggle[278]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-646::obj-480" : [ "pwm[79]", "pwm", 0 ],
			"obj-53::obj-125::obj-49::obj-2" : [ "live.toggle[341]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-727::obj-480" : [ "pwm[74]", "pwm", 0 ],
			"obj-53::obj-125::obj-671::obj-59" : [ "live.numbox[51]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-677::obj-480" : [ "pwm[94]", "pwm", 0 ],
			"obj-53::obj-125::obj-645::obj-11" : [ "live.toggle[326]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-717::obj-59" : [ "live.numbox[23]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-717::obj-480" : [ "pwm[65]", "pwm", 0 ],
			"obj-53::obj-125::obj-671::obj-58" : [ "live.numbox[50]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-675::obj-59" : [ "live.numbox[58]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-675::obj-2" : [ "live.toggle[186]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-687::obj-2" : [ "live.toggle[324]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-643::obj-58" : [ "live.numbox[101]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-55::obj-5" : [ "A_in[26]", "A_in", 0 ],
			"obj-53::obj-125::obj-52::obj-2" : [ "live.toggle[329]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-674::obj-58" : [ "live.numbox[57]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-677::obj-2" : [ "live.toggle[281]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-652::obj-59" : [ "live.numbox[72]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-649::obj-59" : [ "live.numbox[89]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-47::obj-2" : [ "live.toggle[331]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-693::obj-2" : [ "live.toggle[228]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-696::obj-58" : [ "live.numbox[40]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-650::obj-2" : [ "live.toggle[219]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-45::obj-5" : [ "A_in[18]", "A_in", 0 ],
			"obj-53::obj-125::obj-692::obj-480" : [ "pwm[101]", "pwm", 0 ],
			"obj-53::obj-125::obj-650::obj-58" : [ "live.numbox[69]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-652::obj-2" : [ "live.toggle[194]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-646::obj-11" : [ "live.toggle[267]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-59::obj-2" : [ "live.toggle[211]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-716::obj-2" : [ "live.toggle[243]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-652::obj-480" : [ "pwm[102]", "pwm", 0 ],
			"obj-53::obj-125::obj-667::obj-11" : [ "live.toggle[325]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-53::obj-5" : [ "A_in[23]", "A_in", 0 ],
			"obj-53::obj-125::obj-768::obj-58" : [ "live.numbox[7]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-714::obj-59" : [ "live.numbox[16]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-690::obj-2" : [ "live.toggle[183]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-676::obj-58" : [ "live.numbox[61]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-641::obj-58" : [ "live.numbox[105]", "live.numbox", 0 ],
			"obj-234" : [ "live.slider[11]", "live.slider[8]", 0 ],
			"obj-53::obj-125::obj-714::obj-58" : [ "live.numbox[17]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-715::obj-58" : [ "live.numbox[19]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-718::obj-11" : [ "live.toggle[226]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-654::obj-11" : [ "live.toggle[351]", "live.toggle", 0 ],
			"obj-247" : [ "live.slider[12]", "live.slider[8]", 0 ],
			"obj-53::obj-125::obj-51::obj-5" : [ "A_in[27]", "A_in", 0 ],
			"obj-53::obj-125::obj-646::obj-2" : [ "live.toggle[210]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-758::obj-11" : [ "live.toggle[289]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-712::obj-58" : [ "live.numbox[12]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-690::obj-59" : [ "live.numbox[29]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-656::obj-2" : [ "live.toggle[253]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-657::obj-480" : [ "pwm[63]", "pwm", 0 ],
			"obj-53::obj-125::obj-52::obj-5" : [ "A_in[28]", "A_in", 0 ],
			"obj-53::obj-125::obj-707::obj-2" : [ "live.toggle[335]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-677::obj-11" : [ "live.toggle[309]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-58::obj-5" : [ "A_in[20]", "A_in", 0 ],
			"obj-53::obj-125::obj-716::obj-11" : [ "live.toggle[305]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-691::obj-480" : [ "pwm[75]", "pwm", 0 ],
			"obj-53::obj-125::obj-653::obj-2" : [ "live.toggle[206]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-647::obj-58" : [ "live.numbox[93]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-58::obj-2" : [ "live.toggle[318]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-54::obj-5" : [ "A_in[17]", "A_in", 0 ],
			"obj-53::obj-125::obj-48::obj-2" : [ "live.toggle[287]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-759::obj-11" : [ "live.toggle[343]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-768::obj-480" : [ "pwm[100]", "pwm", 0 ],
			"obj-53::obj-125::obj-643::obj-480" : [ "pwm[90]", "pwm", 0 ],
			"obj-53::obj-125::obj-718::obj-2" : [ "live.toggle[274]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-670::obj-58" : [ "live.numbox[49]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-676::obj-2" : [ "live.toggle[308]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-651::obj-2" : [ "live.toggle[204]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-653::obj-59" : [ "live.numbox[75]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-654::obj-58" : [ "live.numbox[76]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-667::obj-59" : [ "live.numbox[86]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-648::obj-58" : [ "live.numbox[91]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-645::obj-58" : [ "live.numbox[97]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-47::obj-5" : [ "A_in[29]", "A_in", 0 ],
			"obj-53::obj-125::obj-697::obj-11" : [ "live.toggle[349]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-656::obj-58" : [ "live.numbox[81]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-657::obj-2" : [ "live.toggle[265]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-45::obj-2" : [ "live.toggle[270]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-757::obj-480" : [ "pwm[59]", "pwm", 0 ],
			"obj-53::obj-125::obj-714::obj-480" : [ "pwm[55]", "pwm", 0 ],
			"obj-53::obj-125::obj-693::obj-58" : [ "live.numbox[34]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-693::obj-480" : [ "pwm[105]", "pwm", 0 ],
			"obj-53::obj-125::obj-650::obj-11" : [ "live.toggle[284]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-57::obj-5" : [ "A_in[25]", "A_in", 0 ],
			"obj-53::obj-125::obj-696::obj-2" : [ "live.toggle[334]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-698::obj-58" : [ "live.numbox[44]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-654::obj-2" : [ "live.toggle[298]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-642::obj-480" : [ "pwm[72]", "pwm", 0 ],
			"obj-53::obj-125::obj-55::obj-2" : [ "live.toggle[340]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-690::obj-480" : [ "pwm[66]", "pwm", 0 ],
			"obj-53::obj-125::obj-504::obj-11" : [ "live.toggle[259]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-677::obj-59" : [ "live.numbox[63]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-649::obj-11" : [ "live.toggle[315]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-46::obj-2" : [ "live.toggle[179]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-759::obj-59" : [ "live.numbox[4]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-691::obj-59" : [ "live.numbox[31]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-691::obj-2" : [ "live.toggle[347]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-642::obj-58" : [ "live.numbox[103]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-710::obj-59" : [ "live.numbox[9]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-695::obj-2" : [ "live.toggle[229]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-654::obj-480" : [ "pwm[96]", "pwm", 0 ],
			"obj-53::obj-125::obj-713::obj-480" : [ "pwm[104]", "pwm", 0 ],
			"obj-53::obj-125::obj-718::obj-480" : [ "pwm[71]", "pwm", 0 ],
			"obj-53::obj-125::obj-727::obj-58" : [ "live.numbox[26]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-690::obj-58" : [ "live.numbox[28]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-691::obj-58" : [ "live.numbox[30]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-671::obj-480" : [ "pwm[106]", "pwm", 0 ],
			"obj-53::obj-125::obj-650::obj-480" : [ "pwm[68]", "pwm", 0 ],
			"obj-53::obj-125::obj-644::obj-2" : [ "live.toggle[316]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-768::obj-2" : [ "live.toggle[344]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-711::obj-58" : [ "live.numbox[11]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-713::obj-58" : [ "live.numbox[15]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-648::obj-11" : [ "live.toggle[221]", "live.toggle", 0 ],
			"obj-198" : [ "duty-max[1]", "duty-max", 0 ],
			"obj-53::obj-125::obj-48::obj-5" : [ "A_in[22]", "A_in", 0 ],
			"obj-53::obj-125::obj-671::obj-11" : [ "live.toggle[262]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-657::obj-11" : [ "live.toggle[237]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-670::obj-2" : [ "live.toggle[193]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-651::obj-59" : [ "live.numbox[70]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-643::obj-2" : [ "live.toggle[268]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-53::obj-2" : [ "live.toggle[328]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-710::obj-11" : [ "live.toggle[224]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-711::obj-11" : [ "live.toggle[332]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-657::obj-59" : [ "live.numbox[82]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-667::obj-58" : [ "live.numbox[87]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-757::obj-58" : [ "live.numbox", "live.numbox", 0 ],
			"obj-53::obj-125::obj-727::obj-11" : [ "live.toggle[261]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-697::obj-59" : [ "live.numbox[42]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-707::obj-59" : [ "live.numbox[46]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-678::obj-480" : [ "pwm[81]", "pwm", 0 ],
			"obj-53::obj-125::obj-652::obj-11" : [ "live.toggle[205]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-655::obj-59" : [ "live.numbox[78]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-649::obj-58" : [ "live.numbox[88]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-646::obj-58" : [ "live.numbox[94]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-759::obj-2" : [ "live.toggle[342]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-697::obj-58" : [ "live.numbox[43]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-697::obj-480" : [ "pwm[93]", "pwm", 0 ],
			"obj-53::obj-125::obj-698::obj-480" : [ "pwm[95]", "pwm", 0 ],
			"obj-53::obj-125::obj-672::obj-59" : [ "live.numbox[53]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-673::obj-59" : [ "live.numbox[54]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-673::obj-480" : [ "pwm[76]", "pwm", 0 ],
			"obj-53::obj-125::obj-652::obj-58" : [ "live.numbox[73]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-647::obj-59" : [ "live.numbox[92]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-644::obj-480" : [ "pwm[99]", "pwm", 0 ],
			"obj-53::obj-125::obj-56::obj-5" : [ "A_in[21]", "A_in", 0 ],
			"obj-53::obj-125::obj-758::obj-2" : [ "live.toggle[239]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-670::obj-11" : [ "live.toggle[232]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-651::obj-11" : [ "live.toggle[263]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-694::obj-11" : [ "live.toggle[292]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-695::obj-59" : [ "live.numbox[39]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-695::obj-58" : [ "live.numbox[38]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-670::obj-480" : [ "pwm[62]", "pwm", 0 ],
			"obj-53::obj-125::obj-687::obj-11" : [ "live.toggle[282]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-655::obj-11" : [ "live.toggle[236]", "live.toggle", 0 ]
		}

	}

}
