{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 79.0, 1212.0, 687.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-41",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "mc.verb1.maxpat",
					"numinlets" : 6,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 634.285714285714221, 784.0, 213.0, 80.0 ],
					"varname" : "mc.verb1[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 784.0, 749.0, 42.0, 22.0 ],
					"text" : "tomc~"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-42",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "fm1.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 784.0, 588.0, 335.0, 151.0 ],
					"varname" : "fm1",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 158.25, 303.0, 29.5, 22.0 ],
					"text" : "t i b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 158.25, 365.0, 29.5, 22.0 ],
					"text" : "+"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 168.75, 334.0, 65.0, 22.0 ],
					"text" : "drunk 24 3"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-30",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "util1.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 222.0, 584.0, 129.0, 75.0 ],
					"varname" : "util1",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-29",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "mc.mix8.maxpat",
					"numinlets" : 8,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 246.0, 792.0, 343.0, 145.0 ],
					"varname" : "mc.mix8",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 353.0, 477.0, 71.0, 22.0 ],
					"text" : "unpack i i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 357.5, 245.0, 29.5, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "number",
					"maximum" : 500,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 328.0, 45.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 328.0, 77.0, 59.0, 22.0 ],
					"text" : "tempo $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
					"patching_rect" : [ 328.0, 109.0, 103.0, 22.0 ],
					"text" : "transport"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 247.0, 185.0, 50.0, 22.0 ],
					"text" : "4386"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 278.0, 146.0, 55.0, 22.0 ],
					"text" : "clkdiv 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 265.0, 45.0, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 213.0, 112.0, 50.0, 22.0 ],
					"text" : "52642"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 244.0, 77.0, 61.0, 22.0 ],
					"text" : "counter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 244.0, 17.0, 271.0, 22.0 ],
					"text" : "metro @quantize 0.0.5 @interval 0.0.5 @active 1"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-22",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "function4.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "float" ],
					"patching_rect" : [ 399.0, 498.0, 313.0, 144.0 ],
					"varname" : "function4",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-19",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "step32.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 375.5, 292.0, 451.0, 168.0 ],
					"varname" : "step32",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 130.0, 275.0, 29.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 133.0, 513.0, 42.0, 22.0 ],
					"text" : "tomc~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 133.0, 236.0, 55.0, 22.0 ],
					"text" : "stripnote"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-20",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "dsynth.glass.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 133.0, 398.0, 146.0, 107.0 ],
					"varname" : "dsynth.glass",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 129.0, 204.0, 59.0, 22.0 ],
					"text" : "unpack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 123.0, 144.0, 86.0, 22.0 ],
					"text" : "push.playpads"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 632.0, 144.0, 56.0, 22.0 ],
					"text" : "autopattr",
					"varname" : "u118003625"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 567.0, 49.0, 84.0, 22.0 ],
					"text" : "ezpreset testo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 95.0, 787.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 82.0, 749.0, 74.0, 22.0 ],
					"text" : "mc.unpack~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 11.0, 51.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 29.0, 77.0, 40.0, 22.0 ],
					"text" : "watch"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-12",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "mc.verb1.maxpat",
					"numinlets" : 6,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 292.285714285714278, 684.0, 213.0, 80.0 ],
					"varname" : "mc.verb1",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 16,
					"id" : "obj-14",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 455.0, 86.0, 169.0, 172.0 ],
					"pattrstorage" : "testo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 632.0, 115.0, 102.0, 22.0 ],
					"text" : "push.pattrstorage"
				}

			}
, 			{
				"box" : 				{
					"autorestore" : "testo.json",
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 632.0, 86.0, 153.0, 22.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 100, 100, 500, 600 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 200, 200, 800, 500 ]
					}
,
					"text" : "pattrstorage @savemode 2",
					"varname" : "testo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 7,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "mc.verb1.maxpat",
									"numinlets" : 6,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 200.0, 172.0, 221.0, 91.0 ],
									"varname" : "mc.verb1",
									"viewvisibility" : 1
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 316.0, 193.0, 67.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p whhaaaa",
					"varname" : "whhaaaa"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 73.0, 77.0, 63.0, 22.0 ],
					"text" : "stopwatch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 73.0, 51.0, 63.0, 22.0 ],
					"text" : "closebang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 142.0, 77.0, 58.0, 22.0 ],
					"text" : "push.hub"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 51.0, 109.0, 67.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "windows",
						"parameter_enable" : 0
					}
,
					"text" : "js windows"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 2 ],
					"source" : [ "obj-21", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 2 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"order" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"order" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"order" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"order" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 2 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"order" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"order" : 1,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 1 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 2 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-12::obj-22" : [ "Decay[1]", "Decay", 0 ],
			"obj-12::obj-23" : [ "Damp[1]", "Damp", 0 ],
			"obj-12::obj-24" : [ "Diffuse[1]", "Diffuse", 0 ],
			"obj-12::obj-25" : [ "Mix[1]", "Mix", 0 ],
			"obj-12::obj-8" : [ "Size[1]", "Size", 0 ],
			"obj-19::obj-1::obj-10::obj-16" : [ "on[14]", "on", 0 ],
			"obj-19::obj-1::obj-10::obj-17" : [ "p1[14]", "p1", 0 ],
			"obj-19::obj-1::obj-10::obj-18" : [ "p2[14]", "p2", 0 ],
			"obj-19::obj-1::obj-10::obj-19" : [ "p3[14]", "p3", 0 ],
			"obj-19::obj-1::obj-10::obj-3" : [ "p0[14]", "p0", 0 ],
			"obj-19::obj-1::obj-11::obj-16" : [ "on[13]", "on", 0 ],
			"obj-19::obj-1::obj-11::obj-17" : [ "p1[13]", "p1", 0 ],
			"obj-19::obj-1::obj-11::obj-18" : [ "p2[13]", "p2", 0 ],
			"obj-19::obj-1::obj-11::obj-19" : [ "p3[13]", "p3", 0 ],
			"obj-19::obj-1::obj-11::obj-3" : [ "p0[13]", "p0", 0 ],
			"obj-19::obj-1::obj-13::obj-16" : [ "on[12]", "on", 0 ],
			"obj-19::obj-1::obj-13::obj-17" : [ "p1[12]", "p1", 0 ],
			"obj-19::obj-1::obj-13::obj-18" : [ "p2[12]", "p2", 0 ],
			"obj-19::obj-1::obj-13::obj-19" : [ "p3[12]", "p3", 0 ],
			"obj-19::obj-1::obj-13::obj-3" : [ "p0[12]", "p0", 0 ],
			"obj-19::obj-1::obj-14::obj-16" : [ "on[11]", "on", 0 ],
			"obj-19::obj-1::obj-14::obj-17" : [ "p1[11]", "p1", 0 ],
			"obj-19::obj-1::obj-14::obj-18" : [ "p2[11]", "p2", 0 ],
			"obj-19::obj-1::obj-14::obj-19" : [ "p3[11]", "p3", 0 ],
			"obj-19::obj-1::obj-14::obj-3" : [ "p0[11]", "p0", 0 ],
			"obj-19::obj-1::obj-15::obj-16" : [ "on[10]", "on", 0 ],
			"obj-19::obj-1::obj-15::obj-17" : [ "p1[10]", "p1", 0 ],
			"obj-19::obj-1::obj-15::obj-18" : [ "p2[10]", "p2", 0 ],
			"obj-19::obj-1::obj-15::obj-19" : [ "p3[10]", "p3", 0 ],
			"obj-19::obj-1::obj-15::obj-3" : [ "p0[10]", "p0", 0 ],
			"obj-19::obj-1::obj-16::obj-16" : [ "on[9]", "on", 0 ],
			"obj-19::obj-1::obj-16::obj-17" : [ "p1[9]", "p1", 0 ],
			"obj-19::obj-1::obj-16::obj-18" : [ "p2[9]", "p2", 0 ],
			"obj-19::obj-1::obj-16::obj-19" : [ "p3[9]", "p3", 0 ],
			"obj-19::obj-1::obj-16::obj-3" : [ "p0[9]", "p0", 0 ],
			"obj-19::obj-1::obj-17::obj-16" : [ "on[8]", "on", 0 ],
			"obj-19::obj-1::obj-17::obj-17" : [ "p1[8]", "p1", 0 ],
			"obj-19::obj-1::obj-17::obj-18" : [ "p2[8]", "p2", 0 ],
			"obj-19::obj-1::obj-17::obj-19" : [ "p3[8]", "p3", 0 ],
			"obj-19::obj-1::obj-17::obj-3" : [ "p0[8]", "p0", 0 ],
			"obj-19::obj-1::obj-1::obj-16" : [ "on", "on", 0 ],
			"obj-19::obj-1::obj-1::obj-17" : [ "p1", "p1", 0 ],
			"obj-19::obj-1::obj-1::obj-18" : [ "p2", "p2", 0 ],
			"obj-19::obj-1::obj-1::obj-19" : [ "p3", "p3", 0 ],
			"obj-19::obj-1::obj-1::obj-3" : [ "p0", "p0", 0 ],
			"obj-19::obj-1::obj-2::obj-16" : [ "on[1]", "on", 0 ],
			"obj-19::obj-1::obj-2::obj-17" : [ "p1[1]", "p1", 0 ],
			"obj-19::obj-1::obj-2::obj-18" : [ "p2[1]", "p2", 0 ],
			"obj-19::obj-1::obj-2::obj-19" : [ "p3[1]", "p3", 0 ],
			"obj-19::obj-1::obj-2::obj-3" : [ "p0[1]", "p0", 0 ],
			"obj-19::obj-1::obj-3::obj-16" : [ "on[2]", "on", 0 ],
			"obj-19::obj-1::obj-3::obj-17" : [ "p1[2]", "p1", 0 ],
			"obj-19::obj-1::obj-3::obj-18" : [ "p2[2]", "p2", 0 ],
			"obj-19::obj-1::obj-3::obj-19" : [ "p3[2]", "p3", 0 ],
			"obj-19::obj-1::obj-3::obj-3" : [ "p0[2]", "p0", 0 ],
			"obj-19::obj-1::obj-4::obj-16" : [ "on[3]", "on", 0 ],
			"obj-19::obj-1::obj-4::obj-17" : [ "p1[3]", "p1", 0 ],
			"obj-19::obj-1::obj-4::obj-18" : [ "p2[3]", "p2", 0 ],
			"obj-19::obj-1::obj-4::obj-19" : [ "p3[3]", "p3", 0 ],
			"obj-19::obj-1::obj-4::obj-3" : [ "p0[3]", "p0", 0 ],
			"obj-19::obj-1::obj-5::obj-16" : [ "on[7]", "on", 0 ],
			"obj-19::obj-1::obj-5::obj-17" : [ "p1[7]", "p1", 0 ],
			"obj-19::obj-1::obj-5::obj-18" : [ "p2[7]", "p2", 0 ],
			"obj-19::obj-1::obj-5::obj-19" : [ "p3[7]", "p3", 0 ],
			"obj-19::obj-1::obj-5::obj-3" : [ "p0[7]", "p0", 0 ],
			"obj-19::obj-1::obj-6::obj-16" : [ "on[6]", "on", 0 ],
			"obj-19::obj-1::obj-6::obj-17" : [ "p1[6]", "p1", 0 ],
			"obj-19::obj-1::obj-6::obj-18" : [ "p2[6]", "p2", 0 ],
			"obj-19::obj-1::obj-6::obj-19" : [ "p3[6]", "p3", 0 ],
			"obj-19::obj-1::obj-6::obj-3" : [ "p0[6]", "p0", 0 ],
			"obj-19::obj-1::obj-7::obj-16" : [ "on[5]", "on", 0 ],
			"obj-19::obj-1::obj-7::obj-17" : [ "p1[5]", "p1", 0 ],
			"obj-19::obj-1::obj-7::obj-18" : [ "p2[5]", "p2", 0 ],
			"obj-19::obj-1::obj-7::obj-19" : [ "p3[5]", "p3", 0 ],
			"obj-19::obj-1::obj-7::obj-3" : [ "p0[5]", "p0", 0 ],
			"obj-19::obj-1::obj-8::obj-16" : [ "on[4]", "on", 0 ],
			"obj-19::obj-1::obj-8::obj-17" : [ "p1[4]", "p1", 0 ],
			"obj-19::obj-1::obj-8::obj-18" : [ "p2[4]", "p2", 0 ],
			"obj-19::obj-1::obj-8::obj-19" : [ "p3[4]", "p3", 0 ],
			"obj-19::obj-1::obj-8::obj-3" : [ "p0[4]", "p0", 0 ],
			"obj-19::obj-1::obj-9::obj-16" : [ "on[15]", "on", 0 ],
			"obj-19::obj-1::obj-9::obj-17" : [ "p1[15]", "p1", 0 ],
			"obj-19::obj-1::obj-9::obj-18" : [ "p2[15]", "p2", 0 ],
			"obj-19::obj-1::obj-9::obj-19" : [ "p3[15]", "p3", 0 ],
			"obj-19::obj-1::obj-9::obj-3" : [ "p0[15]", "p0", 0 ],
			"obj-19::obj-2::obj-10::obj-16" : [ "on[30]", "on", 0 ],
			"obj-19::obj-2::obj-10::obj-17" : [ "p1[30]", "p1", 0 ],
			"obj-19::obj-2::obj-10::obj-18" : [ "p2[30]", "p2", 0 ],
			"obj-19::obj-2::obj-10::obj-19" : [ "p3[30]", "p3", 0 ],
			"obj-19::obj-2::obj-10::obj-3" : [ "p0[30]", "p0", 0 ],
			"obj-19::obj-2::obj-11::obj-16" : [ "on[29]", "on", 0 ],
			"obj-19::obj-2::obj-11::obj-17" : [ "p1[29]", "p1", 0 ],
			"obj-19::obj-2::obj-11::obj-18" : [ "p2[29]", "p2", 0 ],
			"obj-19::obj-2::obj-11::obj-19" : [ "p3[29]", "p3", 0 ],
			"obj-19::obj-2::obj-11::obj-3" : [ "p0[29]", "p0", 0 ],
			"obj-19::obj-2::obj-13::obj-16" : [ "on[28]", "on", 0 ],
			"obj-19::obj-2::obj-13::obj-17" : [ "p1[28]", "p1", 0 ],
			"obj-19::obj-2::obj-13::obj-18" : [ "p2[28]", "p2", 0 ],
			"obj-19::obj-2::obj-13::obj-19" : [ "p3[28]", "p3", 0 ],
			"obj-19::obj-2::obj-13::obj-3" : [ "p0[28]", "p0", 0 ],
			"obj-19::obj-2::obj-14::obj-16" : [ "on[27]", "on", 0 ],
			"obj-19::obj-2::obj-14::obj-17" : [ "p1[27]", "p1", 0 ],
			"obj-19::obj-2::obj-14::obj-18" : [ "p2[27]", "p2", 0 ],
			"obj-19::obj-2::obj-14::obj-19" : [ "p3[27]", "p3", 0 ],
			"obj-19::obj-2::obj-14::obj-3" : [ "p0[27]", "p0", 0 ],
			"obj-19::obj-2::obj-15::obj-16" : [ "on[26]", "on", 0 ],
			"obj-19::obj-2::obj-15::obj-17" : [ "p1[26]", "p1", 0 ],
			"obj-19::obj-2::obj-15::obj-18" : [ "p2[26]", "p2", 0 ],
			"obj-19::obj-2::obj-15::obj-19" : [ "p3[26]", "p3", 0 ],
			"obj-19::obj-2::obj-15::obj-3" : [ "p0[26]", "p0", 0 ],
			"obj-19::obj-2::obj-16::obj-16" : [ "on[25]", "on", 0 ],
			"obj-19::obj-2::obj-16::obj-17" : [ "p1[25]", "p1", 0 ],
			"obj-19::obj-2::obj-16::obj-18" : [ "p2[25]", "p2", 0 ],
			"obj-19::obj-2::obj-16::obj-19" : [ "p3[25]", "p3", 0 ],
			"obj-19::obj-2::obj-16::obj-3" : [ "p0[25]", "p0", 0 ],
			"obj-19::obj-2::obj-17::obj-16" : [ "on[24]", "on", 0 ],
			"obj-19::obj-2::obj-17::obj-17" : [ "p1[24]", "p1", 0 ],
			"obj-19::obj-2::obj-17::obj-18" : [ "p2[24]", "p2", 0 ],
			"obj-19::obj-2::obj-17::obj-19" : [ "p3[24]", "p3", 0 ],
			"obj-19::obj-2::obj-17::obj-3" : [ "p0[24]", "p0", 0 ],
			"obj-19::obj-2::obj-1::obj-16" : [ "on[16]", "on", 0 ],
			"obj-19::obj-2::obj-1::obj-17" : [ "p1[16]", "p1", 0 ],
			"obj-19::obj-2::obj-1::obj-18" : [ "p2[16]", "p2", 0 ],
			"obj-19::obj-2::obj-1::obj-19" : [ "p3[16]", "p3", 0 ],
			"obj-19::obj-2::obj-1::obj-3" : [ "p0[16]", "p0", 0 ],
			"obj-19::obj-2::obj-2::obj-16" : [ "on[17]", "on", 0 ],
			"obj-19::obj-2::obj-2::obj-17" : [ "p1[17]", "p1", 0 ],
			"obj-19::obj-2::obj-2::obj-18" : [ "p2[17]", "p2", 0 ],
			"obj-19::obj-2::obj-2::obj-19" : [ "p3[17]", "p3", 0 ],
			"obj-19::obj-2::obj-2::obj-3" : [ "p0[17]", "p0", 0 ],
			"obj-19::obj-2::obj-3::obj-16" : [ "on[18]", "on", 0 ],
			"obj-19::obj-2::obj-3::obj-17" : [ "p1[18]", "p1", 0 ],
			"obj-19::obj-2::obj-3::obj-18" : [ "p2[18]", "p2", 0 ],
			"obj-19::obj-2::obj-3::obj-19" : [ "p3[18]", "p3", 0 ],
			"obj-19::obj-2::obj-3::obj-3" : [ "p0[18]", "p0", 0 ],
			"obj-19::obj-2::obj-4::obj-16" : [ "on[19]", "on", 0 ],
			"obj-19::obj-2::obj-4::obj-17" : [ "p1[19]", "p1", 0 ],
			"obj-19::obj-2::obj-4::obj-18" : [ "p2[19]", "p2", 0 ],
			"obj-19::obj-2::obj-4::obj-19" : [ "p3[19]", "p3", 0 ],
			"obj-19::obj-2::obj-4::obj-3" : [ "p0[19]", "p0", 0 ],
			"obj-19::obj-2::obj-5::obj-16" : [ "on[23]", "on", 0 ],
			"obj-19::obj-2::obj-5::obj-17" : [ "p1[23]", "p1", 0 ],
			"obj-19::obj-2::obj-5::obj-18" : [ "p2[23]", "p2", 0 ],
			"obj-19::obj-2::obj-5::obj-19" : [ "p3[23]", "p3", 0 ],
			"obj-19::obj-2::obj-5::obj-3" : [ "p0[23]", "p0", 0 ],
			"obj-19::obj-2::obj-6::obj-16" : [ "on[22]", "on", 0 ],
			"obj-19::obj-2::obj-6::obj-17" : [ "p1[22]", "p1", 0 ],
			"obj-19::obj-2::obj-6::obj-18" : [ "p2[22]", "p2", 0 ],
			"obj-19::obj-2::obj-6::obj-19" : [ "p3[22]", "p3", 0 ],
			"obj-19::obj-2::obj-6::obj-3" : [ "p0[22]", "p0", 0 ],
			"obj-19::obj-2::obj-7::obj-16" : [ "on[21]", "on", 0 ],
			"obj-19::obj-2::obj-7::obj-17" : [ "p1[21]", "p1", 0 ],
			"obj-19::obj-2::obj-7::obj-18" : [ "p2[21]", "p2", 0 ],
			"obj-19::obj-2::obj-7::obj-19" : [ "p3[21]", "p3", 0 ],
			"obj-19::obj-2::obj-7::obj-3" : [ "p0[21]", "p0", 0 ],
			"obj-19::obj-2::obj-8::obj-16" : [ "on[20]", "on", 0 ],
			"obj-19::obj-2::obj-8::obj-17" : [ "p1[20]", "p1", 0 ],
			"obj-19::obj-2::obj-8::obj-18" : [ "p2[20]", "p2", 0 ],
			"obj-19::obj-2::obj-8::obj-19" : [ "p3[20]", "p3", 0 ],
			"obj-19::obj-2::obj-8::obj-3" : [ "p0[20]", "p0", 0 ],
			"obj-19::obj-2::obj-9::obj-16" : [ "on[31]", "on", 0 ],
			"obj-19::obj-2::obj-9::obj-17" : [ "p1[31]", "p1", 0 ],
			"obj-19::obj-2::obj-9::obj-18" : [ "p2[31]", "p2", 0 ],
			"obj-19::obj-2::obj-9::obj-19" : [ "p3[31]", "p3", 0 ],
			"obj-19::obj-2::obj-9::obj-3" : [ "p0[31]", "p0", 0 ],
			"obj-20::obj-21" : [ "gain", "Volume", 0 ],
			"obj-20::obj-23" : [ "Pitch", "Pitch", 0 ],
			"obj-20::obj-26" : [ "Resonance", "Reson", 0 ],
			"obj-20::obj-5" : [ "Depth", "Depth", 0 ],
			"obj-20::obj-73" : [ "Material", "Material", 0 ],
			"obj-22::obj-29" : [ "start", "Start", 0 ],
			"obj-22::obj-30" : [ "end", "End", 0 ],
			"obj-22::obj-31" : [ "curve3", "Curve 3", 0 ],
			"obj-22::obj-34" : [ "X1", "X1", 0 ],
			"obj-22::obj-35" : [ "y1", "Y1", 0 ],
			"obj-22::obj-36" : [ "curve1", "Curve 1", 0 ],
			"obj-22::obj-38" : [ "curve2", "Curve 2", 0 ],
			"obj-22::obj-39" : [ "y2", "Y2", 0 ],
			"obj-22::obj-40" : [ "x2", "X2", 0 ],
			"obj-29::obj-11" : [ "Pan", "Pan 1", 0 ],
			"obj-29::obj-22" : [ "Active", "Active", 0 ],
			"obj-29::obj-26" : [ "Active[1]", "Active", 0 ],
			"obj-29::obj-27" : [ "Level[1]", "Level 2", 0 ],
			"obj-29::obj-28" : [ "Pan[1]", "Pan 2", 0 ],
			"obj-29::obj-32" : [ "Active[2]", "Active", 0 ],
			"obj-29::obj-33" : [ "Level[2]", "Level 3", 0 ],
			"obj-29::obj-34" : [ "Pan[2]", "Pan 3", 0 ],
			"obj-29::obj-37" : [ "Active[3]", "Active", 0 ],
			"obj-29::obj-38" : [ "Level[3]", "Level 4", 0 ],
			"obj-29::obj-39" : [ "Pan[3]", "Pan 4", 0 ],
			"obj-29::obj-42" : [ "Active[4]", "Active", 0 ],
			"obj-29::obj-43" : [ "Level[4]", "Level 8", 0 ],
			"obj-29::obj-44" : [ "Pan[4]", "Pan 8", 0 ],
			"obj-29::obj-47" : [ "Active[5]", "Active", 0 ],
			"obj-29::obj-48" : [ "Level[5]", "Level 7", 0 ],
			"obj-29::obj-49" : [ "Pan[5]", "Pan 7", 0 ],
			"obj-29::obj-52" : [ "Active[6]", "Active", 0 ],
			"obj-29::obj-53" : [ "Level[6]", "Level 6", 0 ],
			"obj-29::obj-54" : [ "Pan[6]", "Pan 6", 0 ],
			"obj-29::obj-57" : [ "Active[7]", "Active", 0 ],
			"obj-29::obj-58" : [ "Level[7]", "Level 5", 0 ],
			"obj-29::obj-59" : [ "Pan[7]", "Pan 5", 0 ],
			"obj-29::obj-7" : [ "Level", "Level 1", 0 ],
			"obj-2::obj-1::obj-22" : [ "Decay", "Decay", 0 ],
			"obj-2::obj-1::obj-23" : [ "Damp", "Damp", 0 ],
			"obj-2::obj-1::obj-24" : [ "Diffuse", "Diffuse", 0 ],
			"obj-2::obj-1::obj-25" : [ "Mix", "Mix", 0 ],
			"obj-2::obj-1::obj-8" : [ "Size", "Size", 0 ],
			"obj-30::obj-11" : [ "Pan[8]", "Pan", 0 ],
			"obj-30::obj-22" : [ "Active[8]", "Active", 0 ],
			"obj-30::obj-7" : [ "Volume", "Volume", 0 ],
			"obj-41::obj-22" : [ "Decay[2]", "Decay", 0 ],
			"obj-41::obj-23" : [ "Damp[2]", "Damp", 0 ],
			"obj-41::obj-24" : [ "Diffuse[2]", "Diffuse", 0 ],
			"obj-41::obj-25" : [ "Mix[2]", "Mix", 0 ],
			"obj-41::obj-8" : [ "Size[2]", "Size", 0 ],
			"obj-42::obj-17" : [ "live.dial[20]", "Ratio", 0 ],
			"obj-42::obj-25" : [ "live.dial", "Attack", 0 ],
			"obj-42::obj-3" : [ "live.dial[16]", "Velo", 0 ],
			"obj-42::obj-33" : [ "live.dial[21]", "Ratio", 0 ],
			"obj-42::obj-34" : [ "live.dial[22]", "Level", 0 ],
			"obj-42::obj-35" : [ "live.dial[23]", "Velo", 0 ],
			"obj-42::obj-36" : [ "live.dial[24]", "Sustain", 0 ],
			"obj-42::obj-37" : [ "live.dial[25]", "Release", 0 ],
			"obj-42::obj-38" : [ "live.dial[26]", "Decay", 0 ],
			"obj-42::obj-39" : [ "live.dial[27]", "Attack", 0 ],
			"obj-42::obj-4" : [ "live.dial[17]", "Level", 0 ],
			"obj-42::obj-44" : [ "live.dial[1]", "Decay", 0 ],
			"obj-42::obj-49" : [ "live.dial[28]", "Ratio", 0 ],
			"obj-42::obj-50" : [ "live.dial[29]", "Level", 0 ],
			"obj-42::obj-51" : [ "live.dial[2]", "Release", 0 ],
			"obj-42::obj-52" : [ "live.dial[30]", "Velo", 0 ],
			"obj-42::obj-53" : [ "live.dial[31]", "Sustain", 0 ],
			"obj-42::obj-54" : [ "live.dial[3]", "Sustain", 0 ],
			"obj-42::obj-55" : [ "live.dial[32]", "Release", 0 ],
			"obj-42::obj-56" : [ "live.dial[33]", "Decay", 0 ],
			"obj-42::obj-57" : [ "live.dial[34]", "Attack", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-12::obj-22" : 				{
					"parameter_longname" : "Decay[1]"
				}
,
				"obj-12::obj-23" : 				{
					"parameter_longname" : "Damp[1]"
				}
,
				"obj-12::obj-24" : 				{
					"parameter_longname" : "Diffuse[1]"
				}
,
				"obj-12::obj-25" : 				{
					"parameter_longname" : "Mix[1]"
				}
,
				"obj-12::obj-8" : 				{
					"parameter_longname" : "Size[1]"
				}
,
				"obj-19::obj-1::obj-10::obj-16" : 				{
					"parameter_longname" : "on[14]"
				}
,
				"obj-19::obj-1::obj-10::obj-17" : 				{
					"parameter_longname" : "p1[14]"
				}
,
				"obj-19::obj-1::obj-10::obj-18" : 				{
					"parameter_longname" : "p2[14]"
				}
,
				"obj-19::obj-1::obj-10::obj-19" : 				{
					"parameter_longname" : "p3[14]"
				}
,
				"obj-19::obj-1::obj-10::obj-3" : 				{
					"parameter_longname" : "p0[14]"
				}
,
				"obj-19::obj-1::obj-11::obj-16" : 				{
					"parameter_longname" : "on[13]"
				}
,
				"obj-19::obj-1::obj-11::obj-17" : 				{
					"parameter_longname" : "p1[13]"
				}
,
				"obj-19::obj-1::obj-11::obj-18" : 				{
					"parameter_longname" : "p2[13]"
				}
,
				"obj-19::obj-1::obj-11::obj-19" : 				{
					"parameter_longname" : "p3[13]"
				}
,
				"obj-19::obj-1::obj-11::obj-3" : 				{
					"parameter_longname" : "p0[13]"
				}
,
				"obj-19::obj-1::obj-13::obj-16" : 				{
					"parameter_longname" : "on[12]"
				}
,
				"obj-19::obj-1::obj-13::obj-17" : 				{
					"parameter_longname" : "p1[12]"
				}
,
				"obj-19::obj-1::obj-13::obj-18" : 				{
					"parameter_longname" : "p2[12]"
				}
,
				"obj-19::obj-1::obj-13::obj-19" : 				{
					"parameter_longname" : "p3[12]"
				}
,
				"obj-19::obj-1::obj-13::obj-3" : 				{
					"parameter_longname" : "p0[12]"
				}
,
				"obj-19::obj-1::obj-14::obj-16" : 				{
					"parameter_longname" : "on[11]"
				}
,
				"obj-19::obj-1::obj-14::obj-17" : 				{
					"parameter_longname" : "p1[11]"
				}
,
				"obj-19::obj-1::obj-14::obj-18" : 				{
					"parameter_longname" : "p2[11]"
				}
,
				"obj-19::obj-1::obj-14::obj-19" : 				{
					"parameter_longname" : "p3[11]"
				}
,
				"obj-19::obj-1::obj-14::obj-3" : 				{
					"parameter_longname" : "p0[11]"
				}
,
				"obj-19::obj-1::obj-15::obj-16" : 				{
					"parameter_longname" : "on[10]"
				}
,
				"obj-19::obj-1::obj-15::obj-17" : 				{
					"parameter_longname" : "p1[10]"
				}
,
				"obj-19::obj-1::obj-15::obj-18" : 				{
					"parameter_longname" : "p2[10]"
				}
,
				"obj-19::obj-1::obj-15::obj-19" : 				{
					"parameter_longname" : "p3[10]"
				}
,
				"obj-19::obj-1::obj-15::obj-3" : 				{
					"parameter_longname" : "p0[10]"
				}
,
				"obj-19::obj-1::obj-16::obj-16" : 				{
					"parameter_longname" : "on[9]"
				}
,
				"obj-19::obj-1::obj-16::obj-17" : 				{
					"parameter_longname" : "p1[9]"
				}
,
				"obj-19::obj-1::obj-16::obj-18" : 				{
					"parameter_longname" : "p2[9]"
				}
,
				"obj-19::obj-1::obj-16::obj-19" : 				{
					"parameter_longname" : "p3[9]"
				}
,
				"obj-19::obj-1::obj-16::obj-3" : 				{
					"parameter_longname" : "p0[9]"
				}
,
				"obj-19::obj-1::obj-17::obj-16" : 				{
					"parameter_longname" : "on[8]"
				}
,
				"obj-19::obj-1::obj-17::obj-17" : 				{
					"parameter_longname" : "p1[8]"
				}
,
				"obj-19::obj-1::obj-17::obj-18" : 				{
					"parameter_longname" : "p2[8]"
				}
,
				"obj-19::obj-1::obj-17::obj-19" : 				{
					"parameter_longname" : "p3[8]"
				}
,
				"obj-19::obj-1::obj-17::obj-3" : 				{
					"parameter_longname" : "p0[8]"
				}
,
				"obj-19::obj-1::obj-2::obj-16" : 				{
					"parameter_longname" : "on[1]"
				}
,
				"obj-19::obj-1::obj-2::obj-17" : 				{
					"parameter_longname" : "p1[1]"
				}
,
				"obj-19::obj-1::obj-2::obj-18" : 				{
					"parameter_longname" : "p2[1]"
				}
,
				"obj-19::obj-1::obj-2::obj-19" : 				{
					"parameter_longname" : "p3[1]"
				}
,
				"obj-19::obj-1::obj-2::obj-3" : 				{
					"parameter_longname" : "p0[1]"
				}
,
				"obj-19::obj-1::obj-3::obj-16" : 				{
					"parameter_longname" : "on[2]"
				}
,
				"obj-19::obj-1::obj-3::obj-17" : 				{
					"parameter_longname" : "p1[2]"
				}
,
				"obj-19::obj-1::obj-3::obj-18" : 				{
					"parameter_longname" : "p2[2]"
				}
,
				"obj-19::obj-1::obj-3::obj-19" : 				{
					"parameter_longname" : "p3[2]"
				}
,
				"obj-19::obj-1::obj-3::obj-3" : 				{
					"parameter_longname" : "p0[2]"
				}
,
				"obj-19::obj-1::obj-4::obj-16" : 				{
					"parameter_longname" : "on[3]"
				}
,
				"obj-19::obj-1::obj-4::obj-17" : 				{
					"parameter_longname" : "p1[3]"
				}
,
				"obj-19::obj-1::obj-4::obj-18" : 				{
					"parameter_longname" : "p2[3]"
				}
,
				"obj-19::obj-1::obj-4::obj-19" : 				{
					"parameter_longname" : "p3[3]"
				}
,
				"obj-19::obj-1::obj-4::obj-3" : 				{
					"parameter_longname" : "p0[3]"
				}
,
				"obj-19::obj-1::obj-5::obj-16" : 				{
					"parameter_longname" : "on[7]"
				}
,
				"obj-19::obj-1::obj-5::obj-17" : 				{
					"parameter_longname" : "p1[7]"
				}
,
				"obj-19::obj-1::obj-5::obj-18" : 				{
					"parameter_longname" : "p2[7]"
				}
,
				"obj-19::obj-1::obj-5::obj-19" : 				{
					"parameter_longname" : "p3[7]"
				}
,
				"obj-19::obj-1::obj-5::obj-3" : 				{
					"parameter_longname" : "p0[7]"
				}
,
				"obj-19::obj-1::obj-6::obj-16" : 				{
					"parameter_longname" : "on[6]"
				}
,
				"obj-19::obj-1::obj-6::obj-17" : 				{
					"parameter_longname" : "p1[6]"
				}
,
				"obj-19::obj-1::obj-6::obj-18" : 				{
					"parameter_longname" : "p2[6]"
				}
,
				"obj-19::obj-1::obj-6::obj-19" : 				{
					"parameter_longname" : "p3[6]"
				}
,
				"obj-19::obj-1::obj-6::obj-3" : 				{
					"parameter_longname" : "p0[6]"
				}
,
				"obj-19::obj-1::obj-7::obj-16" : 				{
					"parameter_longname" : "on[5]"
				}
,
				"obj-19::obj-1::obj-7::obj-17" : 				{
					"parameter_longname" : "p1[5]"
				}
,
				"obj-19::obj-1::obj-7::obj-18" : 				{
					"parameter_longname" : "p2[5]"
				}
,
				"obj-19::obj-1::obj-7::obj-19" : 				{
					"parameter_longname" : "p3[5]"
				}
,
				"obj-19::obj-1::obj-7::obj-3" : 				{
					"parameter_longname" : "p0[5]"
				}
,
				"obj-19::obj-1::obj-8::obj-16" : 				{
					"parameter_longname" : "on[4]"
				}
,
				"obj-19::obj-1::obj-8::obj-17" : 				{
					"parameter_longname" : "p1[4]"
				}
,
				"obj-19::obj-1::obj-8::obj-18" : 				{
					"parameter_longname" : "p2[4]"
				}
,
				"obj-19::obj-1::obj-8::obj-19" : 				{
					"parameter_longname" : "p3[4]"
				}
,
				"obj-19::obj-1::obj-8::obj-3" : 				{
					"parameter_longname" : "p0[4]"
				}
,
				"obj-19::obj-1::obj-9::obj-16" : 				{
					"parameter_longname" : "on[15]"
				}
,
				"obj-19::obj-1::obj-9::obj-17" : 				{
					"parameter_longname" : "p1[15]"
				}
,
				"obj-19::obj-1::obj-9::obj-18" : 				{
					"parameter_longname" : "p2[15]"
				}
,
				"obj-19::obj-1::obj-9::obj-19" : 				{
					"parameter_longname" : "p3[15]"
				}
,
				"obj-19::obj-1::obj-9::obj-3" : 				{
					"parameter_longname" : "p0[15]"
				}
,
				"obj-19::obj-2::obj-10::obj-16" : 				{
					"parameter_longname" : "on[30]"
				}
,
				"obj-19::obj-2::obj-10::obj-17" : 				{
					"parameter_longname" : "p1[30]"
				}
,
				"obj-19::obj-2::obj-10::obj-18" : 				{
					"parameter_longname" : "p2[30]"
				}
,
				"obj-19::obj-2::obj-10::obj-19" : 				{
					"parameter_longname" : "p3[30]"
				}
,
				"obj-19::obj-2::obj-10::obj-3" : 				{
					"parameter_longname" : "p0[30]"
				}
,
				"obj-19::obj-2::obj-11::obj-16" : 				{
					"parameter_longname" : "on[29]"
				}
,
				"obj-19::obj-2::obj-11::obj-17" : 				{
					"parameter_longname" : "p1[29]"
				}
,
				"obj-19::obj-2::obj-11::obj-18" : 				{
					"parameter_longname" : "p2[29]"
				}
,
				"obj-19::obj-2::obj-11::obj-19" : 				{
					"parameter_longname" : "p3[29]"
				}
,
				"obj-19::obj-2::obj-11::obj-3" : 				{
					"parameter_longname" : "p0[29]"
				}
,
				"obj-19::obj-2::obj-13::obj-16" : 				{
					"parameter_longname" : "on[28]"
				}
,
				"obj-19::obj-2::obj-13::obj-17" : 				{
					"parameter_longname" : "p1[28]"
				}
,
				"obj-19::obj-2::obj-13::obj-18" : 				{
					"parameter_longname" : "p2[28]"
				}
,
				"obj-19::obj-2::obj-13::obj-19" : 				{
					"parameter_longname" : "p3[28]"
				}
,
				"obj-19::obj-2::obj-13::obj-3" : 				{
					"parameter_longname" : "p0[28]"
				}
,
				"obj-19::obj-2::obj-14::obj-16" : 				{
					"parameter_longname" : "on[27]"
				}
,
				"obj-19::obj-2::obj-14::obj-17" : 				{
					"parameter_longname" : "p1[27]"
				}
,
				"obj-19::obj-2::obj-14::obj-18" : 				{
					"parameter_longname" : "p2[27]"
				}
,
				"obj-19::obj-2::obj-14::obj-19" : 				{
					"parameter_longname" : "p3[27]"
				}
,
				"obj-19::obj-2::obj-14::obj-3" : 				{
					"parameter_longname" : "p0[27]"
				}
,
				"obj-19::obj-2::obj-15::obj-16" : 				{
					"parameter_longname" : "on[26]"
				}
,
				"obj-19::obj-2::obj-15::obj-17" : 				{
					"parameter_longname" : "p1[26]"
				}
,
				"obj-19::obj-2::obj-15::obj-18" : 				{
					"parameter_longname" : "p2[26]"
				}
,
				"obj-19::obj-2::obj-15::obj-19" : 				{
					"parameter_longname" : "p3[26]"
				}
,
				"obj-19::obj-2::obj-15::obj-3" : 				{
					"parameter_longname" : "p0[26]"
				}
,
				"obj-19::obj-2::obj-16::obj-16" : 				{
					"parameter_longname" : "on[25]"
				}
,
				"obj-19::obj-2::obj-16::obj-17" : 				{
					"parameter_longname" : "p1[25]"
				}
,
				"obj-19::obj-2::obj-16::obj-18" : 				{
					"parameter_longname" : "p2[25]"
				}
,
				"obj-19::obj-2::obj-16::obj-19" : 				{
					"parameter_longname" : "p3[25]"
				}
,
				"obj-19::obj-2::obj-16::obj-3" : 				{
					"parameter_longname" : "p0[25]"
				}
,
				"obj-19::obj-2::obj-17::obj-16" : 				{
					"parameter_longname" : "on[24]"
				}
,
				"obj-19::obj-2::obj-17::obj-17" : 				{
					"parameter_longname" : "p1[24]"
				}
,
				"obj-19::obj-2::obj-17::obj-18" : 				{
					"parameter_longname" : "p2[24]"
				}
,
				"obj-19::obj-2::obj-17::obj-19" : 				{
					"parameter_longname" : "p3[24]"
				}
,
				"obj-19::obj-2::obj-17::obj-3" : 				{
					"parameter_longname" : "p0[24]"
				}
,
				"obj-19::obj-2::obj-1::obj-16" : 				{
					"parameter_longname" : "on[16]"
				}
,
				"obj-19::obj-2::obj-1::obj-17" : 				{
					"parameter_longname" : "p1[16]"
				}
,
				"obj-19::obj-2::obj-1::obj-18" : 				{
					"parameter_longname" : "p2[16]"
				}
,
				"obj-19::obj-2::obj-1::obj-19" : 				{
					"parameter_longname" : "p3[16]"
				}
,
				"obj-19::obj-2::obj-1::obj-3" : 				{
					"parameter_longname" : "p0[16]"
				}
,
				"obj-19::obj-2::obj-2::obj-16" : 				{
					"parameter_longname" : "on[17]"
				}
,
				"obj-19::obj-2::obj-2::obj-17" : 				{
					"parameter_longname" : "p1[17]"
				}
,
				"obj-19::obj-2::obj-2::obj-18" : 				{
					"parameter_longname" : "p2[17]"
				}
,
				"obj-19::obj-2::obj-2::obj-19" : 				{
					"parameter_longname" : "p3[17]"
				}
,
				"obj-19::obj-2::obj-2::obj-3" : 				{
					"parameter_longname" : "p0[17]"
				}
,
				"obj-19::obj-2::obj-3::obj-16" : 				{
					"parameter_longname" : "on[18]"
				}
,
				"obj-19::obj-2::obj-3::obj-17" : 				{
					"parameter_longname" : "p1[18]"
				}
,
				"obj-19::obj-2::obj-3::obj-18" : 				{
					"parameter_longname" : "p2[18]"
				}
,
				"obj-19::obj-2::obj-3::obj-19" : 				{
					"parameter_longname" : "p3[18]"
				}
,
				"obj-19::obj-2::obj-3::obj-3" : 				{
					"parameter_longname" : "p0[18]"
				}
,
				"obj-19::obj-2::obj-4::obj-16" : 				{
					"parameter_longname" : "on[19]"
				}
,
				"obj-19::obj-2::obj-4::obj-17" : 				{
					"parameter_longname" : "p1[19]"
				}
,
				"obj-19::obj-2::obj-4::obj-18" : 				{
					"parameter_longname" : "p2[19]"
				}
,
				"obj-19::obj-2::obj-4::obj-19" : 				{
					"parameter_longname" : "p3[19]"
				}
,
				"obj-19::obj-2::obj-4::obj-3" : 				{
					"parameter_longname" : "p0[19]"
				}
,
				"obj-19::obj-2::obj-5::obj-16" : 				{
					"parameter_longname" : "on[23]"
				}
,
				"obj-19::obj-2::obj-5::obj-17" : 				{
					"parameter_longname" : "p1[23]"
				}
,
				"obj-19::obj-2::obj-5::obj-18" : 				{
					"parameter_longname" : "p2[23]"
				}
,
				"obj-19::obj-2::obj-5::obj-19" : 				{
					"parameter_longname" : "p3[23]"
				}
,
				"obj-19::obj-2::obj-5::obj-3" : 				{
					"parameter_longname" : "p0[23]"
				}
,
				"obj-19::obj-2::obj-6::obj-16" : 				{
					"parameter_longname" : "on[22]"
				}
,
				"obj-19::obj-2::obj-6::obj-17" : 				{
					"parameter_longname" : "p1[22]"
				}
,
				"obj-19::obj-2::obj-6::obj-18" : 				{
					"parameter_longname" : "p2[22]"
				}
,
				"obj-19::obj-2::obj-6::obj-19" : 				{
					"parameter_longname" : "p3[22]"
				}
,
				"obj-19::obj-2::obj-6::obj-3" : 				{
					"parameter_longname" : "p0[22]"
				}
,
				"obj-19::obj-2::obj-7::obj-16" : 				{
					"parameter_longname" : "on[21]"
				}
,
				"obj-19::obj-2::obj-7::obj-17" : 				{
					"parameter_longname" : "p1[21]"
				}
,
				"obj-19::obj-2::obj-7::obj-18" : 				{
					"parameter_longname" : "p2[21]"
				}
,
				"obj-19::obj-2::obj-7::obj-19" : 				{
					"parameter_longname" : "p3[21]"
				}
,
				"obj-19::obj-2::obj-7::obj-3" : 				{
					"parameter_longname" : "p0[21]"
				}
,
				"obj-19::obj-2::obj-8::obj-16" : 				{
					"parameter_longname" : "on[20]"
				}
,
				"obj-19::obj-2::obj-8::obj-17" : 				{
					"parameter_longname" : "p1[20]"
				}
,
				"obj-19::obj-2::obj-8::obj-18" : 				{
					"parameter_longname" : "p2[20]"
				}
,
				"obj-19::obj-2::obj-8::obj-19" : 				{
					"parameter_longname" : "p3[20]"
				}
,
				"obj-19::obj-2::obj-8::obj-3" : 				{
					"parameter_longname" : "p0[20]"
				}
,
				"obj-19::obj-2::obj-9::obj-16" : 				{
					"parameter_longname" : "on[31]"
				}
,
				"obj-19::obj-2::obj-9::obj-17" : 				{
					"parameter_longname" : "p1[31]"
				}
,
				"obj-19::obj-2::obj-9::obj-18" : 				{
					"parameter_longname" : "p2[31]"
				}
,
				"obj-19::obj-2::obj-9::obj-19" : 				{
					"parameter_longname" : "p3[31]"
				}
,
				"obj-19::obj-2::obj-9::obj-3" : 				{
					"parameter_longname" : "p0[31]"
				}
,
				"obj-30::obj-11" : 				{
					"parameter_longname" : "Pan[8]"
				}
,
				"obj-30::obj-22" : 				{
					"parameter_longname" : "Active[8]"
				}
,
				"obj-41::obj-22" : 				{
					"parameter_longname" : "Decay[2]"
				}
,
				"obj-41::obj-23" : 				{
					"parameter_longname" : "Damp[2]"
				}
,
				"obj-41::obj-24" : 				{
					"parameter_longname" : "Diffuse[2]"
				}
,
				"obj-41::obj-25" : 				{
					"parameter_longname" : "Mix[2]"
				}
,
				"obj-41::obj-8" : 				{
					"parameter_longname" : "Size[2]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "windows.js",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "push.hub.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mc.verb1.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "defsmooth~.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "drywet.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "testo.json",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "push.pattrstorage.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ezpreset.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "push.playpads.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dsynth.glass.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dsynth.glass.poly.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bplus.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "tomc~.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "step32.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "step16.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "trig1.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "function4.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "clkdiv.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mc.mix8.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mc.mix1.core.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "util1.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "fm1.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "fm1.poly.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "adsr.exp1.velo.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/Signals2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
