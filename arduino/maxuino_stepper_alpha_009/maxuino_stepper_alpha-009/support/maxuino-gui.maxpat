{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 54.0, 1412.0, 173.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 54.0, 1412.0, 173.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1309.262573, 97.339111, 154.0, 20.0 ],
					"text" : "OSC-route /digital /analog"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1338.0, 194.0, 33.0, 16.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1272.0, 194.0, 50.0, 16.0 ],
					"text" : "board $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 432.0, 200.0, 1008.0, 469.0 ],
						"bglocked" : 0,
						"defrect" : [ 432.0, 200.0, 1008.0, 469.0 ],
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
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 296.0, 104.0, 20.0 ],
									"text" : "prepend pinMode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 103.0, 93.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-498",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 131.363647, 100.0, 39.0, 20.0 ],
													"text" : "zl rev"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-494",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 148.636353, 224.54541, 41.0, 20.0 ],
													"text" : "zl join"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-493",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "off", "float" ],
													"patching_rect" : [ 50.0, 186.363647, 44.0, 20.0 ],
													"text" : "t off 0."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-492",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 71.818176, 156.363647, 51.0, 20.0 ],
													"text" : "route 0."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-491",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "int" ],
													"patching_rect" : [ 131.363647, 128.181824, 73.0, 20.0 ],
													"text" : "unpack 1. 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 131.363647, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-3",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 148.636353, 304.54541, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-498", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-494", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-491", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-494", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-491", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-493", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-492", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-494", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-492", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-494", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-493", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-494", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-493", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-494", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-491", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-498", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 140.636383, 264.464172, 46.0, 20.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}
,
									"text" : "p pwm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 732.609985, 296.191406, 122.0, 18.0 ],
									"text" : "servoConfig $1 $2 $3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 113.727295, 142.926941, 90.0, 32.0 ],
									"text" : "setanalogIns 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 12.0,
									"id" : "obj-62",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 597.609985, 296.191406, 104.0, 18.0 ],
									"text" : "analogRead $1 $2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 12.0,
									"id" : "obj-773",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-615",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 161.818207, 41.0, 20.0 ],
													"text" : "zl join"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-614",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 130.000031, 39.0, 20.0 ],
													"text" : "zl rev"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-613",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 100.0, 57.0, 20.0 ],
													"text" : "zl slice 2"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-771",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-772",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 241.818207, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-614", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-613", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-615", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-613", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-615", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-614", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-772", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-615", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-613", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-771", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 50.000023, 100.0, 47.0, 20.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}
,
									"text" : "p fixer"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 12.0,
									"id" : "obj-629",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 459.818207, 296.191406, 106.0, 18.0 ],
									"text" : "digitalWrite $1 $2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 12.0,
									"id" : "obj-611",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 50.000023, 202.175903, 358.0, 20.0 ],
									"text" : "route pinMode analogWrite digitalWrite setanalogIns servoConfig"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-38",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 50.000023, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-43",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 164.016144, 421.191406, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-500",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 163.636383, 312.373169, 108.0, 18.0 ],
									"text" : "analogWrite $2 $1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-773", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-500", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-500", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-611", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-611", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 923.0, 289.0, 923.0, 333.0 ],
									"source" : [ "obj-611", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-611", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-629", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-611", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-611", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-629", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-773", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-611", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-773", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 47.272705, 634.073059, 80.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}
,
					"text" : "p to-maxuino"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1223.0, 194.0, 43.0, 16.0 ],
					"text" : "version"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1173.0, 194.0, 32.5, 16.0 ],
					"text" : "front"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1173.0, 227.0, 69.0, 20.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"patching_rect" : [ 1173.45459, 155.649124, 294.0, 20.0 ],
					"text" : "OSC-route /gui /version /board /reset /pattrstorage"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-29",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1262.636353, 779.446228, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-17",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1874.0, 181.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1874.0, 152.0, 89.0, 17.0 ],
					"text" : "prepend set port"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "print" ],
									"patching_rect" : [ 53.0, 93.0, 41.0, 20.0 ],
									"text" : "t print"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 90.0, 139.0, 56.0, 18.0 ],
									"text" : "route port"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "clear" ],
									"patching_rect" : [ 184.0, 164.0, 40.0, 18.0 ],
									"text" : "t clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 187.0, 111.0, 18.0 ],
									"text" : "prepend append"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 64.0, 115.0, 36.0, 18.0 ],
									"text" : "serial"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 164.0, 25.0, 18.0 ],
									"text" : "iter"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 64.0, 45.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 90.0, 212.0, 15.0, 15.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1808.0, 124.0, 49.0, 17.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}
,
					"text" : "p devices"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1867.0, 121.0, 50.0, 17.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 9.0,
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1736.0, 183.0, 124.0, 15.0 ],
					"text" : "port usbmodem12341"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 8.0,
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1731.0, 125.0, 37.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 29.0, 36.0, 14.0 ],
					"text" : "update"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"fontname" : "Trebuchet MS",
					"fontsize" : 8.0,
					"id" : "obj-26",
					"items" : [ "Bluetooth-PDA-Sync", ",", "Bluetooth-Modem" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 1732.0, 150.0, 135.0, 16.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 45.0, 28.0, 72.0, 16.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 9.0,
					"id" : "obj-27",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1594.0, 164.0, 128.0, 38.0 ],
					"text" : "alternatively you can send a message \"port\" + portnumber (a, b, c)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1593.0, 120.0, 122.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 3.0, 122.0, 20.0 ],
					"text" : "Select Serial Port",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 24.0,
					"frgb" : [ 0.32549, 0.34902, 0.258824, 1.0 ],
					"id" : "obj-126",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 44.471073, 247.057846, 27.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 363.818176, 18.214874, 27.0, 34.0 ],
					"text" : "0",
					"textcolor" : [ 0.32549, 0.34902, 0.258824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 9.0,
					"id" : "obj-3",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 710.132202, 11.586792, 269.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 543.132202, 5.586792, 804.0, 17.0 ],
					"text" : "Note: On hardware where pins can either be digital outputs or analog inputs (e.g. Teensy family), set the pin to \"A in\" mode here, and see incoming values in the left panel marked \"Analog Pins\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"hint" : "Opens hardware text file; you can add your hardware to the collection (follow given formatting), and save the collection (a text file on disk).  ",
					"id" : "obj-153",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 552.0, 8.0, 53.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 205.0, 28.0, 16.0, 16.0 ],
					"text" : "?"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-154",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "open" ],
					"patching_rect" : [ 552.0, 32.073059, 39.0, 18.0 ],
					"text" : "t open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-151",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 487.0, 8.0, 47.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 223.0, 28.0, 16.0, 16.0 ],
					"text" : "!"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "open" ],
					"patching_rect" : [ 487.0, 35.073059, 39.0, 18.0 ],
					"text" : "t open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 487.0, 56.073059, 48.0, 18.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 9.0,
					"id" : "obj-136",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1020.0, 635.0, 31.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 268.0, 7.0, 31.0, 17.0 ],
					"text" : "store"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 9.0,
					"id" : "obj-135",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 973.0, 635.0, 33.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 242.0, 7.0, 33.0, 17.0 ],
					"text" : "recall"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 8.0,
					"hint" : "send message to pattrstorage object for pin-mode storage (use this to write/read prest files)",
					"id" : "obj-134",
					"items" : [ "select...", ",", "read", ",", "write", ",", "clientwindow", ",", "storagewindow", ",", "clear" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 1068.0, 655.0, 100.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 287.0, 28.0, 70.0, 16.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 8.0,
					"hint" : "recall a pin-mode preset",
					"id" : "obj-133",
					"maxclass" : "number",
					"mouseup" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 962.0, 655.0, 46.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 238.0, 28.0, 27.0, 16.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 8.0,
					"hint" : "store a pin-mode preset",
					"id" : "obj-132",
					"maxclass" : "number",
					"mouseup" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 1019.0, 655.0, 46.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 263.0, 28.0, 27.0, 16.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-123",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1019.0, 683.0, 47.0, 16.0 ],
					"text" : "store $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 9.0,
					"id" : "obj-119",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1075.0, 635.0, 49.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 303.0, 7.0, 49.0, 17.0 ],
					"text" : "command"
				}

			}
, 			{
				"box" : 				{
					"autorestore" : "maxuino-gui-pattr.json",
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 962.0, 739.0, 189.0, 18.0 ],
					"saved_object_attributes" : 					{
						"storage_rect" : [ 25, 69, 665, 309 ],
						"client_rect" : [ 25, 69, 665, 309 ],
						"paraminitmode" : 0,
						"parameter_enable" : 0
					}
,
					"text" : "pattrstorage #1",
					"varname" : "#1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 456.0, 104.0, 772.0, 577.0 ],
						"bglocked" : 0,
						"defrect" : [ 456.0, 104.0, 772.0, 577.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
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
									"comment" : "",
									"id" : "obj-5",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 355.0, 20.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 112.0, -7.0, 72.0, 20.0 ],
									"text" : "loadmess 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 412.0, 80.0, 82.0, 20.0 ],
									"text" : "prepend read"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"id" : "obj-2",
									"items" : [ "ArduinoDiecimila.jpeg", ",", "ArduinoMega.jpeg", ",", "Teensy.png", ",", "Teensy++.png" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 355.0, 49.0, 132.0, 18.0 ],
									"types" : [  ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 182.0, 31.0, 32.0, 18.0 ],
									"text" : "read"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 86.0, -3.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-35",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 86.0, 18.0, 58.0, 18.0 ],
									"text" : "autofit $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 32.0, 131.0, 960.0, 604.0 ],
									"pic" : "ArduinoDiecimila.jpeg",
									"presentation" : 1,
									"presentation_rect" : [ 23.0, 23.0, 960.0, 604.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 95.5, 45.0, 41.5, 45.0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 426.0, 82.0, 117.0, 18.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}
,
					"text" : "p diagrams of hardware"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 552.0, 56.069092, 131.0, 18.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0
					}
,
					"text" : "coll maxuino-hardware.txt"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-2",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1190.927979, 34.107437, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS Bold",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-87",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 73.553711, 15.793394, 160.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.578522, 2.570251, 160.0, 20.0 ],
					"text" : "Select Hardware",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS Bold",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-86",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 744.628052, 662.809875, 82.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 275.504028, 52.438019, 82.0, 20.0 ],
					"text" : "Analong Pins",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS Bold",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-85",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 304.132202, 113.223137, 166.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 362.752075, 2.570251, 166.0, 20.0 ],
					"text" : "Digital Pins (output/input)",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-66",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 707.809875, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 306.13208, 64.586792, 18.0, 20.0 ],
					"text" : "5",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-67",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 688.809937, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 287.132202, 64.586792, 18.0, 20.0 ],
					"text" : "4",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-68",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 669.809937, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 268.132202, 64.586792, 18.0, 20.0 ],
					"text" : "3",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-69",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 650.809937, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 249.132324, 64.586792, 18.0, 20.0 ],
					"text" : "2",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-70",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 631.809937, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.132324, 64.586792, 18.0, 20.0 ],
					"text" : "1",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.310674, 0.248493, 1.0 ],
					"id" : "obj-71",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 612.809937, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.132324, 64.586792, 18.0, 20.0 ],
					"text" : "0",
					"textcolor" : [ 1.0, 0.310674, 0.248493, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-72",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 592.809875, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 191.132202, 64.586792, 18.0, 20.0 ],
					"text" : "9",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 573.809875, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 172.132202, 64.586792, 18.0, 20.0 ],
					"text" : "8",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-74",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 554.809875, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 153.132202, 64.586792, 18.0, 20.0 ],
					"text" : "7",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-75",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 535.809875, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 134.132202, 64.586792, 18.0, 20.0 ],
					"text" : "6",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-76",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 516.809937, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 115.132324, 64.586792, 18.0, 20.0 ],
					"text" : "5",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-77",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 497.809875, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 96.132202, 64.586792, 18.0, 20.0 ],
					"text" : "4",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 478.809906, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 77.132202, 64.586792, 18.0, 20.0 ],
					"text" : "3",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-79",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 459.809906, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 58.132202, 64.586792, 18.0, 20.0 ],
					"text" : "2",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 24.0,
					"frgb" : [ 0.32549, 0.34902, 0.258824, 1.0 ],
					"id" : "obj-80",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 606.867798, 586.834656, 36.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 194.190186, 45.768585, 36.0, 34.0 ],
					"text" : "10",
					"textcolor" : [ 0.32549, 0.34902, 0.258824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 24.0,
					"frgb" : [ 0.32549, 0.34902, 0.258824, 1.0 ],
					"id" : "obj-81",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 419.330566, 588.487549, 27.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 11.652954, 47.421509, 27.0, 34.0 ],
					"text" : "0",
					"textcolor" : [ 0.32549, 0.34902, 0.258824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"id" : "obj-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 440.809906, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 39.132202, 64.586792, 18.0, 20.0 ],
					"text" : "1",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.310674, 0.248493, 1.0 ],
					"id" : "obj-83",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 421.809906, 622.652832, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.132202, 64.586792, 18.0, 20.0 ],
					"text" : "0",
					"textcolor" : [ 1.0, 0.310674, 0.248493, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1191.262573, 64.339111, 195.0, 20.0 ],
					"text" : "OSC-route /analog /digital /board"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-63",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 702.840271, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 297.162476, 79.041382, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[15]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 15,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 410.554047, 790.199341, 208.0, 20.0 ],
					"text" : "funnel 15"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-59",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 683.840271, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 278.162476, 79.041382, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[14]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-58",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 664.840271, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 259.162598, 79.041382, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[13]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-57",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 645.840271, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 240.162598, 79.041382, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[12]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-56",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 626.840271, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 221.162598, 79.041382, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[11]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-55",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 607.840271, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 202.162598, 79.041382, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[10]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-54",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 588.840271, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 183.162598, 79.041382, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[9]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-53",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 569.840271, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 164.162598, 79.041382, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[8]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-52",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 550.840271, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.162598, 79.041382, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[7]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-51",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 531.840271, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 126.162598, 79.041382, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[6]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-50",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 512.840271, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 107.162598, 79.041382, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[5]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-49",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 493.84021, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 88.162598, 79.041382, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[4]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-48",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 474.84021, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 69.162598, 79.041382, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[3]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-47",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 455.84021, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 50.162598, 79.041382, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[2]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-46",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 436.84021, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.162598, 79.041382, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[1]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-45",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Apin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -10.175101, -3.969115 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 417.350098, 645.534546, 30.195515, 128.676498 ],
					"presentation" : 1,
					"presentation_rect" : [ 11.672485, 79.468506, 30.195515, 88.676498 ],
					"varname" : "maxuino-Apin-[0]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 17,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 417.781799, 557.175964, 362.0, 20.0 ],
					"text" : "OSC-route /0 /1 /2 /3 /4 /5 /6 /7 /8 /9 /10 /11 /12 /13 /14 /15"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
									"comment" : "",
									"id" : "obj-2",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 229.0, 181.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 234.0, 91.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 45.94817, 117.271538, 60.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}
,
					"text" : "p nothing"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 153.0, 44.0, 1231.0, 775.0 ],
						"bglocked" : 0,
						"defrect" : [ 153.0, 44.0, 1231.0, 775.0 ],
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
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 443.017151, 464.625671, 55.0, 20.0 ],
									"text" : "prepend"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 403.017151, 419.356079, 123.0, 20.0 ],
									"text" : "sprintf set /%d /mode"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "clear" ],
									"patching_rect" : [ 202.0, 525.0, 49.0, 20.0 ],
									"text" : "t l clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 516.0, 726.0, 98.0, 20.0 ],
									"text" : "prepend append"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 367.0, 748.0, 71.0, 20.0 ],
									"text" : "sprintf (%s)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 207.0, 640.0, 32.5, 20.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 295.0, 618.0, 32.5, 20.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 362.0, 725.0, 44.0, 20.0 ],
									"text" : "gate 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 233.0, 583.0, 69.0, 20.0 ],
									"text" : "unpack 1 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 213.0, 555.0, 58.0, 20.0 ],
									"text" : "listfunnel"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 207.0, 703.0, 43.0, 20.0 ],
									"text" : "zl mth"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-37",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 207.0, 674.0, 207.0, 18.0 ],
									"text" : "in out inA pwm serv stepStep dirStep"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 581.0, 405.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-35",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 578.114136, 541.632385, 32.5, 18.0 ],
									"text" : "/* 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 466.0, 61.0, 18.0 ],
									"text" : "/*/pwm 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-22",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1034.0, 246.0, 37.0, 18.0 ],
									"text" : "reset"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1033.017212, 621.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 172.0, 420.0, 32.5, 20.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 78.0, 372.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 86.017151, 465.356079, 118.0, 20.0 ],
									"text" : "sprintf /%d /mode -1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 758.493164, 492.742798, 32.5, 20.0 ],
									"text" : "&&"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 740.493164, 462.742798, 69.0, 20.0 ],
									"text" : "unpack 1 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 707.114136, 541.632385, 32.5, 18.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 707.493164, 512.449158, 24.0, 20.0 ],
									"text" : "t b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 707.493164, 431.742798, 52.0, 20.0 ],
									"text" : "route -1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 818.017151, 313.356079, 180.0, 20.0 ],
									"text" : "sprintf set /%d /analogIns active"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 818.017151, 575.625671, 55.0, 20.0 ],
									"text" : "prepend"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 637.329102, 266.166016, 40.0, 20.0 ],
									"text" : "zl reg"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 706.872314, 391.592102, 40.0, 20.0 ],
									"text" : "zl reg"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "int", "int", "int" ],
									"patching_rect" : [ 732.950989, 250.022095, 59.5, 20.0 ],
									"text" : "t b i -1 i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 732.950989, 210.283142, 32.5, 20.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 706.872314, 181.720734, 46.0, 20.0 ],
									"text" : "uzi 16"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 639.191895, 295.970215, 94.0, 20.0 ],
									"text" : "sprintf %s_%da"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 585.358032, 335.069092, 147.0, 20.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}
,
									"text" : "coll maxuino-hardware.txt"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-14",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 818.017151, 621.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 271.114136, 494.632385, 57.0, 18.0 ],
									"text" : "0 0 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 270.493164, 454.449158, 24.0, 20.0 ],
									"text" : "t b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 270.493164, 409.742798, 52.0, 20.0 ],
									"text" : "route -1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 361.017151, 391.356079, 188.0, 20.0 ],
									"text" : "sprintf set /%d /modeOld enabled"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 381.017151, 465.625671, 55.0, 20.0 ],
									"text" : "prepend"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 200.329102, 250.166016, 40.0, 20.0 ],
									"text" : "zl reg"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 121.701477, 78.668884, 33.0, 20.0 ],
									"text" : "t b s"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 269.872314, 375.592102, 40.0, 20.0 ],
									"text" : "zl reg"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "bang", "int", "int", "int", "int" ],
									"patching_rect" : [ 295.950989, 234.022095, 73.0, 20.0 ],
									"text" : "t b i -1 i i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 295.950989, 194.283142, 32.5, 20.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 269.872314, 165.720734, 46.0, 20.0 ],
									"text" : "uzi 54"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 202.191895, 279.970215, 87.0, 20.0 ],
									"text" : "sprintf %s_%d"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 148.358002, 319.069092, 147.0, 20.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}
,
									"text" : "coll maxuino-hardware.txt"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-38",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 121.701477, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-39",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 381.017151, 563.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 525.0, 313.0, 525.0, 381.0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 548.537354, 325.153503, 548.537354, 365.513367 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-10", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 84.0, 287.0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-25", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 111.537384, 309.153503, 111.537384, 349.513367 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [ 382.0, 318.0 ],
									"source" : [ "obj-27", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 249.381897, 218.499023 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 1 ],
									"hidden" : 0,
									"midpoints" : [ 248.0, 736.0, 360.0, 686.0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-43", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-44", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-46", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-51", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-8", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 686.381897, 234.499023 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 119.542274, 78.360809, 113.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}
,
					"text" : "p set-mode-options"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"fontname" : "Trebuchet MS",
					"fontsize" : 8.0,
					"hint" : "resets serial bus and sets possible modes for each pin according to the hardware file",
					"id" : "obj-22",
					"items" : [ "ArduinoDuemilanove", ",", "ArduinoMega", ",", "Teensy", ",", "Teensy++" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 79.857033, 43.381863, 100.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 124.848755, 28.0, 80.0, 16.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-1",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.928024, 67.107437, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-775",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 23,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 643.454529, 155.649124, 518.0, 34.0 ],
					"text" : "OSC-route /32 /33 /34 /35 /36 /37 /38 /39 /40 /41 /42 /43 /44 /45 /46 /47 /48 /49 /50 /51 /52 /53"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-774",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 33,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 46.363628, 155.649124, 590.0, 34.0 ],
					"text" : "OSC-route /0 /1 /2 /3 /4 /5 /6 /7 /8 /9 /10 /11 /12 /13 /14 /15 /16 /17 /18 /19 /20 /21 /22 /23 /24 /25 /26 /27 /28 /29 /30 /31"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-757",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1054.0, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1380.214844, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[53]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-758",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1035.0, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1361.214844, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[52]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-759",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1016.0, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1342.214844, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[51]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-766",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1056.421387, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1384.63623, 36.214874, 18.0, 20.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-767",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1037.421387, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1365.63623, 36.214874, 18.0, 20.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-768",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 996.454529, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1323.669434, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[50]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-769",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1018.421448, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1346.63623, 36.214874, 18.0, 20.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.310674, 0.248493, 1.0 ],
					"id" : "obj-770",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 999.421448, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1328.636353, 36.214874, 18.0, 20.0 ],
					"text" : "0",
					"textcolor" : [ 1.0, 0.310674, 0.248493, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-710",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 977.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1304.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[49]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-711",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 958.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1285.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[48]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-712",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 939.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1266.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[47]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-713",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 920.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1247.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[46]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-714",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 901.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1228.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[45]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-715",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 882.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1209.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[44]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-716",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 863.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1190.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[43]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-717",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 844.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1171.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[42]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-718",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 825.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1152.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[41]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-719",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 979.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1306.818115, 36.214874, 18.0, 20.0 ],
					"text" : "9"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-720",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 960.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1287.818115, 36.214874, 18.0, 20.0 ],
					"text" : "8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-721",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 941.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1268.818115, 36.214874, 18.0, 20.0 ],
					"text" : "7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-722",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 922.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1249.818115, 36.214874, 18.0, 20.0 ],
					"text" : "6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-723",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 903.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1230.818115, 36.214874, 18.0, 20.0 ],
					"text" : "5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-724",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 884.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1211.818115, 36.214874, 18.0, 20.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-725",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 865.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1192.818115, 36.214874, 18.0, 20.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-726",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 846.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1173.818115, 36.214874, 18.0, 20.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-727",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 805.636353, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1132.851196, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[40]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-728",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 827.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1154.818115, 36.214874, 18.0, 20.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.310674, 0.248493, 1.0 ],
					"id" : "obj-729",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 808.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1135.818115, 36.214874, 18.0, 20.0 ],
					"text" : "0",
					"textcolor" : [ 1.0, 0.310674, 0.248493, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-690",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 787.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1114.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[39]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-691",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 768.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1095.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[38]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-692",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 749.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1076.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[37]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-693",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 730.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1057.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[36]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-694",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 711.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1038.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[35]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-695",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 692.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1019.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[34]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-696",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 673.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[33]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-697",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 654.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 981.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[32]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-698",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 635.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 962.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[31]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-699",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 789.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1116.818115, 36.214874, 18.0, 20.0 ],
					"text" : "9"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-700",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 770.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1097.818115, 36.214874, 18.0, 20.0 ],
					"text" : "8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-701",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 751.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1078.818115, 36.214874, 18.0, 20.0 ],
					"text" : "7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-702",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 732.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1059.818115, 36.214874, 18.0, 20.0 ],
					"text" : "6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-703",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 713.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1040.818115, 36.214874, 18.0, 20.0 ],
					"text" : "5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-704",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 694.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1021.818237, 36.214874, 18.0, 20.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-705",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 675.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1002.818237, 36.214874, 18.0, 20.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-706",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 656.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 983.818115, 36.214874, 18.0, 20.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-707",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 615.636353, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 942.851196, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[30]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-708",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 637.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 964.818115, 36.214874, 18.0, 20.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.310674, 0.248493, 1.0 ],
					"id" : "obj-709",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 618.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 945.818115, 36.214874, 18.0, 20.0 ],
					"text" : "0",
					"textcolor" : [ 1.0, 0.310674, 0.248493, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-670",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 597.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 924.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[29]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-671",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 578.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 905.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[28]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-672",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 559.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 886.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[27]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-673",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 867.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[26]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-674",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 521.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 848.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[25]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-675",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 502.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 829.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[24]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-676",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 483.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 810.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[23]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-677",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 464.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 791.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[22]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-678",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 445.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 772.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[21]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-679",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 599.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 926.818115, 36.214874, 18.0, 20.0 ],
					"text" : "9"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-680",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 580.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 907.818115, 36.214874, 18.0, 20.0 ],
					"text" : "8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-681",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 561.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 888.818115, 36.214874, 18.0, 20.0 ],
					"text" : "7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-682",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 542.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 869.818115, 36.214874, 18.0, 20.0 ],
					"text" : "6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-683",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 523.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 850.818115, 36.214874, 18.0, 20.0 ],
					"text" : "5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-684",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 504.603302, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 831.818115, 36.214874, 18.0, 20.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-685",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 485.603302, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 812.818176, 36.214874, 18.0, 20.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-686",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 466.603302, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 793.818176, 36.214874, 18.0, 20.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-687",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 425.636353, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 752.851257, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[20]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-688",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 447.603302, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 774.818176, 36.214874, 18.0, 20.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.310674, 0.248493, 1.0 ],
					"id" : "obj-689",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 428.603302, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 755.818176, 36.214874, 18.0, 20.0 ],
					"text" : "0",
					"textcolor" : [ 1.0, 0.310674, 0.248493, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-650",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 406.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 734.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[19]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-651",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 387.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 715.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[18]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-652",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 368.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 696.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[17]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-653",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 349.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 677.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[16]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-654",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 658.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[15]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-655",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 311.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 639.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[14]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-656",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 292.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 620.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[13]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-657",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 273.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 601.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[12]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-658",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 254.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 582.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[11]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-659",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 408.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 736.818176, 36.214874, 18.0, 20.0 ],
					"text" : "9"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-660",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 389.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 717.818176, 36.214874, 18.0, 20.0 ],
					"text" : "8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-661",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 370.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 698.818176, 36.214874, 18.0, 20.0 ],
					"text" : "7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-662",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 351.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 679.818176, 36.214874, 18.0, 20.0 ],
					"text" : "6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-663",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 332.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 660.818176, 36.214874, 18.0, 20.0 ],
					"text" : "5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-664",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 313.603302, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 641.818176, 36.214874, 18.0, 20.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-665",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 294.603302, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 622.818176, 36.214874, 18.0, 20.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-666",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 275.603302, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 603.818176, 36.214874, 18.0, 20.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-667",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 234.636368, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 562.851257, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[10]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-668",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 256.603302, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.818176, 36.214874, 18.0, 20.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.310674, 0.248493, 1.0 ],
					"id" : "obj-669",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 237.603302, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 565.818176, 36.214874, 18.0, 20.0 ],
					"text" : "0",
					"textcolor" : [ 1.0, 0.310674, 0.248493, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-649",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 215.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 544.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[9]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-648",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 196.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 525.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[8]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-647",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 177.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 506.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[7]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-646",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 158.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 487.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[6]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-645",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 139.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 468.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[5]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-644",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 449.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[4]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-643",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 101.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 430.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[3]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-642",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 82.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 411.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[2]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-641",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 63.181824, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 392.396729, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-521",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 217.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 547.818176, 36.214874, 18.0, 20.0 ],
					"text" : "9"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-519",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 198.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 528.818176, 36.214874, 18.0, 20.0 ],
					"text" : "8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-517",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 179.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 509.818176, 36.214874, 18.0, 20.0 ],
					"text" : "7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-515",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 160.603271, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 490.818176, 36.214874, 18.0, 20.0 ],
					"text" : "6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-513",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 141.603287, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 471.818176, 36.214874, 18.0, 20.0 ],
					"text" : "5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-511",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 122.603294, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 452.818176, 36.214874, 18.0, 20.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-509",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 103.603302, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 433.818176, 36.214874, 18.0, 20.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-507",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 84.603302, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 414.818176, 36.214874, 18.0, 20.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-504",
					"maxclass" : "bpatcher",
					"name" : "maxuino-Dpin-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -28.181818, -2.727273 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 43.636372, 298.289276, 28.09091, 115.363632 ],
					"presentation" : 1,
					"presentation_rect" : [ 372.851257, 55.628082, 21.09091, 115.363632 ],
					"varname" : "maxuino-Dpin-[0]"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-308",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.636364, 775.446228, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 24.0,
					"frgb" : [ 0.32549, 0.34902, 0.258824, 1.0 ],
					"id" : "obj-131",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 992.000061, 247.057846, 36.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1311.487671, 18.214874, 36.0, 34.0 ],
					"text" : "50",
					"textcolor" : [ 0.32549, 0.34902, 0.258824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 24.0,
					"frgb" : [ 0.32549, 0.34902, 0.258824, 1.0 ],
					"id" : "obj-130",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 807.834717, 247.057846, 36.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1118.049683, 18.214874, 36.0, 34.0 ],
					"text" : "40",
					"textcolor" : [ 0.32549, 0.34902, 0.258824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 24.0,
					"frgb" : [ 0.32549, 0.34902, 0.258824, 1.0 ],
					"id" : "obj-129",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 614.842957, 247.057846, 36.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 930.785156, 18.214874, 36.0, 34.0 ],
					"text" : "30",
					"textcolor" : [ 0.32549, 0.34902, 0.258824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 24.0,
					"frgb" : [ 0.32549, 0.34902, 0.258824, 1.0 ],
					"id" : "obj-128",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 423.669403, 247.057846, 36.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 740.52063, 18.214874, 36.0, 34.0 ],
					"text" : "20",
					"textcolor" : [ 0.32549, 0.34902, 0.258824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 24.0,
					"frgb" : [ 0.32549, 0.34902, 0.258824, 1.0 ],
					"id" : "obj-127",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 233.661163, 247.057846, 36.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 549.603271, 18.214874, 36.0, 34.0 ],
					"text" : "10",
					"textcolor" : [ 0.32549, 0.34902, 0.258824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-200",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.603302, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 393.818176, 36.214874, 18.0, 20.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.310674, 0.248493, 1.0 ],
					"id" : "obj-199",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.603306, 278.876038, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.818176, 36.214874, 18.0, 20.0 ],
					"text" : "0",
					"textcolor" : [ 1.0, 0.310674, 0.248493, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 60,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 46.694214, 501.785126, 1139.0, 20.0 ],
					"text" : "funnel 60"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-13",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1584.0, 359.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 361.0, 2.0, 1043.0, 165.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-12",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1584.0, 216.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 52.0, 356.0, 115.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-170",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1584.0, 118.0, 346.0, 94.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 2.0, 118.0, 48.0 ],
					"rounded" : 9
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-14",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1584.0, 492.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 123.0, 2.0, 236.0, 48.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1118.0, 701.0 ],
					"source" : [ "obj-134", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 496.5, 75.0, 435.5, 75.0 ],
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [ 1883.0, 210.0, 1732.0, 210.0, 1732.0, 180.0, 1745.5, 180.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [ 1883.5, 171.0, 1883.0, 171.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [ 1883.5, 144.0, 1702.0, 144.0, 1702.0, 150.0, 1729.0, 150.0, 1729.0, 180.0, 1745.5, 180.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [ 1817.5, 144.0, 1741.5, 144.0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 89.357033, 67.0, 435.5, 67.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 1876.5, 141.0, 1861.0, 141.0, 1861.0, 111.0, 1740.5, 111.0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1745.5, 751.0, 1272.136353, 751.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [ 1740.5, 141.0, 1774.0, 141.0, 1774.0, 120.0, 1817.5, 120.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 1799.5, 172.0, 1870.0, 172.0, 1870.0, 147.0, 1883.5, 147.0 ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-308", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1232.5, 769.0, 56.136364, 769.0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-308", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1281.5, 705.0, 56.136364, 705.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-308", 0 ],
					"hidden" : 0,
					"midpoints" : [ 223.042267, 141.0, 5.0, 141.0, 5.0, 762.0, 56.136364, 762.0 ],
					"source" : [ "obj-40", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.042267, 102.31617, 55.44817, 102.31617 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 176.042267, 104.853111, 237.812836, 104.853111, 1172.299316, 104.853111, 1172.299316, 543.844421, 427.281799, 543.844421 ],
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 55.44817, 147.0, 1182.95459, 147.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-774", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-775", 0 ],
					"hidden" : 0,
					"midpoints" : [ 55.44817, 147.07576, 652.954529, 147.07576 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-308", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 3 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 4 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-308", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1347.5, 719.0, 56.136364, 719.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 5 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-504", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 6 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 7 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 8 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 9 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 10 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 11 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 12 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 13 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 14 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1402.95459, 730.0, 971.5, 730.0 ],
					"source" : [ "obj-6", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-6", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1259.429199, 107.0, 55.44817, 107.0 ],
					"source" : [ "obj-64", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1200.762573, 544.0, 427.281799, 544.0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-64", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-641", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-642", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 3 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-643", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 4 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-644", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 5 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-645", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 6 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-646", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 7 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-647", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 8 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-648", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 9 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-649", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 19 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-650", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 18 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-651", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 17 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-652", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 16 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-653", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 15 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-654", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 14 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-655", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 13 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-656", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 12 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-657", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 11 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-658", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 10 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-667", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 29 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-670", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 28 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-671", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 27 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-672", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 26 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-673", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 25 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-674", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 24 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-675", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 23 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-676", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 22 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-677", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 21 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-678", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 20 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-687", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 39 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-690", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 38 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-691", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 37 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-692", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 36 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-693", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 35 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-694", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 34 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-695", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 33 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-696", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 32 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-697", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 31 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-698", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 30 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-707", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 49 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-710", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 48 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-711", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 47 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-712", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 46 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-713", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 45 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-714", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 44 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-715", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 43 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-716", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 42 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-717", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 41 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-718", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 40 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-727", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 53 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-757", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 52 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-758", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 51 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-759", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 50 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-768", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-504", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-641", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-642", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-643", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-644", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-645", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-646", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-647", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-648", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-649", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-650", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-651", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-652", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-653", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-654", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-655", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-656", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-657", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-658", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-667", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-670", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-671", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-672", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-673", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-674", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-675", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-676", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-677", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-678", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-687", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-698", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-707", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-774", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-690", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-691", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-692", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-693", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-694", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-695", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-696", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-697", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-710", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-711", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-712", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-713", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-714", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-715", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-716", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-717", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-718", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-727", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-757", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-758", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-759", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-768", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-775", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-774", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1318.762573, 139.0, 55.863628, 139.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-775", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1318.762573, 140.0, 652.954529, 140.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ]
	}

}
