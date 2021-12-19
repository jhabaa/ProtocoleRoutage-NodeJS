{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 10,
			"architecture" : "x86"
		}
,
		"rect" : [ 113.0, 81.0, 793.0, 663.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 11.934731,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 277.0, 92.0, 78.0, 20.0 ],
					"text" : "route /preset"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 91.0, 88.0, 34.0, 20.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 91.0, 53.0, 99.0, 20.0 ],
					"text" : "udpreceive 3333"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.128205,
					"id" : "obj-35",
					"margin" : 4,
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 91.0, 132.0, 169.0, 57.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-3", "flonum", "float", -0.09015, 6, "obj-4", "gain~", "list", 76, 10.0, 6, "obj-5", "gain~", "list", 76, 10.0, 5, "obj-6", "flonum", "float", 0.0, 5, "obj-7", "flonum", "float", 0.0, 6, "obj-10", "gain~", "list", 132, 10.0, 6, "obj-9", "gain~", "list", 114, 10.0, 5, "obj-11", "toggle", "int", 1, 5, "obj-24", "flonum", "float", 0.49, 5, "obj-26", "flonum", "float", 8.69999, 5, "obj-25", "flonum", "float", 94.0, 5, "obj-28", "flonum", "float", 35.630108, 5, "<invalid>", "number", "int", 16, 5, "<invalid>", "number", "int", 84, 5, "<invalid>", "number", "int", 76, 5, "<invalid>", "number", "int", 114 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-3", "flonum", "float", 0.44, 6, "obj-4", "gain~", "list", 80, 10.0, 6, "obj-5", "gain~", "list", 86, 10.0, 5, "obj-6", "flonum", "float", 236.0, 5, "obj-7", "flonum", "float", 0.54, 6, "obj-10", "gain~", "list", 112, 10.0, 6, "obj-9", "gain~", "list", 88, 10.0, 5, "obj-11", "toggle", "int", 1, 5, "obj-24", "flonum", "float", 64.0, 5, "obj-26", "flonum", "float", 209.0, 5, "obj-25", "flonum", "float", 30.0, 5, "obj-28", "flonum", "float", 64.330002, 5, "<invalid>", "number", "int", 16, 5, "<invalid>", "number", "int", 84, 5, "<invalid>", "number", "int", 80, 5, "<invalid>", "number", "int", 86, 5, "<invalid>", "number", "int", 112, 5, "<invalid>", "number", "int", 88 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-3", "flonum", "float", 0.73, 6, "obj-4", "gain~", "list", 83, 10.0, 6, "obj-5", "gain~", "list", 83, 10.0, 5, "obj-6", "flonum", "float", 554.0, 5, "obj-7", "flonum", "float", 0.22, 6, "obj-10", "gain~", "list", 112, 10.0, 6, "obj-9", "gain~", "list", 126, 10.0, 5, "obj-11", "toggle", "int", 1, 5, "obj-24", "flonum", "float", 0.14, 5, "obj-26", "flonum", "float", 50.0, 5, "obj-25", "flonum", "float", 96.0, 5, "obj-28", "flonum", "float", 46.0, 5, "<invalid>", "number", "int", 16, 5, "<invalid>", "number", "int", 84, 5, "<invalid>", "number", "int", 83, 5, "<invalid>", "number", "int", 83, 5, "<invalid>", "number", "int", 112, 5, "<invalid>", "number", "int", 126 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-3", "flonum", "float", 0.55, 6, "obj-4", "gain~", "list", 95, 10.0, 6, "obj-5", "gain~", "list", 86, 10.0, 5, "obj-6", "flonum", "float", 236.0, 5, "obj-7", "flonum", "float", 0.54, 6, "obj-10", "gain~", "list", 86, 10.0, 6, "obj-9", "gain~", "list", 116, 10.0, 5, "obj-11", "toggle", "int", 1, 5, "obj-24", "flonum", "float", 296.75, 5, "obj-26", "flonum", "float", 507.0, 5, "obj-25", "flonum", "float", 101.0, 5, "obj-28", "flonum", "float", 85.0, 5, "<invalid>", "number", "int", 16, 5, "<invalid>", "number", "int", 84, 5, "<invalid>", "number", "int", 95, 5, "<invalid>", "number", "int", 86, 5, "<invalid>", "number", "int", 86, 5, "<invalid>", "number", "int", 116 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-3", "flonum", "float", 0.31, 6, "obj-4", "gain~", "list", 80, 10.0, 6, "obj-5", "gain~", "list", 86, 10.0, 5, "obj-6", "flonum", "float", 236.0, 5, "obj-7", "flonum", "float", 0.54, 6, "obj-10", "gain~", "list", 112, 10.0, 6, "obj-9", "gain~", "list", 112, 10.0, 5, "obj-11", "toggle", "int", 1, 5, "obj-24", "flonum", "float", 65.0, 5, "obj-26", "flonum", "float", 253.0, 5, "obj-25", "flonum", "float", 0.0, 5, "obj-28", "flonum", "float", 65.630188, 5, "<invalid>", "number", "int", 16, 5, "<invalid>", "number", "int", 84, 5, "<invalid>", "number", "int", 80, 5, "<invalid>", "number", "int", 86, 5, "<invalid>", "number", "int", 112, 5, "<invalid>", "number", "int", 112 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-3", "flonum", "float", 0.44, 6, "obj-4", "gain~", "list", 80, 10.0, 6, "obj-5", "gain~", "list", 86, 10.0, 5, "obj-6", "flonum", "float", 236.0, 5, "obj-7", "flonum", "float", 0.54, 6, "obj-10", "gain~", "list", 112, 10.0, 6, "obj-9", "gain~", "list", 112, 10.0, 5, "obj-11", "toggle", "int", 1, 5, "obj-24", "flonum", "float", 64.0, 5, "obj-26", "flonum", "float", 22.0, 5, "obj-25", "flonum", "float", 0.0, 5, "obj-28", "flonum", "float", 65.630188, 5, "<invalid>", "number", "int", 16, 5, "<invalid>", "number", "int", 84 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-3", "flonum", "float", 0.57, 6, "obj-4", "gain~", "list", 95, 10.0, 6, "obj-5", "gain~", "list", 86, 10.0, 5, "obj-6", "flonum", "float", 340.0, 5, "obj-7", "flonum", "float", 0.04, 6, "obj-10", "gain~", "list", 0, 10.0, 6, "obj-9", "gain~", "list", 128, 10.0, 5, "obj-11", "toggle", "int", 1, 5, "obj-24", "flonum", "float", 174.0, 5, "obj-26", "flonum", "float", 356.0, 5, "obj-25", "flonum", "float", 1.44999, 5, "obj-28", "flonum", "float", 25.0, 5, "<invalid>", "number", "int", 16, 5, "<invalid>", "number", "int", 84, 5, "<invalid>", "number", "int", 95, 5, "<invalid>", "number", "int", 86, 5, "<invalid>", "number", "int", 0, 5, "<invalid>", "number", "int", 128 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-3", "flonum", "float", 0.22, 6, "obj-4", "gain~", "list", 95, 10.0, 6, "obj-5", "gain~", "list", 86, 10.0, 5, "obj-6", "flonum", "float", 334.0, 5, "obj-7", "flonum", "float", 0.22, 6, "obj-10", "gain~", "list", 0, 10.0, 6, "obj-9", "gain~", "list", 128, 10.0, 5, "obj-11", "toggle", "int", 1, 5, "obj-24", "flonum", "float", 100.089996, 5, "obj-26", "flonum", "float", 272.0, 5, "obj-25", "flonum", "float", 1.0, 5, "obj-28", "flonum", "float", 25.0, 5, "<invalid>", "number", "int", 16, 5, "<invalid>", "number", "int", 84, 5, "<invalid>", "number", "int", 95, 5, "<invalid>", "number", "int", 86, 5, "<invalid>", "number", "int", 0, 5, "<invalid>", "number", "int", 128 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-3", "flonum", "float", 0.0, 6, "obj-4", "gain~", "list", 76, 10.0, 6, "obj-5", "gain~", "list", 76, 10.0, 5, "obj-6", "flonum", "float", 0.0, 5, "obj-7", "flonum", "float", 0.0, 6, "obj-10", "gain~", "list", 3, 10.0, 6, "obj-9", "gain~", "list", 2, 10.0, 5, "obj-11", "toggle", "int", 1, 5, "obj-24", "flonum", "float", 0.0, 5, "obj-26", "flonum", "float", 8.69999, 5, "obj-25", "flonum", "float", 94.0, 5, "obj-28", "flonum", "float", 0.0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-28",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 485.0, 267.0, 61.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-25",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 607.0, 383.0, 61.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-26",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 607.0, 355.0, 59.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-24",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 610.0, 267.0, 60.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 571.0, 383.0, 30.470589, 20.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 571.0, 355.0, 30.470589, 20.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 572.0, 327.0, 57.0, 20.0 ],
					"text" : "cycle~ 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 403.0, 290.0, 72.0, 20.0 ],
					"text" : "phasor~ 0.3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 485.0, 290.0, 70.0, 20.0 ],
					"text" : "cycle~ 300."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 610.0, 295.0, 72.0, 20.0 ],
					"text" : "phasor~ 0.3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 440.0, 323.0, 49.0, 20.0 ],
					"text" : "sah~ 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 440.0, 350.0, 39.0, 20.0 ],
					"text" : "*~ -1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 404.0, 382.0, 79.0, 20.0 ],
					"text" : "pong~ 1 0. 1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 228.0, 569.0, 36.0, 20.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 228.0, 544.0, 36.0, 20.0 ],
					"text" : "*~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 176.0, 516.0, 33.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 254.0, 437.0, 24.0, 101.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 229.0, 437.0, 24.0, 101.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 254.0, 410.0, 99.0, 20.0 ],
					"text" : "lores~ 300. 0.5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-7",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 334.0, 379.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-6",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 334.0, 359.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 189.0, 336.0, 16.0, 74.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 172.0, 336.0, 16.0, 74.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-3",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 193.0, 263.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 187.0, 308.0, 57.0, 20.0 ],
					"text" : "cycle~ 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.934731,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 169.0, 283.0, 43.0, 20.0 ],
					"text" : ">~ 0.5"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 413.5, 404.0, 256.0, 404.0, 256.0, 259.0, 178.5, 259.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 413.5, 404.0, 256.0, 404.0, 256.0, 299.0, 234.5, 299.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 580.5, 409.0, 563.0, 409.0, 563.0, 260.0, 412.5, 260.0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 178.0, 425.0, 238.5, 425.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 195.0, 425.0, 238.5, 425.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ]
	}

}
