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
		"rect" : [ 38.0, 79.0, 933.0, 687.0 ],
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
		"globalpatchername" : "u038002132",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 158.0, 165.0, 29.5, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "float", "float" ],
					"patching_rect" : [ 218.0, 303.0, 117.0, 22.0 ],
					"text" : "seq32cc.save seq11",
					"varname" : "seq11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
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
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 168.0, 251.0, 46.0, 22.0 ],
									"text" : "pack i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 168.0, 207.0, 67.0, 22.0 ],
									"text" : "swap"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 168.0, 155.0, 71.0, 22.0 ],
									"text" : "unpack i i i i"
								}

							}
, 							{
								"box" : 								{
									"comment" : "Preset",
									"id" : "obj-3",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 216.0, 295.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Mod 1/2",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 168.0, 295.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Seq data (preset, mod1, mod2)",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 171.5, 114.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-4", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 218.0, 338.0, 49.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p adapt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 218.0, 379.0, 161.0, 22.0 ],
					"text" : "octa.knobs.mod.save 1 inst1",
					"varname" : "octa.knobs.mod.save"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
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
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 210.0, 270.0, 33.0, 22.0 ],
									"text" : ">= 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 223.0, 171.0, 71.0, 22.0 ],
									"text" : "unpack i i i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 223.0, 206.0, 29.5, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"comment" : "preset",
									"id" : "obj-3",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 277.0, 338.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "start/stop",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 212.0, 338.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 223.0, 130.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 458.5, 263.0, 49.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p adapt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "float", "float" ],
					"patching_rect" : [ 409.0, 223.0, 118.0, 22.0 ],
					"text" : "seq32cc.save seq52",
					"varname" : "seq52"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
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
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 168.0, 251.0, 46.0, 22.0 ],
									"text" : "pack i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 168.0, 207.0, 67.0, 22.0 ],
									"text" : "swap"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 168.0, 155.0, 71.0, 22.0 ],
									"text" : "unpack i i i i"
								}

							}
, 							{
								"box" : 								{
									"comment" : "Preset",
									"id" : "obj-3",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 216.0, 295.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Mod 1/2",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 168.0, 295.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Seq data (preset, mod1, mod2)",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 171.5, 114.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-4", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 442.0, 338.0, 49.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p adapt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 310.0, 558.0, 158.0, 22.0 ],
					"text" : "octa.scenes.all.save scenes",
					"varname" : "scenes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 442.0, 370.0, 161.0, 22.0 ],
					"text" : "octa.knobs.mod.save 5 inst5",
					"varname" : "inst5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "float", "float" ],
					"patching_rect" : [ 409.0, 303.0, 118.0, 22.0 ],
					"text" : "seq32cc.save seq51",
					"varname" : "seq51"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
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
						"rect" : [ 59.0, 104.0, 1187.0, 662.0 ],
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
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 904.0, 58.0, 61.0, 22.0 ],
									"text" : "pipe 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 904.0, 24.0, 70.0, 22.0 ],
									"text" : "loadmess 1"
								}

							}
, 							{
								"box" : 								{
									"autorestore" : "fxglobal.json",
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 904.0, 95.0, 153.0, 22.0 ],
									"saved_object_attributes" : 									{
										"client_rect" : [ 4, 44, 358, 172 ],
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"storage_rect" : [ 583, 69, 1034, 197 ]
									}
,
									"text" : "pattrstorage @savemode 2",
									"varname" : "fxglobal"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 986.0, 58.0, 63.0, 22.0 ],
									"text" : "writeagain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 777.0, 58.0, 99.0, 22.0 ],
									"text" : "ezpreset fxglobal"
								}

							}
, 							{
								"box" : 								{
									"bubblesize" : 16,
									"id" : "obj-22",
									"maxclass" : "preset",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"patching_rect" : [ 733.0, 95.0, 169.0, 172.0 ],
									"pattrstorage" : "fxglobal"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 904.0, 129.0, 56.0, 22.0 ],
									"text" : "autopattr",
									"varname" : "u760006387"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-9",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "octa.fx.global.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 112.0, 86.0, 599.0, 386.0 ],
									"varname" : "octa.fx.global",
									"viewvisibility" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-21", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 20.0, 24.0, 60.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p fxglobal",
					"varname" : "fxglobal"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 310.0, 599.0, 51.0, 22.0 ],
					"text" : "octa.out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 329.0, 58.0, 58.0, 22.0 ],
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
					"patching_rect" : [ 347.0, 84.0, 40.0, 22.0 ],
					"text" : "watch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 391.0, 84.0, 63.0, 22.0 ],
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
					"patching_rect" : [ 391.0, 58.0, 63.0, 22.0 ],
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
					"patching_rect" : [ 460.0, 84.0, 58.0, 22.0 ],
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
					"patching_rect" : [ 369.0, 116.0, 67.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "windows",
						"parameter_enable" : 0
					}
,
					"text" : "js windows"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
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
									"id" : "obj-63",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 212.0, 140.0, 49.0 ],
									"text" : "metro @quantize 0.0.20 @interval 0.0.20 @active 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 276.0, 73.0, 20.0 ],
									"text" : "MIDI Clock"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 129.5, 276.0, 29.5, 22.0 ],
									"text" : "248"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 196.5, 231.0, 55.0, 22.0 ],
									"text" : "zl slice 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.5, 185.0, 43.0, 22.0 ],
									"text" : "r otout"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 190.5, 276.0, 118.0, 22.0 ],
									"text" : "midiformat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 190.5, 309.0, 118.0, 22.0 ],
									"text" : "midiout \"iRig MIDI 2\""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 6 ],
									"source" : [ "obj-49", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 2 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 61.5, 412.0, 65.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p octa.hub"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
					"patching_rect" : [ 210.0, 116.0, 103.0, 22.0 ],
					"text" : "transport"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 147.0, 52.0, 29.5, 22.0 ],
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
					"patching_rect" : [ 95.0, 119.0, 50.0, 22.0 ],
					"text" : "710043"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 126.0, 84.0, 61.0, 22.0 ],
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
					"patching_rect" : [ 126.0, 24.0, 271.0, 22.0 ],
					"text" : "metro @quantize 0.0.5 @interval 0.0.5 @active 1"
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
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 2 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-16", 0 ]
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
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-2", 0 ]
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
					"destination" : [ "obj-15", 0 ],
					"order" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"order" : 2,
					"source" : [ "obj-24", 0 ]
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
					"destination" : [ "obj-24", 2 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
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
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-11::obj-9::obj-14" : [ "live.tab[1]", "live.tab", 0 ],
			"obj-11::obj-9::obj-17" : [ "live.tab[2]", "live.tab", 0 ],
			"obj-11::obj-9::obj-20" : [ "live.tab[24]", "live.tab", 0 ],
			"obj-11::obj-9::obj-23" : [ "live.tab[25]", "live.tab", 0 ],
			"obj-11::obj-9::obj-26" : [ "live.tab[23]", "live.tab", 0 ],
			"obj-11::obj-9::obj-29" : [ "live.tab[21]", "live.tab", 0 ],
			"obj-11::obj-9::obj-3" : [ "live.tab", "live.tab", 0 ],
			"obj-11::obj-9::obj-32" : [ "live.tab[26]", "live.tab", 0 ],
			"obj-11::obj-9::obj-35" : [ "live.tab[22]", "live.tab", 0 ],
			"obj-11::obj-9::obj-38" : [ "live.tab[9]", "live.tab", 0 ],
			"obj-11::obj-9::obj-41" : [ "live.tab[10]", "live.tab", 0 ],
			"obj-11::obj-9::obj-44" : [ "live.tab[11]", "live.tab", 0 ],
			"obj-11::obj-9::obj-47" : [ "live.tab[12]", "live.tab", 0 ],
			"obj-11::obj-9::obj-50" : [ "live.tab[13]", "live.tab", 0 ],
			"obj-11::obj-9::obj-53" : [ "live.tab[14]", "live.tab", 0 ],
			"obj-11::obj-9::obj-56" : [ "live.tab[15]", "live.tab", 0 ],
			"obj-12::obj-1::obj-14" : [ "Clock Div", "Clk Div", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-10::obj-16" : [ "on[70]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-10::obj-17" : [ "p1[70]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-10::obj-18" : [ "p2[70]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-10::obj-19" : [ "p3[70]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-10::obj-3" : [ "p0[70]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-11::obj-16" : [ "on[58]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-11::obj-17" : [ "p1[58]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-11::obj-18" : [ "p2[58]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-11::obj-19" : [ "p3[58]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-11::obj-3" : [ "p0[58]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-13::obj-16" : [ "on[69]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-13::obj-17" : [ "p1[69]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-13::obj-18" : [ "p2[69]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-13::obj-19" : [ "p3[69]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-13::obj-3" : [ "p0[69]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-14::obj-16" : [ "on[68]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-14::obj-17" : [ "p1[57]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-14::obj-18" : [ "p2[68]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-14::obj-19" : [ "p3[68]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-14::obj-3" : [ "p0[57]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-15::obj-16" : [ "on[57]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-15::obj-17" : [ "p1[68]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-15::obj-18" : [ "p2[57]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-15::obj-19" : [ "p3[57]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-15::obj-3" : [ "p0[68]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-16::obj-16" : [ "on[67]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-16::obj-17" : [ "p1[67]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-16::obj-18" : [ "p2[67]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-16::obj-19" : [ "p3[67]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-16::obj-3" : [ "p0[67]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-17::obj-16" : [ "on[56]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-17::obj-17" : [ "p1[56]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-17::obj-18" : [ "p2[66]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-17::obj-19" : [ "p3[56]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-17::obj-3" : [ "p0[56]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-1::obj-16" : [ "on[54]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-1::obj-17" : [ "p1[54]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-1::obj-18" : [ "p2[54]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-1::obj-19" : [ "p3[54]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-1::obj-3" : [ "p0[54]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-2::obj-16" : [ "on[61]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-2::obj-17" : [ "p1[61]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-2::obj-18" : [ "p2[61]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-2::obj-19" : [ "p3[61]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-2::obj-3" : [ "p0[61]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-3::obj-16" : [ "on[63]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-3::obj-17" : [ "p1[63]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-3::obj-18" : [ "p2[63]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-3::obj-19" : [ "p3[63]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-3::obj-3" : [ "p0[63]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-4::obj-16" : [ "on[64]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-4::obj-17" : [ "p1[64]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-4::obj-18" : [ "p2[64]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-4::obj-19" : [ "p3[64]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-4::obj-3" : [ "p0[64]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-5::obj-16" : [ "on[66]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-5::obj-17" : [ "p1[66]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-5::obj-18" : [ "p2[56]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-5::obj-19" : [ "p3[66]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-5::obj-3" : [ "p0[66]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-6::obj-16" : [ "on[65]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-6::obj-17" : [ "p1[62]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-6::obj-18" : [ "p2[65]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-6::obj-19" : [ "p3[65]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-6::obj-3" : [ "p0[65]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-7::obj-16" : [ "on[62]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-7::obj-17" : [ "p1[55]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-7::obj-18" : [ "p2[62]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-7::obj-19" : [ "p3[62]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-7::obj-3" : [ "p0[62]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-8::obj-16" : [ "on[55]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-8::obj-17" : [ "p1[65]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-8::obj-18" : [ "p2[55]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-8::obj-19" : [ "p3[55]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-8::obj-3" : [ "p0[55]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-9::obj-16" : [ "on[71]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-9::obj-17" : [ "p1[71]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-9::obj-18" : [ "p2[71]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-9::obj-19" : [ "p3[59]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-1::obj-9::obj-3" : [ "p0[59]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-10::obj-16" : [ "on[84]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-10::obj-17" : [ "p1[84]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-10::obj-18" : [ "p2[84]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-10::obj-19" : [ "p3[84]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-10::obj-3" : [ "p0[84]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-11::obj-16" : [ "on[83]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-11::obj-17" : [ "p1[83]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-11::obj-18" : [ "p2[83]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-11::obj-19" : [ "p3[83]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-11::obj-3" : [ "p0[83]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-13::obj-16" : [ "on[82]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-13::obj-17" : [ "p1[82]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-13::obj-18" : [ "p2[82]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-13::obj-19" : [ "p3[82]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-13::obj-3" : [ "p0[82]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-14::obj-16" : [ "on[81]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-14::obj-17" : [ "p1[81]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-14::obj-18" : [ "p2[81]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-14::obj-19" : [ "p3[81]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-14::obj-3" : [ "p0[81]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-15::obj-16" : [ "on[80]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-15::obj-17" : [ "p1[80]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-15::obj-18" : [ "p2[80]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-15::obj-19" : [ "p3[80]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-15::obj-3" : [ "p0[80]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-16::obj-16" : [ "on[79]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-16::obj-17" : [ "p1[79]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-16::obj-18" : [ "p2[79]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-16::obj-19" : [ "p3[79]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-16::obj-3" : [ "p0[79]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-17::obj-16" : [ "on[78]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-17::obj-17" : [ "p1[78]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-17::obj-18" : [ "p2[78]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-17::obj-19" : [ "p3[78]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-17::obj-3" : [ "p0[78]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-1::obj-16" : [ "on[59]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-1::obj-17" : [ "p1[59]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-1::obj-18" : [ "p2[59]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-1::obj-19" : [ "p3[71]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-1::obj-3" : [ "p0[71]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-2::obj-16" : [ "on[72]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-2::obj-17" : [ "p1[72]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-2::obj-18" : [ "p2[72]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-2::obj-19" : [ "p3[72]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-2::obj-3" : [ "p0[72]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-3::obj-16" : [ "on[73]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-3::obj-17" : [ "p1[60]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-3::obj-18" : [ "p2[60]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-3::obj-19" : [ "p3[60]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-3::obj-3" : [ "p0[60]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-4::obj-16" : [ "on[60]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-4::obj-17" : [ "p1[73]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-4::obj-18" : [ "p2[73]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-4::obj-19" : [ "p3[73]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-4::obj-3" : [ "p0[73]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-5::obj-16" : [ "on[77]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-5::obj-17" : [ "p1[77]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-5::obj-18" : [ "p2[77]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-5::obj-19" : [ "p3[77]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-5::obj-3" : [ "p0[77]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-6::obj-16" : [ "on[76]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-6::obj-17" : [ "p1[76]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-6::obj-18" : [ "p2[76]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-6::obj-19" : [ "p3[76]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-6::obj-3" : [ "p0[76]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-7::obj-16" : [ "on[75]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-7::obj-17" : [ "p1[75]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-7::obj-18" : [ "p2[75]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-7::obj-19" : [ "p3[75]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-7::obj-3" : [ "p0[75]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-8::obj-16" : [ "on[74]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-8::obj-17" : [ "p1[74]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-8::obj-18" : [ "p2[74]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-8::obj-19" : [ "p3[74]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-8::obj-3" : [ "p0[74]", "p0", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-9::obj-16" : [ "on[85]", "on", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-9::obj-17" : [ "p1[85]", "p1", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-9::obj-18" : [ "p2[85]", "p2", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-9::obj-19" : [ "p3[85]", "p3", 0 ],
			"obj-12::obj-1::obj-1::obj-2::obj-9::obj-3" : [ "p0[85]", "p0", 0 ],
			"obj-12::obj-1::obj-2" : [ "Loop", "Loop", 0 ],
			"obj-12::obj-1::obj-26::obj-29" : [ "start[1]", "Start", 0 ],
			"obj-12::obj-1::obj-26::obj-30" : [ "end[1]", "End", 0 ],
			"obj-12::obj-1::obj-26::obj-31" : [ "curve3[1]", "Curve 3", 0 ],
			"obj-12::obj-1::obj-26::obj-34" : [ "X1[1]", "X1", 0 ],
			"obj-12::obj-1::obj-26::obj-35" : [ "y1[1]", "Y1", 0 ],
			"obj-12::obj-1::obj-26::obj-36" : [ "curve1[1]", "Curve 1", 0 ],
			"obj-12::obj-1::obj-26::obj-38" : [ "curve2[1]", "Curve 2", 0 ],
			"obj-12::obj-1::obj-26::obj-39" : [ "y2[1]", "Y2", 0 ],
			"obj-12::obj-1::obj-26::obj-40" : [ "x2[1]", "X2", 0 ],
			"obj-12::obj-1::obj-28::obj-29" : [ "start[2]", "Start", 0 ],
			"obj-12::obj-1::obj-28::obj-30" : [ "end[2]", "End", 0 ],
			"obj-12::obj-1::obj-28::obj-31" : [ "curve3[2]", "Curve 3", 0 ],
			"obj-12::obj-1::obj-28::obj-34" : [ "X1[2]", "X1", 0 ],
			"obj-12::obj-1::obj-28::obj-35" : [ "y1[2]", "Y1", 0 ],
			"obj-12::obj-1::obj-28::obj-36" : [ "curve1[2]", "Curve 1", 0 ],
			"obj-12::obj-1::obj-28::obj-38" : [ "curve2[2]", "Curve 2", 0 ],
			"obj-12::obj-1::obj-28::obj-39" : [ "y2[2]", "Y2", 0 ],
			"obj-12::obj-1::obj-28::obj-40" : [ "x2[2]", "X2", 0 ],
			"obj-13::obj-1::obj-1::obj-1" : [ "live.dial[135]", "PTCH", 0 ],
			"obj-13::obj-1::obj-1::obj-10" : [ "live.dial[147]", "REL", 0 ],
			"obj-13::obj-1::obj-1::obj-11" : [ "live.dial[138]", "HOLD", 0 ],
			"obj-13::obj-1::obj-1::obj-12" : [ "live.dial[130]", "ATK", 0 ],
			"obj-13::obj-1::obj-1::obj-13" : [ "live.dial[145]", "DEP3", 0 ],
			"obj-13::obj-1::obj-1::obj-14" : [ "live.dial[141]", "DEP2", 0 ],
			"obj-13::obj-1::obj-1::obj-15" : [ "live.dial[134]", "DEP1", 0 ],
			"obj-13::obj-1::obj-1::obj-16" : [ "live.dial[154]", "SPD3", 0 ],
			"obj-13::obj-1::obj-1::obj-17" : [ "live.dial[136]", "SPD2", 0 ],
			"obj-13::obj-1::obj-1::obj-18" : [ "live.dial[129]", "SPD1", 0 ],
			"obj-13::obj-1::obj-1::obj-2" : [ "live.dial[142]", "STRT", 0 ],
			"obj-13::obj-1::obj-1::obj-3" : [ "live.dial[152]", "LEN", 0 ],
			"obj-13::obj-1::obj-1::obj-31" : [ "live.dial[150]", "MIX", 0 ],
			"obj-13::obj-1::obj-1::obj-32" : [ "live.dial[140]", "WID", 0 ],
			"obj-13::obj-1::obj-1::obj-33" : [ "live.dial[144]", "FB", 0 ],
			"obj-13::obj-1::obj-1::obj-34" : [ "live.dial[137]", "SPD", 0 ],
			"obj-13::obj-1::obj-1::obj-35" : [ "live.dial[148]", "DEP", 0 ],
			"obj-13::obj-1::obj-1::obj-36" : [ "live.dial[128]", "DEL", 0 ],
			"obj-13::obj-1::obj-1::obj-38" : [ "live.dial[126]", "SEND", 0 ],
			"obj-13::obj-1::obj-1::obj-39" : [ "live.dial[133]", "WDTH", 0 ],
			"obj-13::obj-1::obj-1::obj-4" : [ "live.dial[132]", "RATE", 0 ],
			"obj-13::obj-1::obj-1::obj-40" : [ "live.dial[153]", "BASE", 0 ],
			"obj-13::obj-1::obj-1::obj-41" : [ "live.dial[131]", "VOL", 0 ],
			"obj-13::obj-1::obj-1::obj-42" : [ "live.dial[127]", "FB", 0 ],
			"obj-13::obj-1::obj-1::obj-43" : [ "live.dial[143]", "TIME", 0 ],
			"obj-13::obj-1::obj-1::obj-5" : [ "live.dial[139]", "RTRG", 0 ],
			"obj-13::obj-1::obj-1::obj-6" : [ "live.dial[149]", "RTIM", 0 ],
			"obj-13::obj-1::obj-1::obj-8" : [ "live.dial[146]", "BAL", 0 ],
			"obj-13::obj-1::obj-1::obj-9" : [ "live.dial[151]", "VOL", 0 ],
			"obj-13::obj-1::obj-2::obj-1" : [ "live.dial[157]", "PTCH", 0 ],
			"obj-13::obj-1::obj-2::obj-10" : [ "live.dial[171]", "REL", 0 ],
			"obj-13::obj-1::obj-2::obj-11" : [ "live.dial[161]", "HOLD", 0 ],
			"obj-13::obj-1::obj-2::obj-12" : [ "live.dial[181]", "ATK", 0 ],
			"obj-13::obj-1::obj-2::obj-13" : [ "live.dial[168]", "DEP3", 0 ],
			"obj-13::obj-1::obj-2::obj-14" : [ "live.dial[159]", "DEP2", 0 ],
			"obj-13::obj-1::obj-2::obj-15" : [ "live.dial[179]", "DEP1", 0 ],
			"obj-13::obj-1::obj-2::obj-16" : [ "live.dial[170]", "SPD3", 0 ],
			"obj-13::obj-1::obj-2::obj-17" : [ "live.dial[178]", "SPD2", 0 ],
			"obj-13::obj-1::obj-2::obj-18" : [ "live.dial[169]", "SPD1", 0 ],
			"obj-13::obj-1::obj-2::obj-2" : [ "live.dial[166]", "STRT", 0 ],
			"obj-13::obj-1::obj-2::obj-3" : [ "live.dial[175]", "LEN", 0 ],
			"obj-13::obj-1::obj-2::obj-31" : [ "live.dial[162]", "DEC", 0 ],
			"obj-13::obj-1::obj-2::obj-32" : [ "live.dial[182]", "ATK", 0 ],
			"obj-13::obj-1::obj-2::obj-33" : [ "live.dial[174]", "DPTH", 0 ],
			"obj-13::obj-1::obj-2::obj-34" : [ "live.dial[165]", "Q", 0 ],
			"obj-13::obj-1::obj-2::obj-35" : [ "live.dial[156]", "WDTH", 0 ],
			"obj-13::obj-1::obj-2::obj-36" : [ "live.dial[177]", "BASE", 0 ],
			"obj-13::obj-1::obj-2::obj-38" : [ "live.dial[173]", "Q2", 0 ],
			"obj-13::obj-1::obj-2::obj-39" : [ "live.dial[164]", "GN2", 0 ],
			"obj-13::obj-1::obj-2::obj-4" : [ "live.dial[183]", "RATE", 0 ],
			"obj-13::obj-1::obj-2::obj-40" : [ "live.dial[155]", "FRQ2", 0 ],
			"obj-13::obj-1::obj-2::obj-41" : [ "live.dial[176]", "Q1", 0 ],
			"obj-13::obj-1::obj-2::obj-42" : [ "live.dial[167]", "GN1", 0 ],
			"obj-13::obj-1::obj-2::obj-43" : [ "live.dial[158]", "FRQ1", 0 ],
			"obj-13::obj-1::obj-2::obj-5" : [ "live.dial[163]", "RTRG", 0 ],
			"obj-13::obj-1::obj-2::obj-6" : [ "live.dial[172]", "RTIM", 0 ],
			"obj-13::obj-1::obj-2::obj-8" : [ "live.dial[160]", "BAL", 0 ],
			"obj-13::obj-1::obj-2::obj-9" : [ "live.dial[180]", "VOL", 0 ],
			"obj-13::obj-1::obj-3::obj-1" : [ "live.dial[228]", "PTCH", 0 ],
			"obj-13::obj-1::obj-3::obj-10" : [ "live.dial[217]", "REL", 0 ],
			"obj-13::obj-1::obj-3::obj-11" : [ "live.dial[237]", "HOLD", 0 ],
			"obj-13::obj-1::obj-3::obj-12" : [ "live.dial[226]", "ATK", 0 ],
			"obj-13::obj-1::obj-3::obj-13" : [ "live.dial[236]", "DEP3", 0 ],
			"obj-13::obj-1::obj-3::obj-14" : [ "live.dial[225]", "DEP2", 0 ],
			"obj-13::obj-1::obj-3::obj-15" : [ "live.dial[219]", "DEP1", 0 ],
			"obj-13::obj-1::obj-3::obj-16" : [ "live.dial[240]", "SPD3", 0 ],
			"obj-13::obj-1::obj-3::obj-17" : [ "live.dial[230]", "SPD2", 0 ],
			"obj-13::obj-1::obj-3::obj-18" : [ "live.dial[214]", "SPD1", 0 ],
			"obj-13::obj-1::obj-3::obj-2" : [ "live.dial[239]", "STRT", 0 ],
			"obj-13::obj-1::obj-3::obj-3" : [ "live.dial[221]", "LEN", 0 ],
			"obj-13::obj-1::obj-3::obj-31" : [ "live.dial[233]", "DEC", 0 ],
			"obj-13::obj-1::obj-3::obj-32" : [ "live.dial[222]", "ATK", 0 ],
			"obj-13::obj-1::obj-3::obj-33" : [ "live.dial[213]", "DPTH", 0 ],
			"obj-13::obj-1::obj-3::obj-34" : [ "live.dial[234]", "Q", 0 ],
			"obj-13::obj-1::obj-3::obj-35" : [ "live.dial[223]", "WDTH", 0 ],
			"obj-13::obj-1::obj-3::obj-36" : [ "live.dial[216]", "BASE", 0 ],
			"obj-13::obj-1::obj-3::obj-38" : [ "live.dial[229]", "DEC", 0 ],
			"obj-13::obj-1::obj-3::obj-39" : [ "live.dial[220]", "ATK", 0 ],
			"obj-13::obj-1::obj-3::obj-4" : [ "live.dial[227]", "RATE", 0 ],
			"obj-13::obj-1::obj-3::obj-40" : [ "live.dial[241]", "DPTH", 0 ],
			"obj-13::obj-1::obj-3::obj-41" : [ "live.dial[231]", "Q", 0 ],
			"obj-13::obj-1::obj-3::obj-42" : [ "live.dial[215]", "WDTH", 0 ],
			"obj-13::obj-1::obj-3::obj-43" : [ "live.dial[232]", "BASE", 0 ],
			"obj-13::obj-1::obj-3::obj-5" : [ "live.dial[238]", "RTRG", 0 ],
			"obj-13::obj-1::obj-3::obj-6" : [ "live.dial[218]", "RTIM", 0 ],
			"obj-13::obj-1::obj-3::obj-8" : [ "live.dial[235]", "BAL", 0 ],
			"obj-13::obj-1::obj-3::obj-9" : [ "live.dial[224]", "VOL", 0 ],
			"obj-13::obj-1::obj-4::obj-1" : [ "live.dial[197]", "PTCH", 0 ],
			"obj-13::obj-1::obj-4::obj-10" : [ "live.dial[212]", "REL", 0 ],
			"obj-13::obj-1::obj-4::obj-11" : [ "live.dial[203]", "HOLD", 0 ],
			"obj-13::obj-1::obj-4::obj-12" : [ "live.dial[194]", "ATK", 0 ],
			"obj-13::obj-1::obj-4::obj-13" : [ "live.dial[207]", "DEP3", 0 ],
			"obj-13::obj-1::obj-4::obj-14" : [ "live.dial[198]", "DEP2", 0 ],
			"obj-13::obj-1::obj-4::obj-15" : [ "live.dial[193]", "DEP1", 0 ],
			"obj-13::obj-1::obj-4::obj-16" : [ "live.dial[188]", "SPD3", 0 ],
			"obj-13::obj-1::obj-4::obj-17" : [ "live.dial[208]", "SPD2", 0 ],
			"obj-13::obj-1::obj-4::obj-18" : [ "live.dial[199]", "SPD1", 0 ],
			"obj-13::obj-1::obj-4::obj-2" : [ "live.dial[206]", "STRT", 0 ],
			"obj-13::obj-1::obj-4::obj-3" : [ "live.dial[186]", "LEN", 0 ],
			"obj-13::obj-1::obj-4::obj-31" : [ "live.dial[202]", "DEC", 0 ],
			"obj-13::obj-1::obj-4::obj-32" : [ "live.dial[192]", "ATK", 0 ],
			"obj-13::obj-1::obj-4::obj-33" : [ "live.dial[184]", "DPTH", 0 ],
			"obj-13::obj-1::obj-4::obj-34" : [ "live.dial[204]", "Q", 0 ],
			"obj-13::obj-1::obj-4::obj-35" : [ "live.dial[195]", "WDTH", 0 ],
			"obj-13::obj-1::obj-4::obj-36" : [ "live.dial[187]", "BASE", 0 ],
			"obj-13::obj-1::obj-4::obj-38" : [ "live.dial[191]", "DEC", 0 ],
			"obj-13::obj-1::obj-4::obj-39" : [ "live.dial[209]", "ATK", 0 ],
			"obj-13::obj-1::obj-4::obj-4" : [ "live.dial[196]", "RATE", 0 ],
			"obj-13::obj-1::obj-4::obj-40" : [ "live.dial[200]", "DPTH", 0 ],
			"obj-13::obj-1::obj-4::obj-41" : [ "live.dial[190]", "Q", 0 ],
			"obj-13::obj-1::obj-4::obj-42" : [ "live.dial[211]", "WDTH", 0 ],
			"obj-13::obj-1::obj-4::obj-43" : [ "live.dial[201]", "BASE", 0 ],
			"obj-13::obj-1::obj-4::obj-5" : [ "live.dial[205]", "RTRG", 0 ],
			"obj-13::obj-1::obj-4::obj-6" : [ "live.dial[185]", "RTIM", 0 ],
			"obj-13::obj-1::obj-4::obj-8" : [ "live.dial[189]", "BAL", 0 ],
			"obj-13::obj-1::obj-4::obj-9" : [ "live.dial[210]", "VOL", 0 ],
			"obj-13::obj-1::obj-5::obj-1" : [ "live.dial[343]", "PTCH", 0 ],
			"obj-13::obj-1::obj-5::obj-10" : [ "live.dial[357]", "REL", 0 ],
			"obj-13::obj-1::obj-5::obj-11" : [ "live.dial[336]", "HOLD", 0 ],
			"obj-13::obj-1::obj-5::obj-12" : [ "live.dial[333]", "ATK", 0 ],
			"obj-13::obj-1::obj-5::obj-13" : [ "live.dial[339]", "DEP3", 0 ],
			"obj-13::obj-1::obj-5::obj-14" : [ "live.dial[337]", "DEP2", 0 ],
			"obj-13::obj-1::obj-5::obj-15" : [ "live.dial[351]", "DEP1", 0 ],
			"obj-13::obj-1::obj-5::obj-16" : [ "live.dial[332]", "SPD3", 0 ],
			"obj-13::obj-1::obj-5::obj-17" : [ "live.dial[356]", "SPD2", 0 ],
			"obj-13::obj-1::obj-5::obj-18" : [ "live.dial[352]", "SPD1", 0 ],
			"obj-13::obj-1::obj-5::obj-2" : [ "live.dial[348]", "STRT", 0 ],
			"obj-13::obj-1::obj-5::obj-3" : [ "live.dial[353]", "LEN", 0 ],
			"obj-13::obj-1::obj-5::obj-31" : [ "live.dial[335]", "DEC", 0 ],
			"obj-13::obj-1::obj-5::obj-32" : [ "live.dial[350]", "ATK", 0 ],
			"obj-13::obj-1::obj-5::obj-33" : [ "live.dial[346]", "DPTH", 0 ],
			"obj-13::obj-1::obj-5::obj-34" : [ "live.dial[341]", "Q", 0 ],
			"obj-13::obj-1::obj-5::obj-35" : [ "live.dial[331]", "WDTH", 0 ],
			"obj-13::obj-1::obj-5::obj-36" : [ "live.dial[354]", "BASE", 0 ],
			"obj-13::obj-1::obj-5::obj-38" : [ "live.dial[329]", "MIX", 0 ],
			"obj-13::obj-1::obj-5::obj-39" : [ "live.dial[345]", "LP", 0 ],
			"obj-13::obj-1::obj-5::obj-4" : [ "live.dial[344]", "RATE", 0 ],
			"obj-13::obj-1::obj-5::obj-40" : [ "live.dial[340]", "HP", 0 ],
			"obj-13::obj-1::obj-5::obj-41" : [ "live.dial[338]", "SHVF", 0 ],
			"obj-13::obj-1::obj-5::obj-42" : [ "live.dial[334]", "SHVG", 0 ],
			"obj-13::obj-1::obj-5::obj-43" : [ "live.dial[330]", "TIME", 0 ],
			"obj-13::obj-1::obj-5::obj-5" : [ "live.dial[349]", "RTRG", 0 ],
			"obj-13::obj-1::obj-5::obj-6" : [ "live.dial[355]", "RTIM", 0 ],
			"obj-13::obj-1::obj-5::obj-8" : [ "live.dial[347]", "BAL", 0 ],
			"obj-13::obj-1::obj-5::obj-9" : [ "live.dial[342]", "VOL", 0 ],
			"obj-13::obj-1::obj-6::obj-1" : [ "live.dial[308]", "PTCH", 0 ],
			"obj-13::obj-1::obj-6::obj-10" : [ "live.dial[317]", "REL", 0 ],
			"obj-13::obj-1::obj-6::obj-11" : [ "live.dial[306]", "HOLD", 0 ],
			"obj-13::obj-1::obj-6::obj-12" : [ "live.dial[315]", "ATK", 0 ],
			"obj-13::obj-1::obj-6::obj-13" : [ "live.dial[305]", "DEP3", 0 ],
			"obj-13::obj-1::obj-6::obj-14" : [ "live.dial[326]", "DEP2", 0 ],
			"obj-13::obj-1::obj-6::obj-15" : [ "live.dial[320]", "DEP1", 0 ],
			"obj-13::obj-1::obj-6::obj-16" : [ "live.dial[311]", "SPD3", 0 ],
			"obj-13::obj-1::obj-6::obj-17" : [ "live.dial[328]", "SPD2", 0 ],
			"obj-13::obj-1::obj-6::obj-18" : [ "live.dial[323]", "SPD1", 0 ],
			"obj-13::obj-1::obj-6::obj-2" : [ "live.dial[327]", "STRT", 0 ],
			"obj-13::obj-1::obj-6::obj-3" : [ "live.dial[307]", "LEN", 0 ],
			"obj-13::obj-1::obj-6::obj-31" : [ "live.dial[310]", "DEC", 0 ],
			"obj-13::obj-1::obj-6::obj-32" : [ "live.dial[322]", "ATK", 0 ],
			"obj-13::obj-1::obj-6::obj-33" : [ "live.dial[314]", "DPTH", 0 ],
			"obj-13::obj-1::obj-6::obj-34" : [ "live.dial[303]", "Q", 0 ],
			"obj-13::obj-1::obj-6::obj-35" : [ "live.dial[325]", "WDTH", 0 ],
			"obj-13::obj-1::obj-6::obj-36" : [ "live.dial[316]", "BASE", 0 ],
			"obj-13::obj-1::obj-6::obj-38" : [ "live.dial[300]", "DEC", 0 ],
			"obj-13::obj-1::obj-6::obj-39" : [ "live.dial[321]", "ATK", 0 ],
			"obj-13::obj-1::obj-6::obj-4" : [ "live.dial[319]", "RATE", 0 ],
			"obj-13::obj-1::obj-6::obj-40" : [ "live.dial[312]", "DPTH", 0 ],
			"obj-13::obj-1::obj-6::obj-41" : [ "live.dial[301]", "Q", 0 ],
			"obj-13::obj-1::obj-6::obj-42" : [ "live.dial[309]", "WDTH", 0 ],
			"obj-13::obj-1::obj-6::obj-43" : [ "live.dial[324]", "BASE", 0 ],
			"obj-13::obj-1::obj-6::obj-5" : [ "live.dial[318]", "RTRG", 0 ],
			"obj-13::obj-1::obj-6::obj-6" : [ "live.dial[304]", "RTIM", 0 ],
			"obj-13::obj-1::obj-6::obj-8" : [ "live.dial[313]", "BAL", 0 ],
			"obj-13::obj-1::obj-6::obj-9" : [ "live.dial[302]", "VOL", 0 ],
			"obj-13::obj-1::obj-7::obj-1" : [ "live.dial[272]", "PTCH", 0 ],
			"obj-13::obj-1::obj-7::obj-10" : [ "live.dial[279]", "REL", 0 ],
			"obj-13::obj-1::obj-7::obj-11" : [ "live.dial[299]", "HOLD", 0 ],
			"obj-13::obj-1::obj-7::obj-12" : [ "live.dial[291]", "ATK", 0 ],
			"obj-13::obj-1::obj-7::obj-13" : [ "live.dial[284]", "DEP3", 0 ],
			"obj-13::obj-1::obj-7::obj-14" : [ "live.dial[287]", "DEP2", 0 ],
			"obj-13::obj-1::obj-7::obj-15" : [ "live.dial[274]", "DEP1", 0 ],
			"obj-13::obj-1::obj-7::obj-16" : [ "live.dial[296]", "SPD3", 0 ],
			"obj-13::obj-1::obj-7::obj-17" : [ "live.dial[285]", "SPD2", 0 ],
			"obj-13::obj-1::obj-7::obj-18" : [ "live.dial[277]", "SPD1", 0 ],
			"obj-13::obj-1::obj-7::obj-2" : [ "live.dial[292]", "STRT", 0 ],
			"obj-13::obj-1::obj-7::obj-3" : [ "live.dial[281]", "LEN", 0 ],
			"obj-13::obj-1::obj-7::obj-31" : [ "live.dial[293]", "DEC", 0 ],
			"obj-13::obj-1::obj-7::obj-32" : [ "live.dial[298]", "ATK", 0 ],
			"obj-13::obj-1::obj-7::obj-33" : [ "live.dial[283]", "DPTH", 0 ],
			"obj-13::obj-1::obj-7::obj-34" : [ "live.dial[290]", "Q", 0 ],
			"obj-13::obj-1::obj-7::obj-35" : [ "live.dial[273]", "WDTH", 0 ],
			"obj-13::obj-1::obj-7::obj-36" : [ "live.dial[295]", "BASE", 0 ],
			"obj-13::obj-1::obj-7::obj-38" : [ "live.dial[286]", "DEC", 0 ],
			"obj-13::obj-1::obj-7::obj-39" : [ "live.dial[278]", "ATK", 0 ],
			"obj-13::obj-1::obj-7::obj-4" : [ "live.dial[294]", "RATE", 0 ],
			"obj-13::obj-1::obj-7::obj-40" : [ "live.dial[289]", "DPTH", 0 ],
			"obj-13::obj-1::obj-7::obj-41" : [ "live.dial[275]", "Q", 0 ],
			"obj-13::obj-1::obj-7::obj-42" : [ "live.dial[282]", "WDTH", 0 ],
			"obj-13::obj-1::obj-7::obj-43" : [ "live.dial[276]", "BASE", 0 ],
			"obj-13::obj-1::obj-7::obj-5" : [ "live.dial[271]", "RTRG", 0 ],
			"obj-13::obj-1::obj-7::obj-6" : [ "live.dial[280]", "RTIM", 0 ],
			"obj-13::obj-1::obj-7::obj-8" : [ "live.dial[297]", "BAL", 0 ],
			"obj-13::obj-1::obj-7::obj-9" : [ "live.dial[288]", "VOL", 0 ],
			"obj-13::obj-1::obj-8::obj-1" : [ "live.dial[270]", "PTCH", 0 ],
			"obj-13::obj-1::obj-8::obj-10" : [ "live.dial[243]", "REL", 0 ],
			"obj-13::obj-1::obj-8::obj-11" : [ "live.dial[263]", "HOLD", 0 ],
			"obj-13::obj-1::obj-8::obj-12" : [ "live.dial[269]", "ATK", 0 ],
			"obj-13::obj-1::obj-8::obj-13" : [ "live.dial[249]", "DEP3", 0 ],
			"obj-13::obj-1::obj-8::obj-14" : [ "live.dial[268]", "DEP2", 0 ],
			"obj-13::obj-1::obj-8::obj-15" : [ "live.dial[259]", "DEP1", 0 ],
			"obj-13::obj-1::obj-8::obj-16" : [ "live.dial[251]", "SPD3", 0 ],
			"obj-13::obj-1::obj-8::obj-17" : [ "live.dial[262]", "SPD2", 0 ],
			"obj-13::obj-1::obj-8::obj-18" : [ "live.dial[246]", "SPD1", 0 ],
			"obj-13::obj-1::obj-8::obj-2" : [ "live.dial[250]", "STRT", 0 ],
			"obj-13::obj-1::obj-8::obj-3" : [ "live.dial[257]", "LEN", 0 ],
			"obj-13::obj-1::obj-8::obj-31" : [ "live.dial[261]", "DEC", 0 ],
			"obj-13::obj-1::obj-8::obj-32" : [ "live.dial[245]", "ATK", 0 ],
			"obj-13::obj-1::obj-8::obj-33" : [ "live.dial[255]", "DPTH", 0 ],
			"obj-13::obj-1::obj-8::obj-34" : [ "live.dial[242]", "Q", 0 ],
			"obj-13::obj-1::obj-8::obj-35" : [ "live.dial[265]", "WDTH", 0 ],
			"obj-13::obj-1::obj-8::obj-36" : [ "live.dial[256]", "BASE", 0 ],
			"obj-13::obj-1::obj-8::obj-38" : [ "live.dial[244]", "DEC", 0 ],
			"obj-13::obj-1::obj-8::obj-39" : [ "live.dial[264]", "ATK", 0 ],
			"obj-13::obj-1::obj-8::obj-4" : [ "live.dial[266]", "RATE", 0 ],
			"obj-13::obj-1::obj-8::obj-40" : [ "live.dial[254]", "DPTH", 0 ],
			"obj-13::obj-1::obj-8::obj-41" : [ "live.dial[248]", "Q", 0 ],
			"obj-13::obj-1::obj-8::obj-42" : [ "live.dial[267]", "WDTH", 0 ],
			"obj-13::obj-1::obj-8::obj-43" : [ "live.dial[258]", "BASE", 0 ],
			"obj-13::obj-1::obj-8::obj-5" : [ "live.dial[247]", "RTRG", 0 ],
			"obj-13::obj-1::obj-8::obj-6" : [ "live.dial[253]", "RTIM", 0 ],
			"obj-13::obj-1::obj-8::obj-8" : [ "live.dial[260]", "BAL", 0 ],
			"obj-13::obj-1::obj-8::obj-9" : [ "live.dial[252]", "VOL", 0 ],
			"obj-15::obj-1::obj-14" : [ "Clock Div[1]", "Clk Div", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-10::obj-16" : [ "on[100]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-10::obj-17" : [ "p1[100]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-10::obj-18" : [ "p2[100]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-10::obj-19" : [ "p3[100]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-10::obj-3" : [ "p0[100]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-11::obj-16" : [ "on[99]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-11::obj-17" : [ "p1[99]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-11::obj-18" : [ "p2[99]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-11::obj-19" : [ "p3[99]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-11::obj-3" : [ "p0[99]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-13::obj-16" : [ "on[98]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-13::obj-17" : [ "p1[98]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-13::obj-18" : [ "p2[98]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-13::obj-19" : [ "p3[98]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-13::obj-3" : [ "p0[98]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-14::obj-16" : [ "on[97]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-14::obj-17" : [ "p1[97]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-14::obj-18" : [ "p2[97]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-14::obj-19" : [ "p3[97]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-14::obj-3" : [ "p0[97]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-15::obj-16" : [ "on[96]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-15::obj-17" : [ "p1[96]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-15::obj-18" : [ "p2[96]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-15::obj-19" : [ "p3[96]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-15::obj-3" : [ "p0[96]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-16::obj-16" : [ "on[95]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-16::obj-17" : [ "p1[95]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-16::obj-18" : [ "p2[95]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-16::obj-19" : [ "p3[95]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-16::obj-3" : [ "p0[95]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-17::obj-16" : [ "on[94]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-17::obj-17" : [ "p1[94]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-17::obj-18" : [ "p2[94]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-17::obj-19" : [ "p3[94]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-17::obj-3" : [ "p0[94]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-1::obj-16" : [ "on[86]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-1::obj-17" : [ "p1[86]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-1::obj-18" : [ "p2[86]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-1::obj-19" : [ "p3[86]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-1::obj-3" : [ "p0[86]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-2::obj-16" : [ "on[87]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-2::obj-17" : [ "p1[87]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-2::obj-18" : [ "p2[87]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-2::obj-19" : [ "p3[87]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-2::obj-3" : [ "p0[87]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-3::obj-16" : [ "on[88]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-3::obj-17" : [ "p1[88]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-3::obj-18" : [ "p2[88]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-3::obj-19" : [ "p3[88]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-3::obj-3" : [ "p0[88]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-4::obj-16" : [ "on[89]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-4::obj-17" : [ "p1[89]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-4::obj-18" : [ "p2[89]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-4::obj-19" : [ "p3[89]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-4::obj-3" : [ "p0[89]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-5::obj-16" : [ "on[93]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-5::obj-17" : [ "p1[93]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-5::obj-18" : [ "p2[93]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-5::obj-19" : [ "p3[93]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-5::obj-3" : [ "p0[93]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-6::obj-16" : [ "on[92]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-6::obj-17" : [ "p1[92]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-6::obj-18" : [ "p2[92]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-6::obj-19" : [ "p3[92]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-6::obj-3" : [ "p0[92]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-7::obj-16" : [ "on[91]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-7::obj-17" : [ "p1[91]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-7::obj-18" : [ "p2[91]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-7::obj-19" : [ "p3[91]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-7::obj-3" : [ "p0[91]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-8::obj-16" : [ "on[90]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-8::obj-17" : [ "p1[90]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-8::obj-18" : [ "p2[90]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-8::obj-19" : [ "p3[90]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-8::obj-3" : [ "p0[90]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-9::obj-16" : [ "on[101]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-9::obj-17" : [ "p1[101]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-9::obj-18" : [ "p2[101]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-9::obj-19" : [ "p3[101]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-1::obj-9::obj-3" : [ "p0[101]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-10::obj-16" : [ "on[116]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-10::obj-17" : [ "p1[116]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-10::obj-18" : [ "p2[116]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-10::obj-19" : [ "p3[116]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-10::obj-3" : [ "p0[116]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-11::obj-16" : [ "on[115]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-11::obj-17" : [ "p1[115]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-11::obj-18" : [ "p2[115]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-11::obj-19" : [ "p3[115]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-11::obj-3" : [ "p0[115]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-13::obj-16" : [ "on[114]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-13::obj-17" : [ "p1[114]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-13::obj-18" : [ "p2[114]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-13::obj-19" : [ "p3[114]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-13::obj-3" : [ "p0[114]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-14::obj-16" : [ "on[113]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-14::obj-17" : [ "p1[113]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-14::obj-18" : [ "p2[113]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-14::obj-19" : [ "p3[113]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-14::obj-3" : [ "p0[113]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-15::obj-16" : [ "on[112]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-15::obj-17" : [ "p1[112]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-15::obj-18" : [ "p2[112]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-15::obj-19" : [ "p3[112]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-15::obj-3" : [ "p0[112]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-16::obj-16" : [ "on[111]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-16::obj-17" : [ "p1[111]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-16::obj-18" : [ "p2[111]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-16::obj-19" : [ "p3[111]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-16::obj-3" : [ "p0[111]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-17::obj-16" : [ "on[110]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-17::obj-17" : [ "p1[110]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-17::obj-18" : [ "p2[110]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-17::obj-19" : [ "p3[110]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-17::obj-3" : [ "p0[110]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-1::obj-16" : [ "on[102]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-1::obj-17" : [ "p1[102]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-1::obj-18" : [ "p2[102]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-1::obj-19" : [ "p3[102]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-1::obj-3" : [ "p0[102]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-2::obj-16" : [ "on[103]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-2::obj-17" : [ "p1[103]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-2::obj-18" : [ "p2[103]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-2::obj-19" : [ "p3[103]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-2::obj-3" : [ "p0[103]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-3::obj-16" : [ "on[104]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-3::obj-17" : [ "p1[104]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-3::obj-18" : [ "p2[104]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-3::obj-19" : [ "p3[104]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-3::obj-3" : [ "p0[104]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-4::obj-16" : [ "on[105]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-4::obj-17" : [ "p1[105]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-4::obj-18" : [ "p2[105]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-4::obj-19" : [ "p3[105]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-4::obj-3" : [ "p0[105]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-5::obj-16" : [ "on[109]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-5::obj-17" : [ "p1[109]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-5::obj-18" : [ "p2[109]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-5::obj-19" : [ "p3[109]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-5::obj-3" : [ "p0[109]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-6::obj-16" : [ "on[108]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-6::obj-17" : [ "p1[108]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-6::obj-18" : [ "p2[108]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-6::obj-19" : [ "p3[108]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-6::obj-3" : [ "p0[108]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-7::obj-16" : [ "on[107]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-7::obj-17" : [ "p1[107]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-7::obj-18" : [ "p2[107]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-7::obj-19" : [ "p3[107]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-7::obj-3" : [ "p0[107]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-8::obj-16" : [ "on[106]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-8::obj-17" : [ "p1[106]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-8::obj-18" : [ "p2[106]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-8::obj-19" : [ "p3[106]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-8::obj-3" : [ "p0[106]", "p0", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-9::obj-16" : [ "on[117]", "on", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-9::obj-17" : [ "p1[117]", "p1", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-9::obj-18" : [ "p2[117]", "p2", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-9::obj-19" : [ "p3[117]", "p3", 0 ],
			"obj-15::obj-1::obj-1::obj-2::obj-9::obj-3" : [ "p0[117]", "p0", 0 ],
			"obj-15::obj-1::obj-2" : [ "Loop[1]", "Loop", 0 ],
			"obj-15::obj-1::obj-26::obj-29" : [ "start[3]", "Start", 0 ],
			"obj-15::obj-1::obj-26::obj-30" : [ "end[3]", "End", 0 ],
			"obj-15::obj-1::obj-26::obj-31" : [ "curve3[3]", "Curve 3", 0 ],
			"obj-15::obj-1::obj-26::obj-34" : [ "X1[3]", "X1", 0 ],
			"obj-15::obj-1::obj-26::obj-35" : [ "y1[3]", "Y1", 0 ],
			"obj-15::obj-1::obj-26::obj-36" : [ "curve1[3]", "Curve 1", 0 ],
			"obj-15::obj-1::obj-26::obj-38" : [ "curve2[3]", "Curve 2", 0 ],
			"obj-15::obj-1::obj-26::obj-39" : [ "y2[3]", "Y2", 0 ],
			"obj-15::obj-1::obj-26::obj-40" : [ "x2[3]", "X2", 0 ],
			"obj-15::obj-1::obj-28::obj-29" : [ "start[4]", "Start", 0 ],
			"obj-15::obj-1::obj-28::obj-30" : [ "end[4]", "End", 0 ],
			"obj-15::obj-1::obj-28::obj-31" : [ "curve3[4]", "Curve 3", 0 ],
			"obj-15::obj-1::obj-28::obj-34" : [ "X1[4]", "X1", 0 ],
			"obj-15::obj-1::obj-28::obj-35" : [ "y1[4]", "Y1", 0 ],
			"obj-15::obj-1::obj-28::obj-36" : [ "curve1[4]", "Curve 1", 0 ],
			"obj-15::obj-1::obj-28::obj-38" : [ "curve2[4]", "Curve 2", 0 ],
			"obj-15::obj-1::obj-28::obj-39" : [ "y2[4]", "Y2", 0 ],
			"obj-15::obj-1::obj-28::obj-40" : [ "x2[4]", "X2", 0 ],
			"obj-17::obj-1::obj-14" : [ "Clock Div[2]", "Clk Div", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-10::obj-16" : [ "on[131]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-10::obj-17" : [ "p1[131]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-10::obj-18" : [ "p2[131]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-10::obj-19" : [ "p3[131]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-10::obj-3" : [ "p0[131]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-11::obj-16" : [ "on[130]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-11::obj-17" : [ "p1[130]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-11::obj-18" : [ "p2[130]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-11::obj-19" : [ "p3[130]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-11::obj-3" : [ "p0[130]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-13::obj-16" : [ "on[129]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-13::obj-17" : [ "p1[129]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-13::obj-18" : [ "p2[129]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-13::obj-19" : [ "p3[129]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-13::obj-3" : [ "p0[129]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-14::obj-16" : [ "on[128]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-14::obj-17" : [ "p1[128]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-14::obj-18" : [ "p2[128]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-14::obj-19" : [ "p3[128]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-14::obj-3" : [ "p0[128]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-15::obj-16" : [ "on[127]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-15::obj-17" : [ "p1[127]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-15::obj-18" : [ "p2[127]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-15::obj-19" : [ "p3[127]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-15::obj-3" : [ "p0[127]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-16::obj-16" : [ "on[126]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-16::obj-17" : [ "p1[126]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-16::obj-18" : [ "p2[126]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-16::obj-19" : [ "p3[126]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-16::obj-3" : [ "p0[126]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-17::obj-16" : [ "on[125]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-17::obj-17" : [ "p1[125]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-17::obj-18" : [ "p2[125]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-17::obj-19" : [ "p3[125]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-17::obj-3" : [ "p0[125]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-1::obj-16" : [ "on", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-1::obj-17" : [ "p1", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-1::obj-18" : [ "p2", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-1::obj-19" : [ "p3", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-1::obj-3" : [ "p0", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-2::obj-16" : [ "on[118]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-2::obj-17" : [ "p1[118]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-2::obj-18" : [ "p2[118]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-2::obj-19" : [ "p3[118]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-2::obj-3" : [ "p0[118]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-3::obj-16" : [ "on[119]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-3::obj-17" : [ "p1[119]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-3::obj-18" : [ "p2[119]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-3::obj-19" : [ "p3[119]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-3::obj-3" : [ "p0[119]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-4::obj-16" : [ "on[120]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-4::obj-17" : [ "p1[120]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-4::obj-18" : [ "p2[120]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-4::obj-19" : [ "p3[120]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-4::obj-3" : [ "p0[120]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-5::obj-16" : [ "on[124]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-5::obj-17" : [ "p1[124]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-5::obj-18" : [ "p2[124]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-5::obj-19" : [ "p3[124]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-5::obj-3" : [ "p0[124]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-6::obj-16" : [ "on[123]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-6::obj-17" : [ "p1[123]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-6::obj-18" : [ "p2[123]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-6::obj-19" : [ "p3[123]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-6::obj-3" : [ "p0[123]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-7::obj-16" : [ "on[122]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-7::obj-17" : [ "p1[122]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-7::obj-18" : [ "p2[122]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-7::obj-19" : [ "p3[122]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-7::obj-3" : [ "p0[122]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-8::obj-16" : [ "on[121]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-8::obj-17" : [ "p1[121]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-8::obj-18" : [ "p2[121]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-8::obj-19" : [ "p3[121]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-8::obj-3" : [ "p0[121]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-9::obj-16" : [ "on[132]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-9::obj-17" : [ "p1[132]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-9::obj-18" : [ "p2[132]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-9::obj-19" : [ "p3[132]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-1::obj-9::obj-3" : [ "p0[132]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-10::obj-16" : [ "on[147]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-10::obj-17" : [ "p1[147]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-10::obj-18" : [ "p2[147]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-10::obj-19" : [ "p3[147]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-10::obj-3" : [ "p0[147]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-11::obj-16" : [ "on[146]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-11::obj-17" : [ "p1[146]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-11::obj-18" : [ "p2[146]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-11::obj-19" : [ "p3[146]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-11::obj-3" : [ "p0[146]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-13::obj-16" : [ "on[145]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-13::obj-17" : [ "p1[145]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-13::obj-18" : [ "p2[145]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-13::obj-19" : [ "p3[145]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-13::obj-3" : [ "p0[145]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-14::obj-16" : [ "on[144]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-14::obj-17" : [ "p1[144]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-14::obj-18" : [ "p2[144]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-14::obj-19" : [ "p3[144]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-14::obj-3" : [ "p0[144]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-15::obj-16" : [ "on[143]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-15::obj-17" : [ "p1[143]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-15::obj-18" : [ "p2[143]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-15::obj-19" : [ "p3[143]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-15::obj-3" : [ "p0[143]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-16::obj-16" : [ "on[142]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-16::obj-17" : [ "p1[142]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-16::obj-18" : [ "p2[142]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-16::obj-19" : [ "p3[142]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-16::obj-3" : [ "p0[142]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-17::obj-16" : [ "on[141]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-17::obj-17" : [ "p1[141]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-17::obj-18" : [ "p2[141]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-17::obj-19" : [ "p3[141]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-17::obj-3" : [ "p0[141]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-1::obj-16" : [ "on[133]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-1::obj-17" : [ "p1[133]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-1::obj-18" : [ "p2[133]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-1::obj-19" : [ "p3[133]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-1::obj-3" : [ "p0[133]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-2::obj-16" : [ "on[134]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-2::obj-17" : [ "p1[134]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-2::obj-18" : [ "p2[134]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-2::obj-19" : [ "p3[134]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-2::obj-3" : [ "p0[134]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-3::obj-16" : [ "on[135]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-3::obj-17" : [ "p1[135]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-3::obj-18" : [ "p2[135]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-3::obj-19" : [ "p3[135]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-3::obj-3" : [ "p0[135]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-4::obj-16" : [ "on[136]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-4::obj-17" : [ "p1[136]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-4::obj-18" : [ "p2[136]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-4::obj-19" : [ "p3[136]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-4::obj-3" : [ "p0[136]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-5::obj-16" : [ "on[140]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-5::obj-17" : [ "p1[140]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-5::obj-18" : [ "p2[140]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-5::obj-19" : [ "p3[140]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-5::obj-3" : [ "p0[140]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-6::obj-16" : [ "on[139]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-6::obj-17" : [ "p1[139]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-6::obj-18" : [ "p2[139]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-6::obj-19" : [ "p3[139]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-6::obj-3" : [ "p0[139]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-7::obj-16" : [ "on[138]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-7::obj-17" : [ "p1[138]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-7::obj-18" : [ "p2[138]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-7::obj-19" : [ "p3[138]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-7::obj-3" : [ "p0[138]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-8::obj-16" : [ "on[137]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-8::obj-17" : [ "p1[137]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-8::obj-18" : [ "p2[137]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-8::obj-19" : [ "p3[137]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-8::obj-3" : [ "p0[137]", "p0", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-9::obj-16" : [ "on[148]", "on", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-9::obj-17" : [ "p1[148]", "p1", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-9::obj-18" : [ "p2[148]", "p2", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-9::obj-19" : [ "p3[148]", "p3", 0 ],
			"obj-17::obj-1::obj-1::obj-2::obj-9::obj-3" : [ "p0[148]", "p0", 0 ],
			"obj-17::obj-1::obj-2" : [ "Loop[2]", "Loop", 0 ],
			"obj-17::obj-1::obj-26::obj-29" : [ "start[5]", "Start", 0 ],
			"obj-17::obj-1::obj-26::obj-30" : [ "end[5]", "End", 0 ],
			"obj-17::obj-1::obj-26::obj-31" : [ "curve3[5]", "Curve 3", 0 ],
			"obj-17::obj-1::obj-26::obj-34" : [ "X1[5]", "X1", 0 ],
			"obj-17::obj-1::obj-26::obj-35" : [ "y1[5]", "Y1", 0 ],
			"obj-17::obj-1::obj-26::obj-36" : [ "curve1[5]", "Curve 1", 0 ],
			"obj-17::obj-1::obj-26::obj-38" : [ "curve2[5]", "Curve 2", 0 ],
			"obj-17::obj-1::obj-26::obj-39" : [ "y2[5]", "Y2", 0 ],
			"obj-17::obj-1::obj-26::obj-40" : [ "x2[5]", "X2", 0 ],
			"obj-17::obj-1::obj-28::obj-29" : [ "start[6]", "Start", 0 ],
			"obj-17::obj-1::obj-28::obj-30" : [ "end[6]", "End", 0 ],
			"obj-17::obj-1::obj-28::obj-31" : [ "curve3[6]", "Curve 3", 0 ],
			"obj-17::obj-1::obj-28::obj-34" : [ "X1[6]", "X1", 0 ],
			"obj-17::obj-1::obj-28::obj-35" : [ "y1[6]", "Y1", 0 ],
			"obj-17::obj-1::obj-28::obj-36" : [ "curve1[6]", "Curve 1", 0 ],
			"obj-17::obj-1::obj-28::obj-38" : [ "curve2[6]", "Curve 2", 0 ],
			"obj-17::obj-1::obj-28::obj-39" : [ "y2[6]", "Y2", 0 ],
			"obj-17::obj-1::obj-28::obj-40" : [ "x2[6]", "X2", 0 ],
			"obj-2::obj-5::obj-11" : [ "live.tab[33]", "1 - Prm3", 0 ],
			"obj-2::obj-5::obj-13" : [ "live.dial[362]", "1 - Amt3", 0 ],
			"obj-2::obj-5::obj-15" : [ "live.tab[3]", "2 - Prm3", 0 ],
			"obj-2::obj-5::obj-16" : [ "live.dial[358]", "2 - Amt3", 0 ],
			"obj-2::obj-5::obj-18" : [ "live.tab[4]", "2 - Prm2", 0 ],
			"obj-2::obj-5::obj-19" : [ "live.dial[359]", "2 - Amt2", 0 ],
			"obj-2::obj-5::obj-21" : [ "live.tab[5]", "2 - Prm1", 0 ],
			"obj-2::obj-5::obj-22" : [ "live.dial[361]", "2 - Amt1", 0 ],
			"obj-2::obj-5::obj-35::obj-1" : [ "live.dial[56]", "PTCH", 0 ],
			"obj-2::obj-5::obj-35::obj-10" : [ "live.dial[27]", "REL", 0 ],
			"obj-2::obj-5::obj-35::obj-11" : [ "live.dial[50]", "HOLD", 0 ],
			"obj-2::obj-5::obj-35::obj-12" : [ "live.dial[45]", "ATK", 0 ],
			"obj-2::obj-5::obj-35::obj-13" : [ "live.dial[51]", "DEP3", 0 ],
			"obj-2::obj-5::obj-35::obj-14" : [ "live.dial[53]", "DEP2", 0 ],
			"obj-2::obj-5::obj-35::obj-15" : [ "live.dial[49]", "DEP1", 0 ],
			"obj-2::obj-5::obj-35::obj-16" : [ "live.dial[44]", "SPD3", 0 ],
			"obj-2::obj-5::obj-35::obj-17" : [ "live.dial[61]", "SPD2", 0 ],
			"obj-2::obj-5::obj-35::obj-18" : [ "live.dial[60]", "SPD1", 0 ],
			"obj-2::obj-5::obj-35::obj-2" : [ "live.dial[1]", "STRT", 0 ],
			"obj-2::obj-5::obj-35::obj-3" : [ "live.dial[2]", "LEN", 0 ],
			"obj-2::obj-5::obj-35::obj-31" : [ "live.dial[43]", "MIX", 0 ],
			"obj-2::obj-5::obj-35::obj-32" : [ "live.dial[55]", "WID", 0 ],
			"obj-2::obj-5::obj-35::obj-33" : [ "live.dial[48]", "FB", 0 ],
			"obj-2::obj-5::obj-35::obj-34" : [ "live.dial[59]", "SPD", 0 ],
			"obj-2::obj-5::obj-35::obj-35" : [ "live.dial[57]", "DEP", 0 ],
			"obj-2::obj-5::obj-35::obj-36" : [ "live.dial[54]", "DEL", 0 ],
			"obj-2::obj-5::obj-35::obj-38" : [ "live.dial[52]", "SEND", 0 ],
			"obj-2::obj-5::obj-35::obj-39" : [ "live.dial[47]", "WDTH", 0 ],
			"obj-2::obj-5::obj-35::obj-4" : [ "live.dial[3]", "RATE", 0 ],
			"obj-2::obj-5::obj-35::obj-40" : [ "live.dial[42]", "BASE", 0 ],
			"obj-2::obj-5::obj-35::obj-41" : [ "live.dial[26]", "VOL", 0 ],
			"obj-2::obj-5::obj-35::obj-42" : [ "live.dial[46]", "FB", 0 ],
			"obj-2::obj-5::obj-35::obj-43" : [ "live.dial[58]", "TIME", 0 ],
			"obj-2::obj-5::obj-35::obj-5" : [ "live.dial[4]", "RTRG", 0 ],
			"obj-2::obj-5::obj-35::obj-6" : [ "live.dial[5]", "RTIM", 0 ],
			"obj-2::obj-5::obj-35::obj-8" : [ "live.dial[7]", "BAL", 0 ],
			"obj-2::obj-5::obj-35::obj-9" : [ "live.dial[8]", "VOL", 0 ],
			"obj-2::obj-5::obj-48" : [ "live.dial[363]", "1 - Amt1", 0 ],
			"obj-2::obj-5::obj-51" : [ "live.tab[34]", "1 - Prm1", 0 ],
			"obj-2::obj-5::obj-8" : [ "live.tab[35]", "1 - Prm2", 0 ],
			"obj-2::obj-5::obj-9" : [ "live.dial[360]", "1 - Amt2", 0 ],
			"obj-9::obj-5::obj-11" : [ "live.tab[32]", "1 - Prm3", 0 ],
			"obj-9::obj-5::obj-13" : [ "live.dial[20]", "1 - Amt3", 0 ],
			"obj-9::obj-5::obj-15" : [ "live.tab[31]", "2 - Prm3", 0 ],
			"obj-9::obj-5::obj-16" : [ "live.dial[38]", "2 - Amt3", 0 ],
			"obj-9::obj-5::obj-18" : [ "live.tab[28]", "2 - Prm2", 0 ],
			"obj-9::obj-5::obj-19" : [ "live.dial[39]", "2 - Amt2", 0 ],
			"obj-9::obj-5::obj-21" : [ "live.tab[29]", "2 - Prm1", 0 ],
			"obj-9::obj-5::obj-22" : [ "live.dial[21]", "2 - Amt1", 0 ],
			"obj-9::obj-5::obj-35::obj-1" : [ "live.dial[113]", "PTCH", 0 ],
			"obj-9::obj-5::obj-35::obj-10" : [ "live.dial[108]", "REL", 0 ],
			"obj-9::obj-5::obj-35::obj-11" : [ "live.dial[104]", "HOLD", 0 ],
			"obj-9::obj-5::obj-35::obj-12" : [ "live.dial[100]", "ATK", 0 ],
			"obj-9::obj-5::obj-35::obj-13" : [ "live.dial[97]", "DEP3", 0 ],
			"obj-9::obj-5::obj-35::obj-14" : [ "live.dial[107]", "DEP2", 0 ],
			"obj-9::obj-5::obj-35::obj-15" : [ "live.dial[103]", "DEP1", 0 ],
			"obj-9::obj-5::obj-35::obj-16" : [ "live.dial[98]", "SPD3", 0 ],
			"obj-9::obj-5::obj-35::obj-17" : [ "live.dial[123]", "SPD2", 0 ],
			"obj-9::obj-5::obj-35::obj-18" : [ "live.dial[99]", "SPD1", 0 ],
			"obj-9::obj-5::obj-35::obj-2" : [ "live.dial[117]", "STRT", 0 ],
			"obj-9::obj-5::obj-35::obj-3" : [ "live.dial[120]", "LEN", 0 ],
			"obj-9::obj-5::obj-35::obj-31" : [ "live.dial[116]", "DEC", 0 ],
			"obj-9::obj-5::obj-35::obj-32" : [ "live.dial[111]", "ATK", 0 ],
			"obj-9::obj-5::obj-35::obj-33" : [ "live.dial[112]", "DPTH", 0 ],
			"obj-9::obj-5::obj-35::obj-34" : [ "live.dial[101]", "Q", 0 ],
			"obj-9::obj-5::obj-35::obj-35" : [ "live.dial[125]", "WDTH", 0 ],
			"obj-9::obj-5::obj-35::obj-36" : [ "live.dial[121]", "BASE", 0 ],
			"obj-9::obj-5::obj-35::obj-38" : [ "live.dial[122]", "Q2", 0 ],
			"obj-9::obj-5::obj-35::obj-39" : [ "live.dial[119]", "GN2", 0 ],
			"obj-9::obj-5::obj-35::obj-4" : [ "live.dial[105]", "RATE", 0 ],
			"obj-9::obj-5::obj-35::obj-40" : [ "live.dial[115]", "FRQ2", 0 ],
			"obj-9::obj-5::obj-35::obj-41" : [ "live.dial[110]", "Q1", 0 ],
			"obj-9::obj-5::obj-35::obj-42" : [ "live.dial[106]", "GN1", 0 ],
			"obj-9::obj-5::obj-35::obj-43" : [ "live.dial[102]", "FRQ1", 0 ],
			"obj-9::obj-5::obj-35::obj-5" : [ "live.dial[109]", "RTRG", 0 ],
			"obj-9::obj-5::obj-35::obj-6" : [ "live.dial[114]", "RTIM", 0 ],
			"obj-9::obj-5::obj-35::obj-8" : [ "live.dial[124]", "BAL", 0 ],
			"obj-9::obj-5::obj-35::obj-9" : [ "live.dial[118]", "VOL", 0 ],
			"obj-9::obj-5::obj-48" : [ "live.dial", "1 - Amt1", 0 ],
			"obj-9::obj-5::obj-51" : [ "live.tab[27]", "1 - Prm1", 0 ],
			"obj-9::obj-5::obj-8" : [ "live.tab[30]", "1 - Prm2", 0 ],
			"obj-9::obj-5::obj-9" : [ "live.dial[19]", "1 - Amt2", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-11::obj-9::obj-20" : 				{
					"parameter_longname" : "live.tab[24]"
				}
,
				"obj-11::obj-9::obj-23" : 				{
					"parameter_longname" : "live.tab[25]"
				}
,
				"obj-11::obj-9::obj-26" : 				{
					"parameter_longname" : "live.tab[23]"
				}
,
				"obj-11::obj-9::obj-29" : 				{
					"parameter_longname" : "live.tab[21]"
				}
,
				"obj-11::obj-9::obj-32" : 				{
					"parameter_longname" : "live.tab[26]"
				}
,
				"obj-11::obj-9::obj-35" : 				{
					"parameter_longname" : "live.tab[22]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-10::obj-16" : 				{
					"parameter_longname" : "on[70]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-10::obj-17" : 				{
					"parameter_longname" : "p1[70]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-10::obj-18" : 				{
					"parameter_longname" : "p2[70]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-10::obj-19" : 				{
					"parameter_longname" : "p3[70]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-10::obj-3" : 				{
					"parameter_longname" : "p0[70]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-11::obj-16" : 				{
					"parameter_longname" : "on[58]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-11::obj-17" : 				{
					"parameter_longname" : "p1[58]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-11::obj-18" : 				{
					"parameter_longname" : "p2[58]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-11::obj-19" : 				{
					"parameter_longname" : "p3[58]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-11::obj-3" : 				{
					"parameter_longname" : "p0[58]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-13::obj-16" : 				{
					"parameter_longname" : "on[69]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-13::obj-17" : 				{
					"parameter_longname" : "p1[69]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-13::obj-18" : 				{
					"parameter_longname" : "p2[69]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-13::obj-19" : 				{
					"parameter_longname" : "p3[69]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-13::obj-3" : 				{
					"parameter_longname" : "p0[69]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-14::obj-16" : 				{
					"parameter_longname" : "on[68]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-14::obj-17" : 				{
					"parameter_longname" : "p1[57]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-14::obj-18" : 				{
					"parameter_longname" : "p2[68]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-14::obj-19" : 				{
					"parameter_longname" : "p3[68]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-14::obj-3" : 				{
					"parameter_longname" : "p0[57]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-15::obj-16" : 				{
					"parameter_longname" : "on[57]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-15::obj-17" : 				{
					"parameter_longname" : "p1[68]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-15::obj-18" : 				{
					"parameter_longname" : "p2[57]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-15::obj-19" : 				{
					"parameter_longname" : "p3[57]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-15::obj-3" : 				{
					"parameter_longname" : "p0[68]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-16::obj-16" : 				{
					"parameter_longname" : "on[67]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-16::obj-17" : 				{
					"parameter_longname" : "p1[67]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-16::obj-18" : 				{
					"parameter_longname" : "p2[67]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-16::obj-19" : 				{
					"parameter_longname" : "p3[67]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-16::obj-3" : 				{
					"parameter_longname" : "p0[67]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-17::obj-16" : 				{
					"parameter_longname" : "on[56]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-17::obj-17" : 				{
					"parameter_longname" : "p1[56]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-17::obj-18" : 				{
					"parameter_longname" : "p2[66]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-17::obj-19" : 				{
					"parameter_longname" : "p3[56]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-17::obj-3" : 				{
					"parameter_longname" : "p0[56]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-1::obj-16" : 				{
					"parameter_longname" : "on[54]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-1::obj-17" : 				{
					"parameter_longname" : "p1[54]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-1::obj-18" : 				{
					"parameter_longname" : "p2[54]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-1::obj-19" : 				{
					"parameter_longname" : "p3[54]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-1::obj-3" : 				{
					"parameter_longname" : "p0[54]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-2::obj-16" : 				{
					"parameter_longname" : "on[61]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-2::obj-17" : 				{
					"parameter_longname" : "p1[61]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-2::obj-18" : 				{
					"parameter_longname" : "p2[61]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-2::obj-19" : 				{
					"parameter_longname" : "p3[61]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-2::obj-3" : 				{
					"parameter_longname" : "p0[61]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-3::obj-16" : 				{
					"parameter_longname" : "on[63]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-3::obj-17" : 				{
					"parameter_longname" : "p1[63]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-3::obj-18" : 				{
					"parameter_longname" : "p2[63]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-3::obj-19" : 				{
					"parameter_longname" : "p3[63]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-3::obj-3" : 				{
					"parameter_longname" : "p0[63]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-4::obj-16" : 				{
					"parameter_longname" : "on[64]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-4::obj-17" : 				{
					"parameter_longname" : "p1[64]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-4::obj-18" : 				{
					"parameter_longname" : "p2[64]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-4::obj-19" : 				{
					"parameter_longname" : "p3[64]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-4::obj-3" : 				{
					"parameter_longname" : "p0[64]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-5::obj-16" : 				{
					"parameter_longname" : "on[66]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-5::obj-17" : 				{
					"parameter_longname" : "p1[66]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-5::obj-18" : 				{
					"parameter_longname" : "p2[56]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-5::obj-19" : 				{
					"parameter_longname" : "p3[66]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-5::obj-3" : 				{
					"parameter_longname" : "p0[66]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-6::obj-16" : 				{
					"parameter_longname" : "on[65]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-6::obj-17" : 				{
					"parameter_longname" : "p1[62]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-6::obj-18" : 				{
					"parameter_longname" : "p2[65]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-6::obj-19" : 				{
					"parameter_longname" : "p3[65]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-6::obj-3" : 				{
					"parameter_longname" : "p0[65]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-7::obj-16" : 				{
					"parameter_longname" : "on[62]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-7::obj-17" : 				{
					"parameter_longname" : "p1[55]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-7::obj-18" : 				{
					"parameter_longname" : "p2[62]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-7::obj-19" : 				{
					"parameter_longname" : "p3[62]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-7::obj-3" : 				{
					"parameter_longname" : "p0[62]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-8::obj-16" : 				{
					"parameter_longname" : "on[55]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-8::obj-17" : 				{
					"parameter_longname" : "p1[65]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-8::obj-18" : 				{
					"parameter_longname" : "p2[55]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-8::obj-19" : 				{
					"parameter_longname" : "p3[55]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-8::obj-3" : 				{
					"parameter_longname" : "p0[55]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-9::obj-16" : 				{
					"parameter_longname" : "on[71]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-9::obj-17" : 				{
					"parameter_longname" : "p1[71]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-9::obj-18" : 				{
					"parameter_longname" : "p2[71]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-9::obj-19" : 				{
					"parameter_longname" : "p3[59]"
				}
,
				"obj-12::obj-1::obj-1::obj-1::obj-9::obj-3" : 				{
					"parameter_longname" : "p0[59]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-10::obj-16" : 				{
					"parameter_longname" : "on[84]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-10::obj-17" : 				{
					"parameter_longname" : "p1[84]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-10::obj-18" : 				{
					"parameter_longname" : "p2[84]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-10::obj-19" : 				{
					"parameter_longname" : "p3[84]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-10::obj-3" : 				{
					"parameter_longname" : "p0[84]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-11::obj-16" : 				{
					"parameter_longname" : "on[83]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-11::obj-17" : 				{
					"parameter_longname" : "p1[83]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-11::obj-18" : 				{
					"parameter_longname" : "p2[83]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-11::obj-19" : 				{
					"parameter_longname" : "p3[83]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-11::obj-3" : 				{
					"parameter_longname" : "p0[83]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-13::obj-16" : 				{
					"parameter_longname" : "on[82]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-13::obj-17" : 				{
					"parameter_longname" : "p1[82]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-13::obj-18" : 				{
					"parameter_longname" : "p2[82]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-13::obj-19" : 				{
					"parameter_longname" : "p3[82]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-13::obj-3" : 				{
					"parameter_longname" : "p0[82]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-14::obj-16" : 				{
					"parameter_longname" : "on[81]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-14::obj-17" : 				{
					"parameter_longname" : "p1[81]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-14::obj-18" : 				{
					"parameter_longname" : "p2[81]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-14::obj-19" : 				{
					"parameter_longname" : "p3[81]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-14::obj-3" : 				{
					"parameter_longname" : "p0[81]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-15::obj-16" : 				{
					"parameter_longname" : "on[80]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-15::obj-17" : 				{
					"parameter_longname" : "p1[80]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-15::obj-18" : 				{
					"parameter_longname" : "p2[80]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-15::obj-19" : 				{
					"parameter_longname" : "p3[80]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-15::obj-3" : 				{
					"parameter_longname" : "p0[80]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-16::obj-16" : 				{
					"parameter_longname" : "on[79]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-16::obj-17" : 				{
					"parameter_longname" : "p1[79]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-16::obj-18" : 				{
					"parameter_longname" : "p2[79]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-16::obj-19" : 				{
					"parameter_longname" : "p3[79]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-16::obj-3" : 				{
					"parameter_longname" : "p0[79]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-17::obj-16" : 				{
					"parameter_longname" : "on[78]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-17::obj-17" : 				{
					"parameter_longname" : "p1[78]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-17::obj-18" : 				{
					"parameter_longname" : "p2[78]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-17::obj-19" : 				{
					"parameter_longname" : "p3[78]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-17::obj-3" : 				{
					"parameter_longname" : "p0[78]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-1::obj-16" : 				{
					"parameter_longname" : "on[59]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-1::obj-17" : 				{
					"parameter_longname" : "p1[59]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-1::obj-18" : 				{
					"parameter_longname" : "p2[59]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-1::obj-19" : 				{
					"parameter_longname" : "p3[71]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-1::obj-3" : 				{
					"parameter_longname" : "p0[71]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-2::obj-16" : 				{
					"parameter_longname" : "on[72]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-2::obj-17" : 				{
					"parameter_longname" : "p1[72]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-2::obj-18" : 				{
					"parameter_longname" : "p2[72]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-2::obj-19" : 				{
					"parameter_longname" : "p3[72]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-2::obj-3" : 				{
					"parameter_longname" : "p0[72]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-3::obj-16" : 				{
					"parameter_longname" : "on[73]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-3::obj-17" : 				{
					"parameter_longname" : "p1[60]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-3::obj-18" : 				{
					"parameter_longname" : "p2[60]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-3::obj-19" : 				{
					"parameter_longname" : "p3[60]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-3::obj-3" : 				{
					"parameter_longname" : "p0[60]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-4::obj-16" : 				{
					"parameter_longname" : "on[60]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-4::obj-17" : 				{
					"parameter_longname" : "p1[73]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-4::obj-18" : 				{
					"parameter_longname" : "p2[73]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-4::obj-19" : 				{
					"parameter_longname" : "p3[73]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-4::obj-3" : 				{
					"parameter_longname" : "p0[73]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-5::obj-16" : 				{
					"parameter_longname" : "on[77]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-5::obj-17" : 				{
					"parameter_longname" : "p1[77]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-5::obj-18" : 				{
					"parameter_longname" : "p2[77]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-5::obj-19" : 				{
					"parameter_longname" : "p3[77]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-5::obj-3" : 				{
					"parameter_longname" : "p0[77]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-6::obj-16" : 				{
					"parameter_longname" : "on[76]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-6::obj-17" : 				{
					"parameter_longname" : "p1[76]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-6::obj-18" : 				{
					"parameter_longname" : "p2[76]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-6::obj-19" : 				{
					"parameter_longname" : "p3[76]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-6::obj-3" : 				{
					"parameter_longname" : "p0[76]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-7::obj-16" : 				{
					"parameter_longname" : "on[75]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-7::obj-17" : 				{
					"parameter_longname" : "p1[75]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-7::obj-18" : 				{
					"parameter_longname" : "p2[75]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-7::obj-19" : 				{
					"parameter_longname" : "p3[75]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-7::obj-3" : 				{
					"parameter_longname" : "p0[75]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-8::obj-16" : 				{
					"parameter_longname" : "on[74]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-8::obj-17" : 				{
					"parameter_longname" : "p1[74]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-8::obj-18" : 				{
					"parameter_longname" : "p2[74]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-8::obj-19" : 				{
					"parameter_longname" : "p3[74]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-8::obj-3" : 				{
					"parameter_longname" : "p0[74]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-9::obj-16" : 				{
					"parameter_longname" : "on[85]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-9::obj-17" : 				{
					"parameter_longname" : "p1[85]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-9::obj-18" : 				{
					"parameter_longname" : "p2[85]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-9::obj-19" : 				{
					"parameter_longname" : "p3[85]"
				}
,
				"obj-12::obj-1::obj-1::obj-2::obj-9::obj-3" : 				{
					"parameter_longname" : "p0[85]"
				}
,
				"obj-12::obj-1::obj-28::obj-29" : 				{
					"parameter_longname" : "start[2]"
				}
,
				"obj-12::obj-1::obj-28::obj-30" : 				{
					"parameter_longname" : "end[2]"
				}
,
				"obj-12::obj-1::obj-28::obj-31" : 				{
					"parameter_longname" : "curve3[2]"
				}
,
				"obj-12::obj-1::obj-28::obj-34" : 				{
					"parameter_longname" : "X1[2]"
				}
,
				"obj-12::obj-1::obj-28::obj-35" : 				{
					"parameter_longname" : "y1[2]"
				}
,
				"obj-12::obj-1::obj-28::obj-36" : 				{
					"parameter_longname" : "curve1[2]"
				}
,
				"obj-12::obj-1::obj-28::obj-38" : 				{
					"parameter_longname" : "curve2[2]"
				}
,
				"obj-12::obj-1::obj-28::obj-39" : 				{
					"parameter_longname" : "y2[2]"
				}
,
				"obj-12::obj-1::obj-28::obj-40" : 				{
					"parameter_longname" : "x2[2]"
				}
,
				"obj-13::obj-1::obj-1::obj-1" : 				{
					"parameter_longname" : "live.dial[135]"
				}
,
				"obj-13::obj-1::obj-1::obj-10" : 				{
					"parameter_longname" : "live.dial[147]"
				}
,
				"obj-13::obj-1::obj-1::obj-11" : 				{
					"parameter_longname" : "live.dial[138]"
				}
,
				"obj-13::obj-1::obj-1::obj-12" : 				{
					"parameter_longname" : "live.dial[130]"
				}
,
				"obj-13::obj-1::obj-1::obj-13" : 				{
					"parameter_longname" : "live.dial[145]"
				}
,
				"obj-13::obj-1::obj-1::obj-14" : 				{
					"parameter_longname" : "live.dial[141]"
				}
,
				"obj-13::obj-1::obj-1::obj-15" : 				{
					"parameter_longname" : "live.dial[134]"
				}
,
				"obj-13::obj-1::obj-1::obj-16" : 				{
					"parameter_longname" : "live.dial[154]"
				}
,
				"obj-13::obj-1::obj-1::obj-17" : 				{
					"parameter_longname" : "live.dial[136]"
				}
,
				"obj-13::obj-1::obj-1::obj-18" : 				{
					"parameter_longname" : "live.dial[129]"
				}
,
				"obj-13::obj-1::obj-1::obj-2" : 				{
					"parameter_longname" : "live.dial[142]"
				}
,
				"obj-13::obj-1::obj-1::obj-3" : 				{
					"parameter_longname" : "live.dial[152]"
				}
,
				"obj-13::obj-1::obj-1::obj-31" : 				{
					"parameter_longname" : "live.dial[150]",
					"parameter_shortname" : "MIX"
				}
,
				"obj-13::obj-1::obj-1::obj-32" : 				{
					"parameter_longname" : "live.dial[140]",
					"parameter_shortname" : "WID"
				}
,
				"obj-13::obj-1::obj-1::obj-33" : 				{
					"parameter_longname" : "live.dial[144]",
					"parameter_shortname" : "FB"
				}
,
				"obj-13::obj-1::obj-1::obj-34" : 				{
					"parameter_longname" : "live.dial[137]",
					"parameter_shortname" : "SPD"
				}
,
				"obj-13::obj-1::obj-1::obj-35" : 				{
					"parameter_longname" : "live.dial[148]",
					"parameter_shortname" : "DEP"
				}
,
				"obj-13::obj-1::obj-1::obj-36" : 				{
					"parameter_longname" : "live.dial[128]",
					"parameter_shortname" : "DEL"
				}
,
				"obj-13::obj-1::obj-1::obj-38" : 				{
					"parameter_longname" : "live.dial[126]",
					"parameter_shortname" : "SEND"
				}
,
				"obj-13::obj-1::obj-1::obj-39" : 				{
					"parameter_longname" : "live.dial[133]",
					"parameter_shortname" : "WDTH"
				}
,
				"obj-13::obj-1::obj-1::obj-4" : 				{
					"parameter_longname" : "live.dial[132]"
				}
,
				"obj-13::obj-1::obj-1::obj-40" : 				{
					"parameter_longname" : "live.dial[153]",
					"parameter_shortname" : "BASE"
				}
,
				"obj-13::obj-1::obj-1::obj-41" : 				{
					"parameter_longname" : "live.dial[131]",
					"parameter_shortname" : "VOL"
				}
,
				"obj-13::obj-1::obj-1::obj-42" : 				{
					"parameter_longname" : "live.dial[127]",
					"parameter_shortname" : "FB"
				}
,
				"obj-13::obj-1::obj-1::obj-43" : 				{
					"parameter_longname" : "live.dial[143]",
					"parameter_shortname" : "TIME"
				}
,
				"obj-13::obj-1::obj-1::obj-5" : 				{
					"parameter_longname" : "live.dial[139]"
				}
,
				"obj-13::obj-1::obj-1::obj-6" : 				{
					"parameter_longname" : "live.dial[149]"
				}
,
				"obj-13::obj-1::obj-1::obj-8" : 				{
					"parameter_longname" : "live.dial[146]"
				}
,
				"obj-13::obj-1::obj-1::obj-9" : 				{
					"parameter_longname" : "live.dial[151]"
				}
,
				"obj-13::obj-1::obj-2::obj-1" : 				{
					"parameter_longname" : "live.dial[157]"
				}
,
				"obj-13::obj-1::obj-2::obj-10" : 				{
					"parameter_longname" : "live.dial[171]"
				}
,
				"obj-13::obj-1::obj-2::obj-11" : 				{
					"parameter_longname" : "live.dial[161]"
				}
,
				"obj-13::obj-1::obj-2::obj-12" : 				{
					"parameter_longname" : "live.dial[181]"
				}
,
				"obj-13::obj-1::obj-2::obj-13" : 				{
					"parameter_longname" : "live.dial[168]"
				}
,
				"obj-13::obj-1::obj-2::obj-14" : 				{
					"parameter_longname" : "live.dial[159]"
				}
,
				"obj-13::obj-1::obj-2::obj-15" : 				{
					"parameter_longname" : "live.dial[179]"
				}
,
				"obj-13::obj-1::obj-2::obj-16" : 				{
					"parameter_longname" : "live.dial[170]"
				}
,
				"obj-13::obj-1::obj-2::obj-17" : 				{
					"parameter_longname" : "live.dial[178]"
				}
,
				"obj-13::obj-1::obj-2::obj-18" : 				{
					"parameter_longname" : "live.dial[169]"
				}
,
				"obj-13::obj-1::obj-2::obj-2" : 				{
					"parameter_longname" : "live.dial[166]"
				}
,
				"obj-13::obj-1::obj-2::obj-3" : 				{
					"parameter_longname" : "live.dial[175]"
				}
,
				"obj-13::obj-1::obj-2::obj-31" : 				{
					"parameter_longname" : "live.dial[162]",
					"parameter_shortname" : "DEC"
				}
,
				"obj-13::obj-1::obj-2::obj-32" : 				{
					"parameter_longname" : "live.dial[182]",
					"parameter_shortname" : "ATK"
				}
,
				"obj-13::obj-1::obj-2::obj-33" : 				{
					"parameter_longname" : "live.dial[174]",
					"parameter_shortname" : "DPTH"
				}
,
				"obj-13::obj-1::obj-2::obj-34" : 				{
					"parameter_longname" : "live.dial[165]",
					"parameter_shortname" : "Q"
				}
,
				"obj-13::obj-1::obj-2::obj-35" : 				{
					"parameter_longname" : "live.dial[156]",
					"parameter_shortname" : "WDTH"
				}
,
				"obj-13::obj-1::obj-2::obj-36" : 				{
					"parameter_longname" : "live.dial[177]",
					"parameter_shortname" : "BASE"
				}
,
				"obj-13::obj-1::obj-2::obj-38" : 				{
					"parameter_longname" : "live.dial[173]",
					"parameter_shortname" : "Q2"
				}
,
				"obj-13::obj-1::obj-2::obj-39" : 				{
					"parameter_longname" : "live.dial[164]",
					"parameter_shortname" : "GN2"
				}
,
				"obj-13::obj-1::obj-2::obj-4" : 				{
					"parameter_longname" : "live.dial[183]"
				}
,
				"obj-13::obj-1::obj-2::obj-40" : 				{
					"parameter_longname" : "live.dial[155]",
					"parameter_shortname" : "FRQ2"
				}
,
				"obj-13::obj-1::obj-2::obj-41" : 				{
					"parameter_longname" : "live.dial[176]",
					"parameter_shortname" : "Q1"
				}
,
				"obj-13::obj-1::obj-2::obj-42" : 				{
					"parameter_longname" : "live.dial[167]",
					"parameter_shortname" : "GN1"
				}
,
				"obj-13::obj-1::obj-2::obj-43" : 				{
					"parameter_longname" : "live.dial[158]",
					"parameter_shortname" : "FRQ1"
				}
,
				"obj-13::obj-1::obj-2::obj-5" : 				{
					"parameter_longname" : "live.dial[163]"
				}
,
				"obj-13::obj-1::obj-2::obj-6" : 				{
					"parameter_longname" : "live.dial[172]"
				}
,
				"obj-13::obj-1::obj-2::obj-8" : 				{
					"parameter_longname" : "live.dial[160]"
				}
,
				"obj-13::obj-1::obj-2::obj-9" : 				{
					"parameter_longname" : "live.dial[180]"
				}
,
				"obj-13::obj-1::obj-3::obj-1" : 				{
					"parameter_longname" : "live.dial[228]"
				}
,
				"obj-13::obj-1::obj-3::obj-10" : 				{
					"parameter_longname" : "live.dial[217]"
				}
,
				"obj-13::obj-1::obj-3::obj-11" : 				{
					"parameter_longname" : "live.dial[237]"
				}
,
				"obj-13::obj-1::obj-3::obj-12" : 				{
					"parameter_longname" : "live.dial[226]"
				}
,
				"obj-13::obj-1::obj-3::obj-13" : 				{
					"parameter_longname" : "live.dial[236]"
				}
,
				"obj-13::obj-1::obj-3::obj-14" : 				{
					"parameter_longname" : "live.dial[225]"
				}
,
				"obj-13::obj-1::obj-3::obj-15" : 				{
					"parameter_longname" : "live.dial[219]"
				}
,
				"obj-13::obj-1::obj-3::obj-16" : 				{
					"parameter_longname" : "live.dial[240]"
				}
,
				"obj-13::obj-1::obj-3::obj-17" : 				{
					"parameter_longname" : "live.dial[230]"
				}
,
				"obj-13::obj-1::obj-3::obj-18" : 				{
					"parameter_longname" : "live.dial[214]"
				}
,
				"obj-13::obj-1::obj-3::obj-2" : 				{
					"parameter_longname" : "live.dial[239]"
				}
,
				"obj-13::obj-1::obj-3::obj-3" : 				{
					"parameter_longname" : "live.dial[221]"
				}
,
				"obj-13::obj-1::obj-3::obj-31" : 				{
					"parameter_longname" : "live.dial[233]",
					"parameter_shortname" : "DEC"
				}
,
				"obj-13::obj-1::obj-3::obj-32" : 				{
					"parameter_longname" : "live.dial[222]",
					"parameter_shortname" : "ATK"
				}
,
				"obj-13::obj-1::obj-3::obj-33" : 				{
					"parameter_longname" : "live.dial[213]",
					"parameter_shortname" : "DPTH"
				}
,
				"obj-13::obj-1::obj-3::obj-34" : 				{
					"parameter_longname" : "live.dial[234]",
					"parameter_shortname" : "Q"
				}
,
				"obj-13::obj-1::obj-3::obj-35" : 				{
					"parameter_longname" : "live.dial[223]",
					"parameter_shortname" : "WDTH"
				}
,
				"obj-13::obj-1::obj-3::obj-36" : 				{
					"parameter_longname" : "live.dial[216]",
					"parameter_shortname" : "BASE"
				}
,
				"obj-13::obj-1::obj-3::obj-38" : 				{
					"parameter_longname" : "live.dial[229]",
					"parameter_shortname" : "DEC"
				}
,
				"obj-13::obj-1::obj-3::obj-39" : 				{
					"parameter_longname" : "live.dial[220]",
					"parameter_shortname" : "ATK"
				}
,
				"obj-13::obj-1::obj-3::obj-4" : 				{
					"parameter_longname" : "live.dial[227]"
				}
,
				"obj-13::obj-1::obj-3::obj-40" : 				{
					"parameter_longname" : "live.dial[241]",
					"parameter_shortname" : "DPTH"
				}
,
				"obj-13::obj-1::obj-3::obj-41" : 				{
					"parameter_longname" : "live.dial[231]",
					"parameter_shortname" : "Q"
				}
,
				"obj-13::obj-1::obj-3::obj-42" : 				{
					"parameter_longname" : "live.dial[215]",
					"parameter_shortname" : "WDTH"
				}
,
				"obj-13::obj-1::obj-3::obj-43" : 				{
					"parameter_longname" : "live.dial[232]",
					"parameter_shortname" : "BASE"
				}
,
				"obj-13::obj-1::obj-3::obj-5" : 				{
					"parameter_longname" : "live.dial[238]"
				}
,
				"obj-13::obj-1::obj-3::obj-6" : 				{
					"parameter_longname" : "live.dial[218]"
				}
,
				"obj-13::obj-1::obj-3::obj-8" : 				{
					"parameter_longname" : "live.dial[235]"
				}
,
				"obj-13::obj-1::obj-3::obj-9" : 				{
					"parameter_longname" : "live.dial[224]"
				}
,
				"obj-13::obj-1::obj-4::obj-1" : 				{
					"parameter_longname" : "live.dial[197]"
				}
,
				"obj-13::obj-1::obj-4::obj-10" : 				{
					"parameter_longname" : "live.dial[212]"
				}
,
				"obj-13::obj-1::obj-4::obj-11" : 				{
					"parameter_longname" : "live.dial[203]"
				}
,
				"obj-13::obj-1::obj-4::obj-12" : 				{
					"parameter_longname" : "live.dial[194]"
				}
,
				"obj-13::obj-1::obj-4::obj-13" : 				{
					"parameter_longname" : "live.dial[207]"
				}
,
				"obj-13::obj-1::obj-4::obj-14" : 				{
					"parameter_longname" : "live.dial[198]"
				}
,
				"obj-13::obj-1::obj-4::obj-15" : 				{
					"parameter_longname" : "live.dial[193]"
				}
,
				"obj-13::obj-1::obj-4::obj-16" : 				{
					"parameter_longname" : "live.dial[188]"
				}
,
				"obj-13::obj-1::obj-4::obj-17" : 				{
					"parameter_longname" : "live.dial[208]"
				}
,
				"obj-13::obj-1::obj-4::obj-18" : 				{
					"parameter_longname" : "live.dial[199]"
				}
,
				"obj-13::obj-1::obj-4::obj-2" : 				{
					"parameter_longname" : "live.dial[206]"
				}
,
				"obj-13::obj-1::obj-4::obj-3" : 				{
					"parameter_longname" : "live.dial[186]"
				}
,
				"obj-13::obj-1::obj-4::obj-31" : 				{
					"parameter_longname" : "live.dial[202]",
					"parameter_shortname" : "DEC"
				}
,
				"obj-13::obj-1::obj-4::obj-32" : 				{
					"parameter_longname" : "live.dial[192]",
					"parameter_shortname" : "ATK"
				}
,
				"obj-13::obj-1::obj-4::obj-33" : 				{
					"parameter_longname" : "live.dial[184]",
					"parameter_shortname" : "DPTH"
				}
,
				"obj-13::obj-1::obj-4::obj-34" : 				{
					"parameter_longname" : "live.dial[204]",
					"parameter_shortname" : "Q"
				}
,
				"obj-13::obj-1::obj-4::obj-35" : 				{
					"parameter_longname" : "live.dial[195]",
					"parameter_shortname" : "WDTH"
				}
,
				"obj-13::obj-1::obj-4::obj-36" : 				{
					"parameter_longname" : "live.dial[187]",
					"parameter_shortname" : "BASE"
				}
,
				"obj-13::obj-1::obj-4::obj-38" : 				{
					"parameter_longname" : "live.dial[191]",
					"parameter_shortname" : "DEC"
				}
,
				"obj-13::obj-1::obj-4::obj-39" : 				{
					"parameter_longname" : "live.dial[209]",
					"parameter_shortname" : "ATK"
				}
,
				"obj-13::obj-1::obj-4::obj-4" : 				{
					"parameter_longname" : "live.dial[196]"
				}
,
				"obj-13::obj-1::obj-4::obj-40" : 				{
					"parameter_longname" : "live.dial[200]",
					"parameter_shortname" : "DPTH"
				}
,
				"obj-13::obj-1::obj-4::obj-41" : 				{
					"parameter_longname" : "live.dial[190]",
					"parameter_shortname" : "Q"
				}
,
				"obj-13::obj-1::obj-4::obj-42" : 				{
					"parameter_longname" : "live.dial[211]",
					"parameter_shortname" : "WDTH"
				}
,
				"obj-13::obj-1::obj-4::obj-43" : 				{
					"parameter_longname" : "live.dial[201]",
					"parameter_shortname" : "BASE"
				}
,
				"obj-13::obj-1::obj-4::obj-5" : 				{
					"parameter_longname" : "live.dial[205]"
				}
,
				"obj-13::obj-1::obj-4::obj-6" : 				{
					"parameter_longname" : "live.dial[185]"
				}
,
				"obj-13::obj-1::obj-4::obj-8" : 				{
					"parameter_longname" : "live.dial[189]"
				}
,
				"obj-13::obj-1::obj-4::obj-9" : 				{
					"parameter_longname" : "live.dial[210]"
				}
,
				"obj-13::obj-1::obj-5::obj-1" : 				{
					"parameter_longname" : "live.dial[343]"
				}
,
				"obj-13::obj-1::obj-5::obj-10" : 				{
					"parameter_longname" : "live.dial[357]"
				}
,
				"obj-13::obj-1::obj-5::obj-11" : 				{
					"parameter_longname" : "live.dial[336]"
				}
,
				"obj-13::obj-1::obj-5::obj-12" : 				{
					"parameter_longname" : "live.dial[333]"
				}
,
				"obj-13::obj-1::obj-5::obj-13" : 				{
					"parameter_longname" : "live.dial[339]"
				}
,
				"obj-13::obj-1::obj-5::obj-14" : 				{
					"parameter_longname" : "live.dial[337]"
				}
,
				"obj-13::obj-1::obj-5::obj-15" : 				{
					"parameter_longname" : "live.dial[351]"
				}
,
				"obj-13::obj-1::obj-5::obj-16" : 				{
					"parameter_longname" : "live.dial[332]"
				}
,
				"obj-13::obj-1::obj-5::obj-17" : 				{
					"parameter_longname" : "live.dial[356]"
				}
,
				"obj-13::obj-1::obj-5::obj-18" : 				{
					"parameter_longname" : "live.dial[352]"
				}
,
				"obj-13::obj-1::obj-5::obj-2" : 				{
					"parameter_longname" : "live.dial[348]"
				}
,
				"obj-13::obj-1::obj-5::obj-3" : 				{
					"parameter_longname" : "live.dial[353]"
				}
,
				"obj-13::obj-1::obj-5::obj-31" : 				{
					"parameter_longname" : "live.dial[335]"
				}
,
				"obj-13::obj-1::obj-5::obj-32" : 				{
					"parameter_longname" : "live.dial[350]"
				}
,
				"obj-13::obj-1::obj-5::obj-33" : 				{
					"parameter_longname" : "live.dial[346]"
				}
,
				"obj-13::obj-1::obj-5::obj-34" : 				{
					"parameter_longname" : "live.dial[341]"
				}
,
				"obj-13::obj-1::obj-5::obj-35" : 				{
					"parameter_longname" : "live.dial[331]"
				}
,
				"obj-13::obj-1::obj-5::obj-36" : 				{
					"parameter_longname" : "live.dial[354]"
				}
,
				"obj-13::obj-1::obj-5::obj-38" : 				{
					"parameter_longname" : "live.dial[329]"
				}
,
				"obj-13::obj-1::obj-5::obj-39" : 				{
					"parameter_longname" : "live.dial[345]"
				}
,
				"obj-13::obj-1::obj-5::obj-4" : 				{
					"parameter_longname" : "live.dial[344]"
				}
,
				"obj-13::obj-1::obj-5::obj-40" : 				{
					"parameter_longname" : "live.dial[340]"
				}
,
				"obj-13::obj-1::obj-5::obj-41" : 				{
					"parameter_longname" : "live.dial[338]"
				}
,
				"obj-13::obj-1::obj-5::obj-42" : 				{
					"parameter_longname" : "live.dial[334]"
				}
,
				"obj-13::obj-1::obj-5::obj-43" : 				{
					"parameter_longname" : "live.dial[330]"
				}
,
				"obj-13::obj-1::obj-5::obj-5" : 				{
					"parameter_longname" : "live.dial[349]"
				}
,
				"obj-13::obj-1::obj-5::obj-6" : 				{
					"parameter_longname" : "live.dial[355]"
				}
,
				"obj-13::obj-1::obj-5::obj-8" : 				{
					"parameter_longname" : "live.dial[347]"
				}
,
				"obj-13::obj-1::obj-5::obj-9" : 				{
					"parameter_longname" : "live.dial[342]"
				}
,
				"obj-13::obj-1::obj-6::obj-1" : 				{
					"parameter_longname" : "live.dial[308]"
				}
,
				"obj-13::obj-1::obj-6::obj-10" : 				{
					"parameter_longname" : "live.dial[317]"
				}
,
				"obj-13::obj-1::obj-6::obj-11" : 				{
					"parameter_longname" : "live.dial[306]"
				}
,
				"obj-13::obj-1::obj-6::obj-12" : 				{
					"parameter_longname" : "live.dial[315]"
				}
,
				"obj-13::obj-1::obj-6::obj-13" : 				{
					"parameter_longname" : "live.dial[305]"
				}
,
				"obj-13::obj-1::obj-6::obj-14" : 				{
					"parameter_longname" : "live.dial[326]"
				}
,
				"obj-13::obj-1::obj-6::obj-15" : 				{
					"parameter_longname" : "live.dial[320]"
				}
,
				"obj-13::obj-1::obj-6::obj-16" : 				{
					"parameter_longname" : "live.dial[311]"
				}
,
				"obj-13::obj-1::obj-6::obj-17" : 				{
					"parameter_longname" : "live.dial[328]"
				}
,
				"obj-13::obj-1::obj-6::obj-18" : 				{
					"parameter_longname" : "live.dial[323]"
				}
,
				"obj-13::obj-1::obj-6::obj-2" : 				{
					"parameter_longname" : "live.dial[327]"
				}
,
				"obj-13::obj-1::obj-6::obj-3" : 				{
					"parameter_longname" : "live.dial[307]"
				}
,
				"obj-13::obj-1::obj-6::obj-31" : 				{
					"parameter_longname" : "live.dial[310]",
					"parameter_shortname" : "DEC"
				}
,
				"obj-13::obj-1::obj-6::obj-32" : 				{
					"parameter_longname" : "live.dial[322]",
					"parameter_shortname" : "ATK"
				}
,
				"obj-13::obj-1::obj-6::obj-33" : 				{
					"parameter_longname" : "live.dial[314]",
					"parameter_shortname" : "DPTH"
				}
,
				"obj-13::obj-1::obj-6::obj-34" : 				{
					"parameter_longname" : "live.dial[303]",
					"parameter_shortname" : "Q"
				}
,
				"obj-13::obj-1::obj-6::obj-35" : 				{
					"parameter_longname" : "live.dial[325]",
					"parameter_shortname" : "WDTH"
				}
,
				"obj-13::obj-1::obj-6::obj-36" : 				{
					"parameter_longname" : "live.dial[316]",
					"parameter_shortname" : "BASE"
				}
,
				"obj-13::obj-1::obj-6::obj-38" : 				{
					"parameter_longname" : "live.dial[300]",
					"parameter_shortname" : "DEC"
				}
,
				"obj-13::obj-1::obj-6::obj-39" : 				{
					"parameter_longname" : "live.dial[321]",
					"parameter_shortname" : "ATK"
				}
,
				"obj-13::obj-1::obj-6::obj-4" : 				{
					"parameter_longname" : "live.dial[319]"
				}
,
				"obj-13::obj-1::obj-6::obj-40" : 				{
					"parameter_longname" : "live.dial[312]",
					"parameter_shortname" : "DPTH"
				}
,
				"obj-13::obj-1::obj-6::obj-41" : 				{
					"parameter_longname" : "live.dial[301]",
					"parameter_shortname" : "Q"
				}
,
				"obj-13::obj-1::obj-6::obj-42" : 				{
					"parameter_longname" : "live.dial[309]",
					"parameter_shortname" : "WDTH"
				}
,
				"obj-13::obj-1::obj-6::obj-43" : 				{
					"parameter_longname" : "live.dial[324]",
					"parameter_shortname" : "BASE"
				}
,
				"obj-13::obj-1::obj-6::obj-5" : 				{
					"parameter_longname" : "live.dial[318]"
				}
,
				"obj-13::obj-1::obj-6::obj-6" : 				{
					"parameter_longname" : "live.dial[304]"
				}
,
				"obj-13::obj-1::obj-6::obj-8" : 				{
					"parameter_longname" : "live.dial[313]"
				}
,
				"obj-13::obj-1::obj-6::obj-9" : 				{
					"parameter_longname" : "live.dial[302]"
				}
,
				"obj-13::obj-1::obj-7::obj-1" : 				{
					"parameter_longname" : "live.dial[272]"
				}
,
				"obj-13::obj-1::obj-7::obj-10" : 				{
					"parameter_longname" : "live.dial[279]"
				}
,
				"obj-13::obj-1::obj-7::obj-11" : 				{
					"parameter_longname" : "live.dial[299]"
				}
,
				"obj-13::obj-1::obj-7::obj-12" : 				{
					"parameter_longname" : "live.dial[291]"
				}
,
				"obj-13::obj-1::obj-7::obj-13" : 				{
					"parameter_longname" : "live.dial[284]"
				}
,
				"obj-13::obj-1::obj-7::obj-14" : 				{
					"parameter_longname" : "live.dial[287]"
				}
,
				"obj-13::obj-1::obj-7::obj-15" : 				{
					"parameter_longname" : "live.dial[274]"
				}
,
				"obj-13::obj-1::obj-7::obj-16" : 				{
					"parameter_longname" : "live.dial[296]"
				}
,
				"obj-13::obj-1::obj-7::obj-17" : 				{
					"parameter_longname" : "live.dial[285]"
				}
,
				"obj-13::obj-1::obj-7::obj-18" : 				{
					"parameter_longname" : "live.dial[277]"
				}
,
				"obj-13::obj-1::obj-7::obj-2" : 				{
					"parameter_longname" : "live.dial[292]"
				}
,
				"obj-13::obj-1::obj-7::obj-3" : 				{
					"parameter_longname" : "live.dial[281]"
				}
,
				"obj-13::obj-1::obj-7::obj-31" : 				{
					"parameter_longname" : "live.dial[293]",
					"parameter_shortname" : "DEC"
				}
,
				"obj-13::obj-1::obj-7::obj-32" : 				{
					"parameter_longname" : "live.dial[298]",
					"parameter_shortname" : "ATK"
				}
,
				"obj-13::obj-1::obj-7::obj-33" : 				{
					"parameter_longname" : "live.dial[283]",
					"parameter_shortname" : "DPTH"
				}
,
				"obj-13::obj-1::obj-7::obj-34" : 				{
					"parameter_longname" : "live.dial[290]",
					"parameter_shortname" : "Q"
				}
,
				"obj-13::obj-1::obj-7::obj-35" : 				{
					"parameter_longname" : "live.dial[273]",
					"parameter_shortname" : "WDTH"
				}
,
				"obj-13::obj-1::obj-7::obj-36" : 				{
					"parameter_longname" : "live.dial[295]",
					"parameter_shortname" : "BASE"
				}
,
				"obj-13::obj-1::obj-7::obj-38" : 				{
					"parameter_longname" : "live.dial[286]",
					"parameter_shortname" : "DEC"
				}
,
				"obj-13::obj-1::obj-7::obj-39" : 				{
					"parameter_longname" : "live.dial[278]",
					"parameter_shortname" : "ATK"
				}
,
				"obj-13::obj-1::obj-7::obj-4" : 				{
					"parameter_longname" : "live.dial[294]"
				}
,
				"obj-13::obj-1::obj-7::obj-40" : 				{
					"parameter_longname" : "live.dial[289]",
					"parameter_shortname" : "DPTH"
				}
,
				"obj-13::obj-1::obj-7::obj-41" : 				{
					"parameter_longname" : "live.dial[275]",
					"parameter_shortname" : "Q"
				}
,
				"obj-13::obj-1::obj-7::obj-42" : 				{
					"parameter_longname" : "live.dial[282]",
					"parameter_shortname" : "WDTH"
				}
,
				"obj-13::obj-1::obj-7::obj-43" : 				{
					"parameter_longname" : "live.dial[276]",
					"parameter_shortname" : "BASE"
				}
,
				"obj-13::obj-1::obj-7::obj-5" : 				{
					"parameter_longname" : "live.dial[271]"
				}
,
				"obj-13::obj-1::obj-7::obj-6" : 				{
					"parameter_longname" : "live.dial[280]"
				}
,
				"obj-13::obj-1::obj-7::obj-8" : 				{
					"parameter_longname" : "live.dial[297]"
				}
,
				"obj-13::obj-1::obj-7::obj-9" : 				{
					"parameter_longname" : "live.dial[288]"
				}
,
				"obj-13::obj-1::obj-8::obj-1" : 				{
					"parameter_longname" : "live.dial[270]"
				}
,
				"obj-13::obj-1::obj-8::obj-10" : 				{
					"parameter_longname" : "live.dial[243]"
				}
,
				"obj-13::obj-1::obj-8::obj-11" : 				{
					"parameter_longname" : "live.dial[263]"
				}
,
				"obj-13::obj-1::obj-8::obj-12" : 				{
					"parameter_longname" : "live.dial[269]"
				}
,
				"obj-13::obj-1::obj-8::obj-13" : 				{
					"parameter_longname" : "live.dial[249]"
				}
,
				"obj-13::obj-1::obj-8::obj-14" : 				{
					"parameter_longname" : "live.dial[268]"
				}
,
				"obj-13::obj-1::obj-8::obj-15" : 				{
					"parameter_longname" : "live.dial[259]"
				}
,
				"obj-13::obj-1::obj-8::obj-16" : 				{
					"parameter_longname" : "live.dial[251]"
				}
,
				"obj-13::obj-1::obj-8::obj-17" : 				{
					"parameter_longname" : "live.dial[262]"
				}
,
				"obj-13::obj-1::obj-8::obj-18" : 				{
					"parameter_longname" : "live.dial[246]"
				}
,
				"obj-13::obj-1::obj-8::obj-2" : 				{
					"parameter_longname" : "live.dial[250]"
				}
,
				"obj-13::obj-1::obj-8::obj-3" : 				{
					"parameter_longname" : "live.dial[257]"
				}
,
				"obj-13::obj-1::obj-8::obj-31" : 				{
					"parameter_longname" : "live.dial[261]",
					"parameter_shortname" : "DEC"
				}
,
				"obj-13::obj-1::obj-8::obj-32" : 				{
					"parameter_longname" : "live.dial[245]",
					"parameter_shortname" : "ATK"
				}
,
				"obj-13::obj-1::obj-8::obj-33" : 				{
					"parameter_longname" : "live.dial[255]",
					"parameter_shortname" : "DPTH"
				}
,
				"obj-13::obj-1::obj-8::obj-34" : 				{
					"parameter_longname" : "live.dial[242]",
					"parameter_shortname" : "Q"
				}
,
				"obj-13::obj-1::obj-8::obj-35" : 				{
					"parameter_longname" : "live.dial[265]",
					"parameter_shortname" : "WDTH"
				}
,
				"obj-13::obj-1::obj-8::obj-36" : 				{
					"parameter_longname" : "live.dial[256]",
					"parameter_shortname" : "BASE"
				}
,
				"obj-13::obj-1::obj-8::obj-38" : 				{
					"parameter_longname" : "live.dial[244]",
					"parameter_shortname" : "DEC"
				}
,
				"obj-13::obj-1::obj-8::obj-39" : 				{
					"parameter_longname" : "live.dial[264]",
					"parameter_shortname" : "ATK"
				}
,
				"obj-13::obj-1::obj-8::obj-4" : 				{
					"parameter_longname" : "live.dial[266]"
				}
,
				"obj-13::obj-1::obj-8::obj-40" : 				{
					"parameter_longname" : "live.dial[254]",
					"parameter_shortname" : "DPTH"
				}
,
				"obj-13::obj-1::obj-8::obj-41" : 				{
					"parameter_longname" : "live.dial[248]",
					"parameter_shortname" : "Q"
				}
,
				"obj-13::obj-1::obj-8::obj-42" : 				{
					"parameter_longname" : "live.dial[267]",
					"parameter_shortname" : "WDTH"
				}
,
				"obj-13::obj-1::obj-8::obj-43" : 				{
					"parameter_longname" : "live.dial[258]",
					"parameter_shortname" : "BASE"
				}
,
				"obj-13::obj-1::obj-8::obj-5" : 				{
					"parameter_longname" : "live.dial[247]"
				}
,
				"obj-13::obj-1::obj-8::obj-6" : 				{
					"parameter_longname" : "live.dial[253]"
				}
,
				"obj-13::obj-1::obj-8::obj-8" : 				{
					"parameter_longname" : "live.dial[260]"
				}
,
				"obj-13::obj-1::obj-8::obj-9" : 				{
					"parameter_longname" : "live.dial[252]"
				}
,
				"obj-15::obj-1::obj-14" : 				{
					"parameter_longname" : "Clock Div[1]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-10::obj-16" : 				{
					"parameter_longname" : "on[100]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-10::obj-17" : 				{
					"parameter_longname" : "p1[100]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-10::obj-18" : 				{
					"parameter_longname" : "p2[100]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-10::obj-19" : 				{
					"parameter_longname" : "p3[100]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-10::obj-3" : 				{
					"parameter_longname" : "p0[100]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-11::obj-16" : 				{
					"parameter_longname" : "on[99]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-11::obj-17" : 				{
					"parameter_longname" : "p1[99]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-11::obj-18" : 				{
					"parameter_longname" : "p2[99]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-11::obj-19" : 				{
					"parameter_longname" : "p3[99]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-11::obj-3" : 				{
					"parameter_longname" : "p0[99]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-13::obj-16" : 				{
					"parameter_longname" : "on[98]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-13::obj-17" : 				{
					"parameter_longname" : "p1[98]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-13::obj-18" : 				{
					"parameter_longname" : "p2[98]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-13::obj-19" : 				{
					"parameter_longname" : "p3[98]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-13::obj-3" : 				{
					"parameter_longname" : "p0[98]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-14::obj-16" : 				{
					"parameter_longname" : "on[97]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-14::obj-17" : 				{
					"parameter_longname" : "p1[97]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-14::obj-18" : 				{
					"parameter_longname" : "p2[97]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-14::obj-19" : 				{
					"parameter_longname" : "p3[97]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-14::obj-3" : 				{
					"parameter_longname" : "p0[97]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-15::obj-16" : 				{
					"parameter_longname" : "on[96]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-15::obj-17" : 				{
					"parameter_longname" : "p1[96]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-15::obj-18" : 				{
					"parameter_longname" : "p2[96]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-15::obj-19" : 				{
					"parameter_longname" : "p3[96]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-15::obj-3" : 				{
					"parameter_longname" : "p0[96]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-16::obj-16" : 				{
					"parameter_longname" : "on[95]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-16::obj-17" : 				{
					"parameter_longname" : "p1[95]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-16::obj-18" : 				{
					"parameter_longname" : "p2[95]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-16::obj-19" : 				{
					"parameter_longname" : "p3[95]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-16::obj-3" : 				{
					"parameter_longname" : "p0[95]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-17::obj-16" : 				{
					"parameter_longname" : "on[94]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-17::obj-17" : 				{
					"parameter_longname" : "p1[94]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-17::obj-18" : 				{
					"parameter_longname" : "p2[94]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-17::obj-19" : 				{
					"parameter_longname" : "p3[94]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-17::obj-3" : 				{
					"parameter_longname" : "p0[94]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-1::obj-16" : 				{
					"parameter_longname" : "on[86]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-1::obj-17" : 				{
					"parameter_longname" : "p1[86]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-1::obj-18" : 				{
					"parameter_longname" : "p2[86]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-1::obj-19" : 				{
					"parameter_longname" : "p3[86]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-1::obj-3" : 				{
					"parameter_longname" : "p0[86]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-2::obj-16" : 				{
					"parameter_longname" : "on[87]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-2::obj-17" : 				{
					"parameter_longname" : "p1[87]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-2::obj-18" : 				{
					"parameter_longname" : "p2[87]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-2::obj-19" : 				{
					"parameter_longname" : "p3[87]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-2::obj-3" : 				{
					"parameter_longname" : "p0[87]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-3::obj-16" : 				{
					"parameter_longname" : "on[88]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-3::obj-17" : 				{
					"parameter_longname" : "p1[88]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-3::obj-18" : 				{
					"parameter_longname" : "p2[88]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-3::obj-19" : 				{
					"parameter_longname" : "p3[88]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-3::obj-3" : 				{
					"parameter_longname" : "p0[88]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-4::obj-16" : 				{
					"parameter_longname" : "on[89]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-4::obj-17" : 				{
					"parameter_longname" : "p1[89]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-4::obj-18" : 				{
					"parameter_longname" : "p2[89]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-4::obj-19" : 				{
					"parameter_longname" : "p3[89]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-4::obj-3" : 				{
					"parameter_longname" : "p0[89]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-5::obj-16" : 				{
					"parameter_longname" : "on[93]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-5::obj-17" : 				{
					"parameter_longname" : "p1[93]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-5::obj-18" : 				{
					"parameter_longname" : "p2[93]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-5::obj-19" : 				{
					"parameter_longname" : "p3[93]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-5::obj-3" : 				{
					"parameter_longname" : "p0[93]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-6::obj-16" : 				{
					"parameter_longname" : "on[92]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-6::obj-17" : 				{
					"parameter_longname" : "p1[92]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-6::obj-18" : 				{
					"parameter_longname" : "p2[92]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-6::obj-19" : 				{
					"parameter_longname" : "p3[92]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-6::obj-3" : 				{
					"parameter_longname" : "p0[92]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-7::obj-16" : 				{
					"parameter_longname" : "on[91]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-7::obj-17" : 				{
					"parameter_longname" : "p1[91]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-7::obj-18" : 				{
					"parameter_longname" : "p2[91]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-7::obj-19" : 				{
					"parameter_longname" : "p3[91]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-7::obj-3" : 				{
					"parameter_longname" : "p0[91]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-8::obj-16" : 				{
					"parameter_longname" : "on[90]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-8::obj-17" : 				{
					"parameter_longname" : "p1[90]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-8::obj-18" : 				{
					"parameter_longname" : "p2[90]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-8::obj-19" : 				{
					"parameter_longname" : "p3[90]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-8::obj-3" : 				{
					"parameter_longname" : "p0[90]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-9::obj-16" : 				{
					"parameter_longname" : "on[101]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-9::obj-17" : 				{
					"parameter_longname" : "p1[101]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-9::obj-18" : 				{
					"parameter_longname" : "p2[101]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-9::obj-19" : 				{
					"parameter_longname" : "p3[101]"
				}
,
				"obj-15::obj-1::obj-1::obj-1::obj-9::obj-3" : 				{
					"parameter_longname" : "p0[101]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-10::obj-16" : 				{
					"parameter_longname" : "on[116]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-10::obj-17" : 				{
					"parameter_longname" : "p1[116]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-10::obj-18" : 				{
					"parameter_longname" : "p2[116]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-10::obj-19" : 				{
					"parameter_longname" : "p3[116]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-10::obj-3" : 				{
					"parameter_longname" : "p0[116]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-11::obj-16" : 				{
					"parameter_longname" : "on[115]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-11::obj-17" : 				{
					"parameter_longname" : "p1[115]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-11::obj-18" : 				{
					"parameter_longname" : "p2[115]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-11::obj-19" : 				{
					"parameter_longname" : "p3[115]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-11::obj-3" : 				{
					"parameter_longname" : "p0[115]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-13::obj-16" : 				{
					"parameter_longname" : "on[114]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-13::obj-17" : 				{
					"parameter_longname" : "p1[114]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-13::obj-18" : 				{
					"parameter_longname" : "p2[114]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-13::obj-19" : 				{
					"parameter_longname" : "p3[114]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-13::obj-3" : 				{
					"parameter_longname" : "p0[114]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-14::obj-16" : 				{
					"parameter_longname" : "on[113]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-14::obj-17" : 				{
					"parameter_longname" : "p1[113]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-14::obj-18" : 				{
					"parameter_longname" : "p2[113]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-14::obj-19" : 				{
					"parameter_longname" : "p3[113]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-14::obj-3" : 				{
					"parameter_longname" : "p0[113]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-15::obj-16" : 				{
					"parameter_longname" : "on[112]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-15::obj-17" : 				{
					"parameter_longname" : "p1[112]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-15::obj-18" : 				{
					"parameter_longname" : "p2[112]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-15::obj-19" : 				{
					"parameter_longname" : "p3[112]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-15::obj-3" : 				{
					"parameter_longname" : "p0[112]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-16::obj-16" : 				{
					"parameter_longname" : "on[111]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-16::obj-17" : 				{
					"parameter_longname" : "p1[111]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-16::obj-18" : 				{
					"parameter_longname" : "p2[111]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-16::obj-19" : 				{
					"parameter_longname" : "p3[111]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-16::obj-3" : 				{
					"parameter_longname" : "p0[111]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-17::obj-16" : 				{
					"parameter_longname" : "on[110]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-17::obj-17" : 				{
					"parameter_longname" : "p1[110]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-17::obj-18" : 				{
					"parameter_longname" : "p2[110]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-17::obj-19" : 				{
					"parameter_longname" : "p3[110]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-17::obj-3" : 				{
					"parameter_longname" : "p0[110]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-1::obj-16" : 				{
					"parameter_longname" : "on[102]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-1::obj-17" : 				{
					"parameter_longname" : "p1[102]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-1::obj-18" : 				{
					"parameter_longname" : "p2[102]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-1::obj-19" : 				{
					"parameter_longname" : "p3[102]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-1::obj-3" : 				{
					"parameter_longname" : "p0[102]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-2::obj-16" : 				{
					"parameter_longname" : "on[103]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-2::obj-17" : 				{
					"parameter_longname" : "p1[103]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-2::obj-18" : 				{
					"parameter_longname" : "p2[103]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-2::obj-19" : 				{
					"parameter_longname" : "p3[103]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-2::obj-3" : 				{
					"parameter_longname" : "p0[103]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-3::obj-16" : 				{
					"parameter_longname" : "on[104]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-3::obj-17" : 				{
					"parameter_longname" : "p1[104]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-3::obj-18" : 				{
					"parameter_longname" : "p2[104]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-3::obj-19" : 				{
					"parameter_longname" : "p3[104]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-3::obj-3" : 				{
					"parameter_longname" : "p0[104]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-4::obj-16" : 				{
					"parameter_longname" : "on[105]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-4::obj-17" : 				{
					"parameter_longname" : "p1[105]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-4::obj-18" : 				{
					"parameter_longname" : "p2[105]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-4::obj-19" : 				{
					"parameter_longname" : "p3[105]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-4::obj-3" : 				{
					"parameter_longname" : "p0[105]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-5::obj-16" : 				{
					"parameter_longname" : "on[109]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-5::obj-17" : 				{
					"parameter_longname" : "p1[109]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-5::obj-18" : 				{
					"parameter_longname" : "p2[109]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-5::obj-19" : 				{
					"parameter_longname" : "p3[109]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-5::obj-3" : 				{
					"parameter_longname" : "p0[109]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-6::obj-16" : 				{
					"parameter_longname" : "on[108]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-6::obj-17" : 				{
					"parameter_longname" : "p1[108]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-6::obj-18" : 				{
					"parameter_longname" : "p2[108]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-6::obj-19" : 				{
					"parameter_longname" : "p3[108]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-6::obj-3" : 				{
					"parameter_longname" : "p0[108]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-7::obj-16" : 				{
					"parameter_longname" : "on[107]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-7::obj-17" : 				{
					"parameter_longname" : "p1[107]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-7::obj-18" : 				{
					"parameter_longname" : "p2[107]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-7::obj-19" : 				{
					"parameter_longname" : "p3[107]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-7::obj-3" : 				{
					"parameter_longname" : "p0[107]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-8::obj-16" : 				{
					"parameter_longname" : "on[106]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-8::obj-17" : 				{
					"parameter_longname" : "p1[106]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-8::obj-18" : 				{
					"parameter_longname" : "p2[106]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-8::obj-19" : 				{
					"parameter_longname" : "p3[106]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-8::obj-3" : 				{
					"parameter_longname" : "p0[106]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-9::obj-16" : 				{
					"parameter_longname" : "on[117]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-9::obj-17" : 				{
					"parameter_longname" : "p1[117]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-9::obj-18" : 				{
					"parameter_longname" : "p2[117]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-9::obj-19" : 				{
					"parameter_longname" : "p3[117]"
				}
,
				"obj-15::obj-1::obj-1::obj-2::obj-9::obj-3" : 				{
					"parameter_longname" : "p0[117]"
				}
,
				"obj-15::obj-1::obj-2" : 				{
					"parameter_longname" : "Loop[1]"
				}
,
				"obj-15::obj-1::obj-26::obj-29" : 				{
					"parameter_longname" : "start[3]"
				}
,
				"obj-15::obj-1::obj-26::obj-30" : 				{
					"parameter_longname" : "end[3]"
				}
,
				"obj-15::obj-1::obj-26::obj-31" : 				{
					"parameter_longname" : "curve3[3]"
				}
,
				"obj-15::obj-1::obj-26::obj-34" : 				{
					"parameter_longname" : "X1[3]"
				}
,
				"obj-15::obj-1::obj-26::obj-35" : 				{
					"parameter_longname" : "y1[3]"
				}
,
				"obj-15::obj-1::obj-26::obj-36" : 				{
					"parameter_longname" : "curve1[3]"
				}
,
				"obj-15::obj-1::obj-26::obj-38" : 				{
					"parameter_longname" : "curve2[3]"
				}
,
				"obj-15::obj-1::obj-26::obj-39" : 				{
					"parameter_longname" : "y2[3]"
				}
,
				"obj-15::obj-1::obj-26::obj-40" : 				{
					"parameter_longname" : "x2[3]"
				}
,
				"obj-15::obj-1::obj-28::obj-29" : 				{
					"parameter_longname" : "start[4]"
				}
,
				"obj-15::obj-1::obj-28::obj-30" : 				{
					"parameter_longname" : "end[4]"
				}
,
				"obj-15::obj-1::obj-28::obj-31" : 				{
					"parameter_longname" : "curve3[4]"
				}
,
				"obj-15::obj-1::obj-28::obj-34" : 				{
					"parameter_longname" : "X1[4]"
				}
,
				"obj-15::obj-1::obj-28::obj-35" : 				{
					"parameter_longname" : "y1[4]"
				}
,
				"obj-15::obj-1::obj-28::obj-36" : 				{
					"parameter_longname" : "curve1[4]"
				}
,
				"obj-15::obj-1::obj-28::obj-38" : 				{
					"parameter_longname" : "curve2[4]"
				}
,
				"obj-15::obj-1::obj-28::obj-39" : 				{
					"parameter_longname" : "y2[4]"
				}
,
				"obj-15::obj-1::obj-28::obj-40" : 				{
					"parameter_longname" : "x2[4]"
				}
,
				"obj-17::obj-1::obj-14" : 				{
					"parameter_longname" : "Clock Div[2]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-10::obj-16" : 				{
					"parameter_longname" : "on[131]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-10::obj-17" : 				{
					"parameter_longname" : "p1[131]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-10::obj-18" : 				{
					"parameter_longname" : "p2[131]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-10::obj-19" : 				{
					"parameter_longname" : "p3[131]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-10::obj-3" : 				{
					"parameter_longname" : "p0[131]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-11::obj-16" : 				{
					"parameter_longname" : "on[130]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-11::obj-17" : 				{
					"parameter_longname" : "p1[130]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-11::obj-18" : 				{
					"parameter_longname" : "p2[130]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-11::obj-19" : 				{
					"parameter_longname" : "p3[130]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-11::obj-3" : 				{
					"parameter_longname" : "p0[130]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-13::obj-16" : 				{
					"parameter_longname" : "on[129]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-13::obj-17" : 				{
					"parameter_longname" : "p1[129]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-13::obj-18" : 				{
					"parameter_longname" : "p2[129]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-13::obj-19" : 				{
					"parameter_longname" : "p3[129]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-13::obj-3" : 				{
					"parameter_longname" : "p0[129]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-14::obj-16" : 				{
					"parameter_longname" : "on[128]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-14::obj-17" : 				{
					"parameter_longname" : "p1[128]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-14::obj-18" : 				{
					"parameter_longname" : "p2[128]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-14::obj-19" : 				{
					"parameter_longname" : "p3[128]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-14::obj-3" : 				{
					"parameter_longname" : "p0[128]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-15::obj-16" : 				{
					"parameter_longname" : "on[127]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-15::obj-17" : 				{
					"parameter_longname" : "p1[127]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-15::obj-18" : 				{
					"parameter_longname" : "p2[127]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-15::obj-19" : 				{
					"parameter_longname" : "p3[127]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-15::obj-3" : 				{
					"parameter_longname" : "p0[127]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-16::obj-16" : 				{
					"parameter_longname" : "on[126]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-16::obj-17" : 				{
					"parameter_longname" : "p1[126]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-16::obj-18" : 				{
					"parameter_longname" : "p2[126]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-16::obj-19" : 				{
					"parameter_longname" : "p3[126]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-16::obj-3" : 				{
					"parameter_longname" : "p0[126]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-17::obj-16" : 				{
					"parameter_longname" : "on[125]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-17::obj-17" : 				{
					"parameter_longname" : "p1[125]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-17::obj-18" : 				{
					"parameter_longname" : "p2[125]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-17::obj-19" : 				{
					"parameter_longname" : "p3[125]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-17::obj-3" : 				{
					"parameter_longname" : "p0[125]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-2::obj-16" : 				{
					"parameter_longname" : "on[118]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-2::obj-17" : 				{
					"parameter_longname" : "p1[118]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-2::obj-18" : 				{
					"parameter_longname" : "p2[118]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-2::obj-19" : 				{
					"parameter_longname" : "p3[118]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-2::obj-3" : 				{
					"parameter_longname" : "p0[118]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-3::obj-16" : 				{
					"parameter_longname" : "on[119]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-3::obj-17" : 				{
					"parameter_longname" : "p1[119]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-3::obj-18" : 				{
					"parameter_longname" : "p2[119]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-3::obj-19" : 				{
					"parameter_longname" : "p3[119]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-3::obj-3" : 				{
					"parameter_longname" : "p0[119]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-4::obj-16" : 				{
					"parameter_longname" : "on[120]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-4::obj-17" : 				{
					"parameter_longname" : "p1[120]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-4::obj-18" : 				{
					"parameter_longname" : "p2[120]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-4::obj-19" : 				{
					"parameter_longname" : "p3[120]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-4::obj-3" : 				{
					"parameter_longname" : "p0[120]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-5::obj-16" : 				{
					"parameter_longname" : "on[124]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-5::obj-17" : 				{
					"parameter_longname" : "p1[124]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-5::obj-18" : 				{
					"parameter_longname" : "p2[124]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-5::obj-19" : 				{
					"parameter_longname" : "p3[124]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-5::obj-3" : 				{
					"parameter_longname" : "p0[124]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-6::obj-16" : 				{
					"parameter_longname" : "on[123]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-6::obj-17" : 				{
					"parameter_longname" : "p1[123]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-6::obj-18" : 				{
					"parameter_longname" : "p2[123]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-6::obj-19" : 				{
					"parameter_longname" : "p3[123]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-6::obj-3" : 				{
					"parameter_longname" : "p0[123]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-7::obj-16" : 				{
					"parameter_longname" : "on[122]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-7::obj-17" : 				{
					"parameter_longname" : "p1[122]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-7::obj-18" : 				{
					"parameter_longname" : "p2[122]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-7::obj-19" : 				{
					"parameter_longname" : "p3[122]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-7::obj-3" : 				{
					"parameter_longname" : "p0[122]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-8::obj-16" : 				{
					"parameter_longname" : "on[121]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-8::obj-17" : 				{
					"parameter_longname" : "p1[121]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-8::obj-18" : 				{
					"parameter_longname" : "p2[121]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-8::obj-19" : 				{
					"parameter_longname" : "p3[121]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-8::obj-3" : 				{
					"parameter_longname" : "p0[121]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-9::obj-16" : 				{
					"parameter_longname" : "on[132]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-9::obj-17" : 				{
					"parameter_longname" : "p1[132]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-9::obj-18" : 				{
					"parameter_longname" : "p2[132]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-9::obj-19" : 				{
					"parameter_longname" : "p3[132]"
				}
,
				"obj-17::obj-1::obj-1::obj-1::obj-9::obj-3" : 				{
					"parameter_longname" : "p0[132]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-10::obj-16" : 				{
					"parameter_longname" : "on[147]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-10::obj-17" : 				{
					"parameter_longname" : "p1[147]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-10::obj-18" : 				{
					"parameter_longname" : "p2[147]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-10::obj-19" : 				{
					"parameter_longname" : "p3[147]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-10::obj-3" : 				{
					"parameter_longname" : "p0[147]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-11::obj-16" : 				{
					"parameter_longname" : "on[146]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-11::obj-17" : 				{
					"parameter_longname" : "p1[146]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-11::obj-18" : 				{
					"parameter_longname" : "p2[146]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-11::obj-19" : 				{
					"parameter_longname" : "p3[146]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-11::obj-3" : 				{
					"parameter_longname" : "p0[146]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-13::obj-16" : 				{
					"parameter_longname" : "on[145]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-13::obj-17" : 				{
					"parameter_longname" : "p1[145]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-13::obj-18" : 				{
					"parameter_longname" : "p2[145]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-13::obj-19" : 				{
					"parameter_longname" : "p3[145]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-13::obj-3" : 				{
					"parameter_longname" : "p0[145]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-14::obj-16" : 				{
					"parameter_longname" : "on[144]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-14::obj-17" : 				{
					"parameter_longname" : "p1[144]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-14::obj-18" : 				{
					"parameter_longname" : "p2[144]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-14::obj-19" : 				{
					"parameter_longname" : "p3[144]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-14::obj-3" : 				{
					"parameter_longname" : "p0[144]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-15::obj-16" : 				{
					"parameter_longname" : "on[143]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-15::obj-17" : 				{
					"parameter_longname" : "p1[143]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-15::obj-18" : 				{
					"parameter_longname" : "p2[143]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-15::obj-19" : 				{
					"parameter_longname" : "p3[143]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-15::obj-3" : 				{
					"parameter_longname" : "p0[143]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-16::obj-16" : 				{
					"parameter_longname" : "on[142]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-16::obj-17" : 				{
					"parameter_longname" : "p1[142]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-16::obj-18" : 				{
					"parameter_longname" : "p2[142]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-16::obj-19" : 				{
					"parameter_longname" : "p3[142]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-16::obj-3" : 				{
					"parameter_longname" : "p0[142]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-17::obj-16" : 				{
					"parameter_longname" : "on[141]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-17::obj-17" : 				{
					"parameter_longname" : "p1[141]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-17::obj-18" : 				{
					"parameter_longname" : "p2[141]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-17::obj-19" : 				{
					"parameter_longname" : "p3[141]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-17::obj-3" : 				{
					"parameter_longname" : "p0[141]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-1::obj-16" : 				{
					"parameter_longname" : "on[133]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-1::obj-17" : 				{
					"parameter_longname" : "p1[133]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-1::obj-18" : 				{
					"parameter_longname" : "p2[133]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-1::obj-19" : 				{
					"parameter_longname" : "p3[133]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-1::obj-3" : 				{
					"parameter_longname" : "p0[133]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-2::obj-16" : 				{
					"parameter_longname" : "on[134]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-2::obj-17" : 				{
					"parameter_longname" : "p1[134]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-2::obj-18" : 				{
					"parameter_longname" : "p2[134]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-2::obj-19" : 				{
					"parameter_longname" : "p3[134]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-2::obj-3" : 				{
					"parameter_longname" : "p0[134]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-3::obj-16" : 				{
					"parameter_longname" : "on[135]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-3::obj-17" : 				{
					"parameter_longname" : "p1[135]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-3::obj-18" : 				{
					"parameter_longname" : "p2[135]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-3::obj-19" : 				{
					"parameter_longname" : "p3[135]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-3::obj-3" : 				{
					"parameter_longname" : "p0[135]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-4::obj-16" : 				{
					"parameter_longname" : "on[136]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-4::obj-17" : 				{
					"parameter_longname" : "p1[136]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-4::obj-18" : 				{
					"parameter_longname" : "p2[136]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-4::obj-19" : 				{
					"parameter_longname" : "p3[136]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-4::obj-3" : 				{
					"parameter_longname" : "p0[136]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-5::obj-16" : 				{
					"parameter_longname" : "on[140]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-5::obj-17" : 				{
					"parameter_longname" : "p1[140]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-5::obj-18" : 				{
					"parameter_longname" : "p2[140]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-5::obj-19" : 				{
					"parameter_longname" : "p3[140]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-5::obj-3" : 				{
					"parameter_longname" : "p0[140]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-6::obj-16" : 				{
					"parameter_longname" : "on[139]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-6::obj-17" : 				{
					"parameter_longname" : "p1[139]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-6::obj-18" : 				{
					"parameter_longname" : "p2[139]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-6::obj-19" : 				{
					"parameter_longname" : "p3[139]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-6::obj-3" : 				{
					"parameter_longname" : "p0[139]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-7::obj-16" : 				{
					"parameter_longname" : "on[138]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-7::obj-17" : 				{
					"parameter_longname" : "p1[138]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-7::obj-18" : 				{
					"parameter_longname" : "p2[138]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-7::obj-19" : 				{
					"parameter_longname" : "p3[138]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-7::obj-3" : 				{
					"parameter_longname" : "p0[138]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-8::obj-16" : 				{
					"parameter_longname" : "on[137]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-8::obj-17" : 				{
					"parameter_longname" : "p1[137]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-8::obj-18" : 				{
					"parameter_longname" : "p2[137]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-8::obj-19" : 				{
					"parameter_longname" : "p3[137]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-8::obj-3" : 				{
					"parameter_longname" : "p0[137]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-9::obj-16" : 				{
					"parameter_longname" : "on[148]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-9::obj-17" : 				{
					"parameter_longname" : "p1[148]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-9::obj-18" : 				{
					"parameter_longname" : "p2[148]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-9::obj-19" : 				{
					"parameter_longname" : "p3[148]"
				}
,
				"obj-17::obj-1::obj-1::obj-2::obj-9::obj-3" : 				{
					"parameter_longname" : "p0[148]"
				}
,
				"obj-17::obj-1::obj-2" : 				{
					"parameter_longname" : "Loop[2]"
				}
,
				"obj-17::obj-1::obj-26::obj-29" : 				{
					"parameter_longname" : "start[5]"
				}
,
				"obj-17::obj-1::obj-26::obj-30" : 				{
					"parameter_longname" : "end[5]"
				}
,
				"obj-17::obj-1::obj-26::obj-31" : 				{
					"parameter_longname" : "curve3[5]"
				}
,
				"obj-17::obj-1::obj-26::obj-34" : 				{
					"parameter_longname" : "X1[5]"
				}
,
				"obj-17::obj-1::obj-26::obj-35" : 				{
					"parameter_longname" : "y1[5]"
				}
,
				"obj-17::obj-1::obj-26::obj-36" : 				{
					"parameter_longname" : "curve1[5]"
				}
,
				"obj-17::obj-1::obj-26::obj-38" : 				{
					"parameter_longname" : "curve2[5]"
				}
,
				"obj-17::obj-1::obj-26::obj-39" : 				{
					"parameter_longname" : "y2[5]"
				}
,
				"obj-17::obj-1::obj-26::obj-40" : 				{
					"parameter_longname" : "x2[5]"
				}
,
				"obj-17::obj-1::obj-28::obj-29" : 				{
					"parameter_longname" : "start[6]"
				}
,
				"obj-17::obj-1::obj-28::obj-30" : 				{
					"parameter_longname" : "end[6]"
				}
,
				"obj-17::obj-1::obj-28::obj-31" : 				{
					"parameter_longname" : "curve3[6]"
				}
,
				"obj-17::obj-1::obj-28::obj-34" : 				{
					"parameter_longname" : "X1[6]"
				}
,
				"obj-17::obj-1::obj-28::obj-35" : 				{
					"parameter_longname" : "y1[6]"
				}
,
				"obj-17::obj-1::obj-28::obj-36" : 				{
					"parameter_longname" : "curve1[6]"
				}
,
				"obj-17::obj-1::obj-28::obj-38" : 				{
					"parameter_longname" : "curve2[6]"
				}
,
				"obj-17::obj-1::obj-28::obj-39" : 				{
					"parameter_longname" : "y2[6]"
				}
,
				"obj-17::obj-1::obj-28::obj-40" : 				{
					"parameter_longname" : "x2[6]"
				}
,
				"obj-2::obj-5::obj-11" : 				{
					"parameter_longname" : "live.tab[33]"
				}
,
				"obj-2::obj-5::obj-13" : 				{
					"parameter_longname" : "live.dial[362]"
				}
,
				"obj-2::obj-5::obj-16" : 				{
					"parameter_longname" : "live.dial[358]"
				}
,
				"obj-2::obj-5::obj-19" : 				{
					"parameter_longname" : "live.dial[359]"
				}
,
				"obj-2::obj-5::obj-22" : 				{
					"parameter_longname" : "live.dial[361]"
				}
,
				"obj-2::obj-5::obj-35::obj-31" : 				{
					"parameter_invisible" : 0,
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "MIX",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-2::obj-5::obj-35::obj-32" : 				{
					"parameter_invisible" : 0,
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "WID",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-2::obj-5::obj-35::obj-33" : 				{
					"parameter_invisible" : 0,
					"parameter_modmode" : 0,
					"parameter_range" : [ -64, 63 ],
					"parameter_shortname" : "FB",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-2::obj-5::obj-35::obj-34" : 				{
					"parameter_invisible" : 0,
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "SPD",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-2::obj-5::obj-35::obj-35" : 				{
					"parameter_invisible" : 0,
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "DEP",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-2::obj-5::obj-35::obj-36" : 				{
					"parameter_invisible" : 0,
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "DEL",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-2::obj-5::obj-35::obj-38" : 				{
					"parameter_invisible" : 0,
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "SEND",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-2::obj-5::obj-35::obj-39" : 				{
					"parameter_invisible" : 0,
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "WDTH",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-2::obj-5::obj-35::obj-40" : 				{
					"parameter_invisible" : 0,
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "BASE",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-2::obj-5::obj-35::obj-41" : 				{
					"parameter_invisible" : 0,
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "VOL",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-2::obj-5::obj-35::obj-42" : 				{
					"parameter_invisible" : 0,
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "FB",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-2::obj-5::obj-35::obj-43" : 				{
					"parameter_invisible" : 0,
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "TIME",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-2::obj-5::obj-48" : 				{
					"parameter_longname" : "live.dial[363]"
				}
,
				"obj-2::obj-5::obj-51" : 				{
					"parameter_longname" : "live.tab[34]"
				}
,
				"obj-2::obj-5::obj-8" : 				{
					"parameter_longname" : "live.tab[35]"
				}
,
				"obj-2::obj-5::obj-9" : 				{
					"parameter_longname" : "live.dial[360]"
				}
,
				"obj-9::obj-5::obj-11" : 				{
					"parameter_longname" : "live.tab[32]"
				}
,
				"obj-9::obj-5::obj-15" : 				{
					"parameter_longname" : "live.tab[31]"
				}
,
				"obj-9::obj-5::obj-18" : 				{
					"parameter_longname" : "live.tab[28]"
				}
,
				"obj-9::obj-5::obj-21" : 				{
					"parameter_longname" : "live.tab[29]"
				}
,
				"obj-9::obj-5::obj-35::obj-1" : 				{
					"parameter_longname" : "live.dial[113]"
				}
,
				"obj-9::obj-5::obj-35::obj-10" : 				{
					"parameter_longname" : "live.dial[108]"
				}
,
				"obj-9::obj-5::obj-35::obj-11" : 				{
					"parameter_longname" : "live.dial[104]"
				}
,
				"obj-9::obj-5::obj-35::obj-12" : 				{
					"parameter_longname" : "live.dial[100]"
				}
,
				"obj-9::obj-5::obj-35::obj-13" : 				{
					"parameter_longname" : "live.dial[97]"
				}
,
				"obj-9::obj-5::obj-35::obj-14" : 				{
					"parameter_longname" : "live.dial[107]"
				}
,
				"obj-9::obj-5::obj-35::obj-15" : 				{
					"parameter_longname" : "live.dial[103]"
				}
,
				"obj-9::obj-5::obj-35::obj-16" : 				{
					"parameter_longname" : "live.dial[98]"
				}
,
				"obj-9::obj-5::obj-35::obj-17" : 				{
					"parameter_longname" : "live.dial[123]"
				}
,
				"obj-9::obj-5::obj-35::obj-18" : 				{
					"parameter_longname" : "live.dial[99]"
				}
,
				"obj-9::obj-5::obj-35::obj-2" : 				{
					"parameter_longname" : "live.dial[117]"
				}
,
				"obj-9::obj-5::obj-35::obj-3" : 				{
					"parameter_longname" : "live.dial[120]"
				}
,
				"obj-9::obj-5::obj-35::obj-31" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "live.dial[116]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "DEC",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-9::obj-5::obj-35::obj-32" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "live.dial[111]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "ATK",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-9::obj-5::obj-35::obj-33" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "live.dial[112]",
					"parameter_modmode" : 0,
					"parameter_range" : [ -64, 63 ],
					"parameter_shortname" : "DPTH",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-9::obj-5::obj-35::obj-34" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "live.dial[101]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "Q",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-9::obj-5::obj-35::obj-35" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "live.dial[125]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "WDTH",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-9::obj-5::obj-35::obj-36" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "live.dial[121]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "BASE",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-9::obj-5::obj-35::obj-38" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "live.dial[122]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "Q2",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-9::obj-5::obj-35::obj-39" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "live.dial[119]",
					"parameter_modmode" : 0,
					"parameter_range" : [ -64, 63 ],
					"parameter_shortname" : "GN2",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-9::obj-5::obj-35::obj-4" : 				{
					"parameter_longname" : "live.dial[105]"
				}
,
				"obj-9::obj-5::obj-35::obj-40" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "live.dial[115]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "FRQ2",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-9::obj-5::obj-35::obj-41" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "live.dial[110]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "Q1",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-9::obj-5::obj-35::obj-42" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "live.dial[106]",
					"parameter_modmode" : 0,
					"parameter_range" : [ -64, 63 ],
					"parameter_shortname" : "GN1",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-9::obj-5::obj-35::obj-43" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "live.dial[102]",
					"parameter_modmode" : 0,
					"parameter_range" : [ 0, 127 ],
					"parameter_shortname" : "FRQ1",
					"parameter_type" : 1,
					"parameter_unitstyle" : 0
				}
,
				"obj-9::obj-5::obj-35::obj-5" : 				{
					"parameter_longname" : "live.dial[109]"
				}
,
				"obj-9::obj-5::obj-35::obj-6" : 				{
					"parameter_longname" : "live.dial[114]"
				}
,
				"obj-9::obj-5::obj-35::obj-8" : 				{
					"parameter_longname" : "live.dial[124]"
				}
,
				"obj-9::obj-5::obj-35::obj-9" : 				{
					"parameter_longname" : "live.dial[118]"
				}
,
				"obj-9::obj-5::obj-51" : 				{
					"parameter_longname" : "live.tab[27]"
				}
,
				"obj-9::obj-5::obj-8" : 				{
					"parameter_longname" : "live.tab[30]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "windows.js",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "push.hub.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "octa.out.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "octa.fx.global.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ezpreset.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "fxglobal.json",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "seq32cc.save.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "push.pattrstorage.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "seq51.json",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "seq32cc.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "step32.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "step16.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "trig1.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "clkdiv.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "function4.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "velocount.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "push.playpads.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "octa.knobs.mod.save.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "octa.knobs.mod.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "octa.mod.core.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "octa.knobs.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "octa.knobs.fx.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "inst5.json",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "octa.scenes.all.save.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "octa.scenes.all.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "octa.scene.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "octa.scene.fx.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bplus.maxpat",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "scenes.json",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "seq52.json",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "inst1.json",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "seq11.json",
				"bootpath" : "~/Library/Mobile Documents/com~apple~CloudDocs/Music/MaxSeq40",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
