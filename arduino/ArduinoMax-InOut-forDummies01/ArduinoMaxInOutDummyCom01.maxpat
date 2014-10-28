{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 325.0, 161.0, 703.0, 396.0 ],
		"bglocked" : 0,
		"defrect" : [ 325.0, 161.0, 703.0, 396.0 ],
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
					"maxclass" : "comment",
					"text" : "When the serial communication is activated, the serial buffer might contain data that Max-objects misread as error-messages, so we reset the serial-buffer at patch startup for good measure.",
					"linecount" : 6,
					"fontsize" : 12.0,
					"patching_rect" : [ 209.0, 118.0, 207.0, 89.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-15",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "To communicate serially between the Arduino soft and hardware, while the max-patch is open, close the port. To communicate between Max and the Arduino board, remember to open the serial port again.",
					"linecount" : 7,
					"fontsize" : 12.0,
					"patching_rect" : [ 435.0, 113.0, 190.0, 103.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-11",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 12.0,
					"patching_rect" : [ 282.0, 51.0, 67.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-41",
					"fontname" : "Arial",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "reset",
					"fontsize" : 12.0,
					"patching_rect" : [ 282.0, 78.0, 37.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-40",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "close",
					"fontsize" : 12.0,
					"patching_rect" : [ 581.0, 78.0, 37.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-39",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"fontsize" : 12.0,
					"patching_rect" : [ 536.0, 78.0, 37.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-20",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "beta, beta, beta, beta, beta, beta, beta, beta, beta, beta",
					"fontsize" : 12.0,
					"patching_rect" : [ 314.5, 15.0, 312.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-87",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 221.0, 31.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "bang" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"fontsize" : 12.0,
					"patching_rect" : [ 221.0, 78.0, 34.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-5",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 114.0, 31.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "int" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 555.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-37",
					"comment" : "Analog In Pin 19 (A5)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 529.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-38",
					"comment" : "Analog In Pin 18 (A4)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 503.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-29",
					"comment" : "Analog In Pin 17 (A3)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 477.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-30",
					"comment" : "Analog In Pin 16 (A2)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 451.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-31",
					"comment" : "Analog In Pin 15 (A1)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 425.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-32",
					"comment" : "Analog In Pin 14 (A0)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 399.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-33",
					"comment" : "Digital In Pin 13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 373.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-34",
					"comment" : "Digital In Pin 12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 347.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-35",
					"comment" : "Digital In Pin 11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 321.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-36",
					"comment" : "Digital In Pin 10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 295.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-25",
					"comment" : "Digital In Pin 9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 269.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-26",
					"comment" : "Digital In Pin 8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 243.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-27",
					"comment" : "Digital In Pin 7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 217.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-28",
					"comment" : "Digital In Pin 6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 191.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-23",
					"comment" : "Digital In Pin 5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 165.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-24",
					"comment" : "Digital In Pin 4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 139.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-22",
					"comment" : "Digital In Pin 3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "spray 18 2",
					"fontsize" : 12.0,
					"patching_rect" : [ 114.0, 280.0, 460.5, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 18,
					"id" : "obj-4",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 153.0, 31.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "int" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hint" : "",
					"annotation" : "",
					"patching_rect" : [ 113.5, 309.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-16",
					"comment" : "Digital In Pin 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 26.5, 30.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-14",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "itoa",
					"fontsize" : 9.0,
					"patching_rect" : [ 113.5, 216.0, 46.0, 17.0 ],
					"numinlets" : 3,
					"numoutlets" : 1,
					"id" : "obj-7",
					"fontname" : "Arial",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl group 7",
					"fontsize" : 9.0,
					"patching_rect" : [ 113.5, 196.0, 50.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"id" : "obj-9",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "fromsymbol",
					"fontsize" : 9.0,
					"patching_rect" : [ 113.5, 236.0, 57.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-12",
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 10 13",
					"fontsize" : 9.0,
					"patching_rect" : [ 113.5, 166.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-13",
					"fontname" : "Arial",
					"outlettype" : [ "bang", "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 15",
					"fontsize" : 12.0,
					"patching_rect" : [ 114.0, 78.0, 58.0, 20.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-6",
					"fontname" : "Arial",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "atoi",
					"fontsize" : 12.0,
					"patching_rect" : [ 27.0, 78.0, 46.0, 20.0 ],
					"numinlets" : 3,
					"numoutlets" : 1,
					"id" : "obj-10",
					"fontname" : "Arial",
					"outlettype" : [ "list" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "serial a 115200",
					"fontsize" : 12.0,
					"patching_rect" : [ 114.0, 118.0, 92.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-1",
					"fontname" : "Arial",
					"outlettype" : [ "int", "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 291.5, 111.5, 123.5, 111.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 590.5, 106.5, 123.5, 106.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 545.5, 106.5, 123.5, 106.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 17 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 16 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 15 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 14 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 13 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 12 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 11 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 10 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 9 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 8 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 7 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 6 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 5 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 4 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 3 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 2 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 2 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
