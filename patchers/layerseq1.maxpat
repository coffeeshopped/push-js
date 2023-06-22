{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 4.0, 104.0, 1242.0, 885.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
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
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 633.0, 553.5, 36.0, 22.0 ],
					"text" : "defer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 639.0, 352.0, 36.0, 22.0 ],
					"text" : "defer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 780.0, 253.0, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 780.0, 221.0, 77.0, 22.0 ],
					"text" : "loadmess #1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.670588, 0.74902, 0.807843, 1.0 ],
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 780.0, 285.0, 138.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 132.0, 35.0, 18.0 ],
					"text" : "#1",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.670588, 0.74902, 0.807843, 1.0 ],
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 664.0, 108.0, 136.0, 18.0 ],
					"presentation" : 1,
					"presentation_linecount" : 9,
					"presentation_rect" : [ 10.0, 10.0, 17.0, 107.0 ],
					"text" : "l ayerseq1",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-39",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 584.0, 40.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 619.75, 475.5, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 333.333333015441895, 37.0, 37.0 ],
					"varname" : "cycle2on"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 633.0, 519.5, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 659.0, 457.5, 29.5, 22.0 ],
					"text" : "% 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "number",
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 669.5, 428.5, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 372.333333015441895, 37.0, 22.0 ],
					"varname" : "cycle2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 659.0, 483.5, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 613.75, 428.5, 48.0, 22.0 ],
					"text" : "change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 613.75, 402.5, 29.5, 22.0 ],
					"text" : "/ 32"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 625.75, 278.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 166.999999940395355, 37.0, 37.0 ],
					"varname" : "cycle1on"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 639.0, 322.0, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-16",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.75, 809.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 92.0, 29.0, 56.0, 22.0 ],
					"restore" : 					{
						"cycle1" : [ 4 ],
						"cycle1on" : [ 1 ],
						"cycle2" : [ 4 ],
						"cycle2on" : [ 1 ]
					}
,
					"text" : "autopattr",
					"varname" : "u559002805"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 665.0, 260.0, 29.5, 22.0 ],
					"text" : "% 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "number",
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 675.5, 231.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 205.999999940395355, 37.0, 22.0 ],
					"varname" : "cycle1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 665.0, 286.0, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 619.75, 231.0, 48.0, 22.0 ],
					"text" : "change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 619.75, 205.0, 29.5, 22.0 ],
					"text" : "/ 32"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 584.0, 79.0, 29.5, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 67.0, 744.0, 32.0, 22.0 ],
					"text" : "t b 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 744.0, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 40.25, 709.0, 29.5, 22.0 ],
					"text" : "t 1 l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 31.75, 782.0, 38.0, 22.0 ],
					"text" : "zl reg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "int", "int", "int" ],
					"patching_rect" : [ 33.0, 111.0, 50.5, 22.0 ],
					"text" : "t b i i i"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-level2" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-8",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "step32.store.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 82.0, 516.5, 514.0, 169.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.999999642372131, 333.333333015441895, 514.0, 167.0 ],
					"varname" : "level2",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-level1" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "step32.store.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 82.0, 329.0, 514.0, 169.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.999999642372131, 166.999999940395355, 514.0, 167.0 ],
					"varname" : "level1",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-level0" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-54",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "step32.store.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 82.0, 143.0, 514.0, 169.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.999999642372131, 0.0, 514.0, 166.999999940395355 ],
					"varname" : "level0",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.880169, 0.755396, 0.471904, 1.0 ],
					"id" : "obj-43",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 780.0, 329.0, 29.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 545.333345770835876, 500.333333015441895 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-10", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-10", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"order" : 1,
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"order" : 0,
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1::obj-47::obj-1::obj-10::obj-16" : [ "on[46]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-10::obj-17" : [ "p1[46]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-10::obj-18" : [ "p2[46]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-10::obj-19" : [ "p3[46]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-10::obj-3" : [ "p0[46]", "p0", 0 ],
			"obj-1::obj-47::obj-1::obj-11::obj-16" : [ "on[45]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-11::obj-17" : [ "p1[45]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-11::obj-18" : [ "p2[45]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-11::obj-19" : [ "p3[45]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-11::obj-3" : [ "p0[45]", "p0", 0 ],
			"obj-1::obj-47::obj-1::obj-13::obj-16" : [ "on[44]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-13::obj-17" : [ "p1[44]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-13::obj-18" : [ "p2[44]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-13::obj-19" : [ "p3[44]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-13::obj-3" : [ "p0[44]", "p0", 0 ],
			"obj-1::obj-47::obj-1::obj-14::obj-16" : [ "on[43]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-14::obj-17" : [ "p1[43]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-14::obj-18" : [ "p2[43]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-14::obj-19" : [ "p3[43]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-14::obj-3" : [ "p0[43]", "p0", 0 ],
			"obj-1::obj-47::obj-1::obj-15::obj-16" : [ "on[42]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-15::obj-17" : [ "p1[42]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-15::obj-18" : [ "p2[42]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-15::obj-19" : [ "p3[42]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-15::obj-3" : [ "p0[42]", "p0", 0 ],
			"obj-1::obj-47::obj-1::obj-16::obj-16" : [ "on[41]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-16::obj-17" : [ "p1[41]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-16::obj-18" : [ "p2[41]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-16::obj-19" : [ "p3[41]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-16::obj-3" : [ "p0[41]", "p0", 0 ],
			"obj-1::obj-47::obj-1::obj-17::obj-16" : [ "on[40]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-17::obj-17" : [ "p1[40]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-17::obj-18" : [ "p2[40]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-17::obj-19" : [ "p3[40]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-17::obj-3" : [ "p0[40]", "p0", 0 ],
			"obj-1::obj-47::obj-1::obj-1::obj-16" : [ "on[32]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-1::obj-17" : [ "p1[32]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-1::obj-18" : [ "p2[32]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-1::obj-19" : [ "p3[32]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-1::obj-3" : [ "p0[32]", "p0", 0 ],
			"obj-1::obj-47::obj-1::obj-2::obj-16" : [ "on[33]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-2::obj-17" : [ "p1[33]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-2::obj-18" : [ "p2[33]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-2::obj-19" : [ "p3[33]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-2::obj-3" : [ "p0[33]", "p0", 0 ],
			"obj-1::obj-47::obj-1::obj-3::obj-16" : [ "on[34]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-3::obj-17" : [ "p1[34]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-3::obj-18" : [ "p2[34]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-3::obj-19" : [ "p3[34]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-3::obj-3" : [ "p0[34]", "p0", 0 ],
			"obj-1::obj-47::obj-1::obj-4::obj-16" : [ "on[35]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-4::obj-17" : [ "p1[35]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-4::obj-18" : [ "p2[35]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-4::obj-19" : [ "p3[35]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-4::obj-3" : [ "p0[35]", "p0", 0 ],
			"obj-1::obj-47::obj-1::obj-5::obj-16" : [ "on[39]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-5::obj-17" : [ "p1[39]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-5::obj-18" : [ "p2[39]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-5::obj-19" : [ "p3[39]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-5::obj-3" : [ "p0[39]", "p0", 0 ],
			"obj-1::obj-47::obj-1::obj-6::obj-16" : [ "on[38]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-6::obj-17" : [ "p1[38]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-6::obj-18" : [ "p2[38]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-6::obj-19" : [ "p3[38]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-6::obj-3" : [ "p0[38]", "p0", 0 ],
			"obj-1::obj-47::obj-1::obj-7::obj-16" : [ "on[37]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-7::obj-17" : [ "p1[37]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-7::obj-18" : [ "p2[37]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-7::obj-19" : [ "p3[37]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-7::obj-3" : [ "p0[37]", "p0", 0 ],
			"obj-1::obj-47::obj-1::obj-8::obj-16" : [ "on[36]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-8::obj-17" : [ "p1[36]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-8::obj-18" : [ "p2[36]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-8::obj-19" : [ "p3[36]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-8::obj-3" : [ "p0[36]", "p0", 0 ],
			"obj-1::obj-47::obj-1::obj-9::obj-16" : [ "on[47]", "on", 0 ],
			"obj-1::obj-47::obj-1::obj-9::obj-17" : [ "p1[47]", "p1", 0 ],
			"obj-1::obj-47::obj-1::obj-9::obj-18" : [ "p2[47]", "p2", 0 ],
			"obj-1::obj-47::obj-1::obj-9::obj-19" : [ "p3[47]", "p3", 0 ],
			"obj-1::obj-47::obj-1::obj-9::obj-3" : [ "p0[47]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-10::obj-16" : [ "on[62]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-10::obj-17" : [ "p1[62]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-10::obj-18" : [ "p2[62]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-10::obj-19" : [ "p3[62]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-10::obj-3" : [ "p0[62]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-11::obj-16" : [ "on[61]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-11::obj-17" : [ "p1[61]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-11::obj-18" : [ "p2[61]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-11::obj-19" : [ "p3[61]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-11::obj-3" : [ "p0[61]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-13::obj-16" : [ "on[60]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-13::obj-17" : [ "p1[60]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-13::obj-18" : [ "p2[60]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-13::obj-19" : [ "p3[60]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-13::obj-3" : [ "p0[60]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-14::obj-16" : [ "on[59]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-14::obj-17" : [ "p1[59]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-14::obj-18" : [ "p2[59]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-14::obj-19" : [ "p3[59]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-14::obj-3" : [ "p0[59]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-15::obj-16" : [ "on[58]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-15::obj-17" : [ "p1[58]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-15::obj-18" : [ "p2[58]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-15::obj-19" : [ "p3[58]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-15::obj-3" : [ "p0[58]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-16::obj-16" : [ "on[57]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-16::obj-17" : [ "p1[57]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-16::obj-18" : [ "p2[57]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-16::obj-19" : [ "p3[57]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-16::obj-3" : [ "p0[57]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-17::obj-16" : [ "on[56]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-17::obj-17" : [ "p1[56]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-17::obj-18" : [ "p2[56]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-17::obj-19" : [ "p3[56]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-17::obj-3" : [ "p0[56]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-1::obj-16" : [ "on[48]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-1::obj-17" : [ "p1[48]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-1::obj-18" : [ "p2[48]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-1::obj-19" : [ "p3[48]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-1::obj-3" : [ "p0[48]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-2::obj-16" : [ "on[49]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-2::obj-17" : [ "p1[49]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-2::obj-18" : [ "p2[49]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-2::obj-19" : [ "p3[49]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-2::obj-3" : [ "p0[49]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-3::obj-16" : [ "on[50]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-3::obj-17" : [ "p1[50]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-3::obj-18" : [ "p2[50]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-3::obj-19" : [ "p3[50]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-3::obj-3" : [ "p0[50]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-4::obj-16" : [ "on[51]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-4::obj-17" : [ "p1[51]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-4::obj-18" : [ "p2[51]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-4::obj-19" : [ "p3[51]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-4::obj-3" : [ "p0[51]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-5::obj-16" : [ "on[55]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-5::obj-17" : [ "p1[55]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-5::obj-18" : [ "p2[55]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-5::obj-19" : [ "p3[55]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-5::obj-3" : [ "p0[55]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-6::obj-16" : [ "on[54]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-6::obj-17" : [ "p1[54]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-6::obj-18" : [ "p2[54]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-6::obj-19" : [ "p3[54]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-6::obj-3" : [ "p0[54]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-7::obj-16" : [ "on[53]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-7::obj-17" : [ "p1[53]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-7::obj-18" : [ "p2[53]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-7::obj-19" : [ "p3[53]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-7::obj-3" : [ "p0[53]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-8::obj-16" : [ "on[52]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-8::obj-17" : [ "p1[52]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-8::obj-18" : [ "p2[52]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-8::obj-19" : [ "p3[52]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-8::obj-3" : [ "p0[52]", "p0", 0 ],
			"obj-1::obj-47::obj-2::obj-9::obj-16" : [ "on[63]", "on", 0 ],
			"obj-1::obj-47::obj-2::obj-9::obj-17" : [ "p1[63]", "p1", 0 ],
			"obj-1::obj-47::obj-2::obj-9::obj-18" : [ "p2[63]", "p2", 0 ],
			"obj-1::obj-47::obj-2::obj-9::obj-19" : [ "p3[63]", "p3", 0 ],
			"obj-1::obj-47::obj-2::obj-9::obj-3" : [ "p0[63]", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-10::obj-16" : [ "on[14]", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-10::obj-17" : [ "p1[14]", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-10::obj-18" : [ "p2[14]", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-10::obj-19" : [ "p3[14]", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-10::obj-3" : [ "p0[14]", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-11::obj-16" : [ "on[13]", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-11::obj-17" : [ "p1[13]", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-11::obj-18" : [ "p2[13]", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-11::obj-19" : [ "p3[13]", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-11::obj-3" : [ "p0[13]", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-13::obj-16" : [ "on[12]", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-13::obj-17" : [ "p1[12]", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-13::obj-18" : [ "p2[12]", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-13::obj-19" : [ "p3[12]", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-13::obj-3" : [ "p0[12]", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-14::obj-16" : [ "on[11]", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-14::obj-17" : [ "p1[11]", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-14::obj-18" : [ "p2[11]", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-14::obj-19" : [ "p3[11]", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-14::obj-3" : [ "p0[11]", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-15::obj-16" : [ "on[10]", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-15::obj-17" : [ "p1[10]", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-15::obj-18" : [ "p2[10]", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-15::obj-19" : [ "p3[10]", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-15::obj-3" : [ "p0[10]", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-16::obj-16" : [ "on[9]", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-16::obj-17" : [ "p1[9]", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-16::obj-18" : [ "p2[9]", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-16::obj-19" : [ "p3[9]", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-16::obj-3" : [ "p0[9]", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-17::obj-16" : [ "on[8]", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-17::obj-17" : [ "p1[8]", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-17::obj-18" : [ "p2[8]", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-17::obj-19" : [ "p3[8]", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-17::obj-3" : [ "p0[8]", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-1::obj-16" : [ "on", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-1::obj-17" : [ "p1", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-1::obj-18" : [ "p2", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-1::obj-19" : [ "p3", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-1::obj-3" : [ "p0", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-2::obj-16" : [ "on[1]", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-2::obj-17" : [ "p1[1]", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-2::obj-18" : [ "p2[1]", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-2::obj-19" : [ "p3[1]", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-2::obj-3" : [ "p0[1]", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-3::obj-16" : [ "on[2]", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-3::obj-17" : [ "p1[2]", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-3::obj-18" : [ "p2[2]", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-3::obj-19" : [ "p3[2]", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-3::obj-3" : [ "p0[2]", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-4::obj-16" : [ "on[3]", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-4::obj-17" : [ "p1[3]", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-4::obj-18" : [ "p2[3]", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-4::obj-19" : [ "p3[3]", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-4::obj-3" : [ "p0[3]", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-5::obj-16" : [ "on[7]", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-5::obj-17" : [ "p1[7]", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-5::obj-18" : [ "p2[7]", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-5::obj-19" : [ "p3[7]", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-5::obj-3" : [ "p0[7]", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-6::obj-16" : [ "on[6]", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-6::obj-17" : [ "p1[6]", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-6::obj-18" : [ "p2[6]", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-6::obj-19" : [ "p3[6]", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-6::obj-3" : [ "p0[6]", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-7::obj-16" : [ "on[5]", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-7::obj-17" : [ "p1[5]", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-7::obj-18" : [ "p2[5]", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-7::obj-19" : [ "p3[5]", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-7::obj-3" : [ "p0[5]", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-8::obj-16" : [ "on[4]", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-8::obj-17" : [ "p1[4]", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-8::obj-18" : [ "p2[4]", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-8::obj-19" : [ "p3[4]", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-8::obj-3" : [ "p0[4]", "p0", 0 ],
			"obj-54::obj-47::obj-1::obj-9::obj-16" : [ "on[15]", "on", 0 ],
			"obj-54::obj-47::obj-1::obj-9::obj-17" : [ "p1[15]", "p1", 0 ],
			"obj-54::obj-47::obj-1::obj-9::obj-18" : [ "p2[15]", "p2", 0 ],
			"obj-54::obj-47::obj-1::obj-9::obj-19" : [ "p3[15]", "p3", 0 ],
			"obj-54::obj-47::obj-1::obj-9::obj-3" : [ "p0[15]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-10::obj-16" : [ "on[30]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-10::obj-17" : [ "p1[30]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-10::obj-18" : [ "p2[30]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-10::obj-19" : [ "p3[30]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-10::obj-3" : [ "p0[30]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-11::obj-16" : [ "on[29]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-11::obj-17" : [ "p1[29]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-11::obj-18" : [ "p2[29]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-11::obj-19" : [ "p3[29]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-11::obj-3" : [ "p0[29]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-13::obj-16" : [ "on[28]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-13::obj-17" : [ "p1[28]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-13::obj-18" : [ "p2[28]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-13::obj-19" : [ "p3[28]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-13::obj-3" : [ "p0[28]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-14::obj-16" : [ "on[27]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-14::obj-17" : [ "p1[27]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-14::obj-18" : [ "p2[27]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-14::obj-19" : [ "p3[27]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-14::obj-3" : [ "p0[27]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-15::obj-16" : [ "on[26]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-15::obj-17" : [ "p1[26]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-15::obj-18" : [ "p2[26]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-15::obj-19" : [ "p3[26]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-15::obj-3" : [ "p0[26]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-16::obj-16" : [ "on[25]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-16::obj-17" : [ "p1[25]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-16::obj-18" : [ "p2[25]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-16::obj-19" : [ "p3[25]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-16::obj-3" : [ "p0[25]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-17::obj-16" : [ "on[24]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-17::obj-17" : [ "p1[24]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-17::obj-18" : [ "p2[24]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-17::obj-19" : [ "p3[24]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-17::obj-3" : [ "p0[24]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-1::obj-16" : [ "on[16]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-1::obj-17" : [ "p1[16]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-1::obj-18" : [ "p2[16]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-1::obj-19" : [ "p3[16]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-1::obj-3" : [ "p0[16]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-2::obj-16" : [ "on[17]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-2::obj-17" : [ "p1[17]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-2::obj-18" : [ "p2[17]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-2::obj-19" : [ "p3[17]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-2::obj-3" : [ "p0[17]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-3::obj-16" : [ "on[18]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-3::obj-17" : [ "p1[18]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-3::obj-18" : [ "p2[18]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-3::obj-19" : [ "p3[18]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-3::obj-3" : [ "p0[18]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-4::obj-16" : [ "on[19]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-4::obj-17" : [ "p1[19]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-4::obj-18" : [ "p2[19]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-4::obj-19" : [ "p3[19]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-4::obj-3" : [ "p0[19]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-5::obj-16" : [ "on[23]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-5::obj-17" : [ "p1[23]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-5::obj-18" : [ "p2[23]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-5::obj-19" : [ "p3[23]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-5::obj-3" : [ "p0[23]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-6::obj-16" : [ "on[22]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-6::obj-17" : [ "p1[22]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-6::obj-18" : [ "p2[22]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-6::obj-19" : [ "p3[22]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-6::obj-3" : [ "p0[22]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-7::obj-16" : [ "on[21]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-7::obj-17" : [ "p1[21]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-7::obj-18" : [ "p2[21]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-7::obj-19" : [ "p3[21]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-7::obj-3" : [ "p0[21]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-8::obj-16" : [ "on[20]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-8::obj-17" : [ "p1[20]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-8::obj-18" : [ "p2[20]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-8::obj-19" : [ "p3[20]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-8::obj-3" : [ "p0[20]", "p0", 0 ],
			"obj-54::obj-47::obj-2::obj-9::obj-16" : [ "on[31]", "on", 0 ],
			"obj-54::obj-47::obj-2::obj-9::obj-17" : [ "p1[31]", "p1", 0 ],
			"obj-54::obj-47::obj-2::obj-9::obj-18" : [ "p2[31]", "p2", 0 ],
			"obj-54::obj-47::obj-2::obj-9::obj-19" : [ "p3[31]", "p3", 0 ],
			"obj-54::obj-47::obj-2::obj-9::obj-3" : [ "p0[31]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-10::obj-16" : [ "on[78]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-10::obj-17" : [ "p1[78]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-10::obj-18" : [ "p2[78]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-10::obj-19" : [ "p3[78]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-10::obj-3" : [ "p0[78]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-11::obj-16" : [ "on[77]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-11::obj-17" : [ "p1[77]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-11::obj-18" : [ "p2[77]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-11::obj-19" : [ "p3[77]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-11::obj-3" : [ "p0[77]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-13::obj-16" : [ "on[76]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-13::obj-17" : [ "p1[76]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-13::obj-18" : [ "p2[76]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-13::obj-19" : [ "p3[76]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-13::obj-3" : [ "p0[76]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-14::obj-16" : [ "on[75]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-14::obj-17" : [ "p1[75]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-14::obj-18" : [ "p2[75]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-14::obj-19" : [ "p3[75]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-14::obj-3" : [ "p0[75]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-15::obj-16" : [ "on[74]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-15::obj-17" : [ "p1[74]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-15::obj-18" : [ "p2[74]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-15::obj-19" : [ "p3[74]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-15::obj-3" : [ "p0[74]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-16::obj-16" : [ "on[73]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-16::obj-17" : [ "p1[73]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-16::obj-18" : [ "p2[73]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-16::obj-19" : [ "p3[73]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-16::obj-3" : [ "p0[73]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-17::obj-16" : [ "on[72]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-17::obj-17" : [ "p1[72]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-17::obj-18" : [ "p2[72]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-17::obj-19" : [ "p3[72]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-17::obj-3" : [ "p0[72]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-1::obj-16" : [ "on[64]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-1::obj-17" : [ "p1[64]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-1::obj-18" : [ "p2[64]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-1::obj-19" : [ "p3[64]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-1::obj-3" : [ "p0[64]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-2::obj-16" : [ "on[65]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-2::obj-17" : [ "p1[65]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-2::obj-18" : [ "p2[65]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-2::obj-19" : [ "p3[65]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-2::obj-3" : [ "p0[65]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-3::obj-16" : [ "on[66]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-3::obj-17" : [ "p1[66]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-3::obj-18" : [ "p2[66]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-3::obj-19" : [ "p3[66]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-3::obj-3" : [ "p0[66]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-4::obj-16" : [ "on[67]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-4::obj-17" : [ "p1[67]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-4::obj-18" : [ "p2[67]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-4::obj-19" : [ "p3[67]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-4::obj-3" : [ "p0[67]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-5::obj-16" : [ "on[71]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-5::obj-17" : [ "p1[71]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-5::obj-18" : [ "p2[71]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-5::obj-19" : [ "p3[71]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-5::obj-3" : [ "p0[71]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-6::obj-16" : [ "on[70]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-6::obj-17" : [ "p1[70]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-6::obj-18" : [ "p2[70]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-6::obj-19" : [ "p3[70]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-6::obj-3" : [ "p0[70]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-7::obj-16" : [ "on[69]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-7::obj-17" : [ "p1[69]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-7::obj-18" : [ "p2[69]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-7::obj-19" : [ "p3[69]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-7::obj-3" : [ "p0[69]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-8::obj-16" : [ "on[68]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-8::obj-17" : [ "p1[68]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-8::obj-18" : [ "p2[68]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-8::obj-19" : [ "p3[68]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-8::obj-3" : [ "p0[68]", "p0", 0 ],
			"obj-8::obj-47::obj-1::obj-9::obj-16" : [ "on[79]", "on", 0 ],
			"obj-8::obj-47::obj-1::obj-9::obj-17" : [ "p1[79]", "p1", 0 ],
			"obj-8::obj-47::obj-1::obj-9::obj-18" : [ "p2[79]", "p2", 0 ],
			"obj-8::obj-47::obj-1::obj-9::obj-19" : [ "p3[79]", "p3", 0 ],
			"obj-8::obj-47::obj-1::obj-9::obj-3" : [ "p0[79]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-10::obj-16" : [ "on[94]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-10::obj-17" : [ "p1[94]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-10::obj-18" : [ "p2[94]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-10::obj-19" : [ "p3[94]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-10::obj-3" : [ "p0[94]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-11::obj-16" : [ "on[93]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-11::obj-17" : [ "p1[93]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-11::obj-18" : [ "p2[93]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-11::obj-19" : [ "p3[93]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-11::obj-3" : [ "p0[93]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-13::obj-16" : [ "on[92]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-13::obj-17" : [ "p1[92]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-13::obj-18" : [ "p2[92]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-13::obj-19" : [ "p3[92]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-13::obj-3" : [ "p0[92]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-14::obj-16" : [ "on[91]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-14::obj-17" : [ "p1[91]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-14::obj-18" : [ "p2[91]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-14::obj-19" : [ "p3[91]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-14::obj-3" : [ "p0[91]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-15::obj-16" : [ "on[90]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-15::obj-17" : [ "p1[90]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-15::obj-18" : [ "p2[90]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-15::obj-19" : [ "p3[90]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-15::obj-3" : [ "p0[90]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-16::obj-16" : [ "on[89]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-16::obj-17" : [ "p1[89]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-16::obj-18" : [ "p2[89]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-16::obj-19" : [ "p3[89]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-16::obj-3" : [ "p0[89]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-17::obj-16" : [ "on[88]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-17::obj-17" : [ "p1[88]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-17::obj-18" : [ "p2[88]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-17::obj-19" : [ "p3[88]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-17::obj-3" : [ "p0[88]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-1::obj-16" : [ "on[80]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-1::obj-17" : [ "p1[80]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-1::obj-18" : [ "p2[80]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-1::obj-19" : [ "p3[80]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-1::obj-3" : [ "p0[80]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-2::obj-16" : [ "on[81]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-2::obj-17" : [ "p1[81]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-2::obj-18" : [ "p2[81]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-2::obj-19" : [ "p3[81]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-2::obj-3" : [ "p0[81]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-3::obj-16" : [ "on[82]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-3::obj-17" : [ "p1[82]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-3::obj-18" : [ "p2[82]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-3::obj-19" : [ "p3[82]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-3::obj-3" : [ "p0[82]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-4::obj-16" : [ "on[83]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-4::obj-17" : [ "p1[83]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-4::obj-18" : [ "p2[83]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-4::obj-19" : [ "p3[83]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-4::obj-3" : [ "p0[83]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-5::obj-16" : [ "on[87]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-5::obj-17" : [ "p1[87]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-5::obj-18" : [ "p2[87]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-5::obj-19" : [ "p3[87]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-5::obj-3" : [ "p0[87]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-6::obj-16" : [ "on[86]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-6::obj-17" : [ "p1[86]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-6::obj-18" : [ "p2[86]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-6::obj-19" : [ "p3[86]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-6::obj-3" : [ "p0[86]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-7::obj-16" : [ "on[85]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-7::obj-17" : [ "p1[85]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-7::obj-18" : [ "p2[85]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-7::obj-19" : [ "p3[85]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-7::obj-3" : [ "p0[85]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-8::obj-16" : [ "on[84]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-8::obj-17" : [ "p1[84]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-8::obj-18" : [ "p2[84]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-8::obj-19" : [ "p3[84]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-8::obj-3" : [ "p0[84]", "p0", 0 ],
			"obj-8::obj-47::obj-2::obj-9::obj-16" : [ "on[95]", "on", 0 ],
			"obj-8::obj-47::obj-2::obj-9::obj-17" : [ "p1[95]", "p1", 0 ],
			"obj-8::obj-47::obj-2::obj-9::obj-18" : [ "p2[95]", "p2", 0 ],
			"obj-8::obj-47::obj-2::obj-9::obj-19" : [ "p3[95]", "p3", 0 ],
			"obj-8::obj-47::obj-2::obj-9::obj-3" : [ "p0[95]", "p0", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-1::obj-47::obj-1::obj-10::obj-16" : 				{
					"parameter_longname" : "on[46]"
				}
,
				"obj-1::obj-47::obj-1::obj-10::obj-17" : 				{
					"parameter_longname" : "p1[46]"
				}
,
				"obj-1::obj-47::obj-1::obj-10::obj-18" : 				{
					"parameter_longname" : "p2[46]"
				}
,
				"obj-1::obj-47::obj-1::obj-10::obj-19" : 				{
					"parameter_longname" : "p3[46]"
				}
,
				"obj-1::obj-47::obj-1::obj-10::obj-3" : 				{
					"parameter_longname" : "p0[46]"
				}
,
				"obj-1::obj-47::obj-1::obj-11::obj-16" : 				{
					"parameter_longname" : "on[45]"
				}
,
				"obj-1::obj-47::obj-1::obj-11::obj-17" : 				{
					"parameter_longname" : "p1[45]"
				}
,
				"obj-1::obj-47::obj-1::obj-11::obj-18" : 				{
					"parameter_longname" : "p2[45]"
				}
,
				"obj-1::obj-47::obj-1::obj-11::obj-19" : 				{
					"parameter_longname" : "p3[45]"
				}
,
				"obj-1::obj-47::obj-1::obj-11::obj-3" : 				{
					"parameter_longname" : "p0[45]"
				}
,
				"obj-1::obj-47::obj-1::obj-13::obj-16" : 				{
					"parameter_longname" : "on[44]"
				}
,
				"obj-1::obj-47::obj-1::obj-13::obj-17" : 				{
					"parameter_longname" : "p1[44]"
				}
,
				"obj-1::obj-47::obj-1::obj-13::obj-18" : 				{
					"parameter_longname" : "p2[44]"
				}
,
				"obj-1::obj-47::obj-1::obj-13::obj-19" : 				{
					"parameter_longname" : "p3[44]"
				}
,
				"obj-1::obj-47::obj-1::obj-13::obj-3" : 				{
					"parameter_longname" : "p0[44]"
				}
,
				"obj-1::obj-47::obj-1::obj-14::obj-16" : 				{
					"parameter_longname" : "on[43]"
				}
,
				"obj-1::obj-47::obj-1::obj-14::obj-17" : 				{
					"parameter_longname" : "p1[43]"
				}
,
				"obj-1::obj-47::obj-1::obj-14::obj-18" : 				{
					"parameter_longname" : "p2[43]"
				}
,
				"obj-1::obj-47::obj-1::obj-14::obj-19" : 				{
					"parameter_longname" : "p3[43]"
				}
,
				"obj-1::obj-47::obj-1::obj-14::obj-3" : 				{
					"parameter_longname" : "p0[43]"
				}
,
				"obj-1::obj-47::obj-1::obj-15::obj-16" : 				{
					"parameter_longname" : "on[42]"
				}
,
				"obj-1::obj-47::obj-1::obj-15::obj-17" : 				{
					"parameter_longname" : "p1[42]"
				}
,
				"obj-1::obj-47::obj-1::obj-15::obj-18" : 				{
					"parameter_longname" : "p2[42]"
				}
,
				"obj-1::obj-47::obj-1::obj-15::obj-19" : 				{
					"parameter_longname" : "p3[42]"
				}
,
				"obj-1::obj-47::obj-1::obj-15::obj-3" : 				{
					"parameter_longname" : "p0[42]"
				}
,
				"obj-1::obj-47::obj-1::obj-16::obj-16" : 				{
					"parameter_longname" : "on[41]"
				}
,
				"obj-1::obj-47::obj-1::obj-16::obj-17" : 				{
					"parameter_longname" : "p1[41]"
				}
,
				"obj-1::obj-47::obj-1::obj-16::obj-18" : 				{
					"parameter_longname" : "p2[41]"
				}
,
				"obj-1::obj-47::obj-1::obj-16::obj-19" : 				{
					"parameter_longname" : "p3[41]"
				}
,
				"obj-1::obj-47::obj-1::obj-16::obj-3" : 				{
					"parameter_longname" : "p0[41]"
				}
,
				"obj-1::obj-47::obj-1::obj-17::obj-16" : 				{
					"parameter_longname" : "on[40]"
				}
,
				"obj-1::obj-47::obj-1::obj-17::obj-17" : 				{
					"parameter_longname" : "p1[40]"
				}
,
				"obj-1::obj-47::obj-1::obj-17::obj-18" : 				{
					"parameter_longname" : "p2[40]"
				}
,
				"obj-1::obj-47::obj-1::obj-17::obj-19" : 				{
					"parameter_longname" : "p3[40]"
				}
,
				"obj-1::obj-47::obj-1::obj-17::obj-3" : 				{
					"parameter_longname" : "p0[40]"
				}
,
				"obj-1::obj-47::obj-1::obj-1::obj-16" : 				{
					"parameter_longname" : "on[32]"
				}
,
				"obj-1::obj-47::obj-1::obj-1::obj-17" : 				{
					"parameter_longname" : "p1[32]"
				}
,
				"obj-1::obj-47::obj-1::obj-1::obj-18" : 				{
					"parameter_longname" : "p2[32]"
				}
,
				"obj-1::obj-47::obj-1::obj-1::obj-19" : 				{
					"parameter_longname" : "p3[32]"
				}
,
				"obj-1::obj-47::obj-1::obj-1::obj-3" : 				{
					"parameter_longname" : "p0[32]"
				}
,
				"obj-1::obj-47::obj-1::obj-2::obj-16" : 				{
					"parameter_longname" : "on[33]"
				}
,
				"obj-1::obj-47::obj-1::obj-2::obj-17" : 				{
					"parameter_longname" : "p1[33]"
				}
,
				"obj-1::obj-47::obj-1::obj-2::obj-18" : 				{
					"parameter_longname" : "p2[33]"
				}
,
				"obj-1::obj-47::obj-1::obj-2::obj-19" : 				{
					"parameter_longname" : "p3[33]"
				}
,
				"obj-1::obj-47::obj-1::obj-2::obj-3" : 				{
					"parameter_longname" : "p0[33]"
				}
,
				"obj-1::obj-47::obj-1::obj-3::obj-16" : 				{
					"parameter_longname" : "on[34]"
				}
,
				"obj-1::obj-47::obj-1::obj-3::obj-17" : 				{
					"parameter_longname" : "p1[34]"
				}
,
				"obj-1::obj-47::obj-1::obj-3::obj-18" : 				{
					"parameter_longname" : "p2[34]"
				}
,
				"obj-1::obj-47::obj-1::obj-3::obj-19" : 				{
					"parameter_longname" : "p3[34]"
				}
,
				"obj-1::obj-47::obj-1::obj-3::obj-3" : 				{
					"parameter_longname" : "p0[34]"
				}
,
				"obj-1::obj-47::obj-1::obj-4::obj-16" : 				{
					"parameter_longname" : "on[35]"
				}
,
				"obj-1::obj-47::obj-1::obj-4::obj-17" : 				{
					"parameter_longname" : "p1[35]"
				}
,
				"obj-1::obj-47::obj-1::obj-4::obj-18" : 				{
					"parameter_longname" : "p2[35]"
				}
,
				"obj-1::obj-47::obj-1::obj-4::obj-19" : 				{
					"parameter_longname" : "p3[35]"
				}
,
				"obj-1::obj-47::obj-1::obj-4::obj-3" : 				{
					"parameter_longname" : "p0[35]"
				}
,
				"obj-1::obj-47::obj-1::obj-5::obj-16" : 				{
					"parameter_longname" : "on[39]"
				}
,
				"obj-1::obj-47::obj-1::obj-5::obj-17" : 				{
					"parameter_longname" : "p1[39]"
				}
,
				"obj-1::obj-47::obj-1::obj-5::obj-18" : 				{
					"parameter_longname" : "p2[39]"
				}
,
				"obj-1::obj-47::obj-1::obj-5::obj-19" : 				{
					"parameter_longname" : "p3[39]"
				}
,
				"obj-1::obj-47::obj-1::obj-5::obj-3" : 				{
					"parameter_longname" : "p0[39]"
				}
,
				"obj-1::obj-47::obj-1::obj-6::obj-16" : 				{
					"parameter_longname" : "on[38]"
				}
,
				"obj-1::obj-47::obj-1::obj-6::obj-17" : 				{
					"parameter_longname" : "p1[38]"
				}
,
				"obj-1::obj-47::obj-1::obj-6::obj-18" : 				{
					"parameter_longname" : "p2[38]"
				}
,
				"obj-1::obj-47::obj-1::obj-6::obj-19" : 				{
					"parameter_longname" : "p3[38]"
				}
,
				"obj-1::obj-47::obj-1::obj-6::obj-3" : 				{
					"parameter_longname" : "p0[38]"
				}
,
				"obj-1::obj-47::obj-1::obj-7::obj-16" : 				{
					"parameter_longname" : "on[37]"
				}
,
				"obj-1::obj-47::obj-1::obj-7::obj-17" : 				{
					"parameter_longname" : "p1[37]"
				}
,
				"obj-1::obj-47::obj-1::obj-7::obj-18" : 				{
					"parameter_longname" : "p2[37]"
				}
,
				"obj-1::obj-47::obj-1::obj-7::obj-19" : 				{
					"parameter_longname" : "p3[37]"
				}
,
				"obj-1::obj-47::obj-1::obj-7::obj-3" : 				{
					"parameter_longname" : "p0[37]"
				}
,
				"obj-1::obj-47::obj-1::obj-8::obj-16" : 				{
					"parameter_longname" : "on[36]"
				}
,
				"obj-1::obj-47::obj-1::obj-8::obj-17" : 				{
					"parameter_longname" : "p1[36]"
				}
,
				"obj-1::obj-47::obj-1::obj-8::obj-18" : 				{
					"parameter_longname" : "p2[36]"
				}
,
				"obj-1::obj-47::obj-1::obj-8::obj-19" : 				{
					"parameter_longname" : "p3[36]"
				}
,
				"obj-1::obj-47::obj-1::obj-8::obj-3" : 				{
					"parameter_longname" : "p0[36]"
				}
,
				"obj-1::obj-47::obj-1::obj-9::obj-16" : 				{
					"parameter_longname" : "on[47]"
				}
,
				"obj-1::obj-47::obj-1::obj-9::obj-17" : 				{
					"parameter_longname" : "p1[47]"
				}
,
				"obj-1::obj-47::obj-1::obj-9::obj-18" : 				{
					"parameter_longname" : "p2[47]"
				}
,
				"obj-1::obj-47::obj-1::obj-9::obj-19" : 				{
					"parameter_longname" : "p3[47]"
				}
,
				"obj-1::obj-47::obj-1::obj-9::obj-3" : 				{
					"parameter_longname" : "p0[47]"
				}
,
				"obj-1::obj-47::obj-2::obj-10::obj-16" : 				{
					"parameter_longname" : "on[62]"
				}
,
				"obj-1::obj-47::obj-2::obj-10::obj-17" : 				{
					"parameter_longname" : "p1[62]"
				}
,
				"obj-1::obj-47::obj-2::obj-10::obj-18" : 				{
					"parameter_longname" : "p2[62]"
				}
,
				"obj-1::obj-47::obj-2::obj-10::obj-19" : 				{
					"parameter_longname" : "p3[62]"
				}
,
				"obj-1::obj-47::obj-2::obj-10::obj-3" : 				{
					"parameter_longname" : "p0[62]"
				}
,
				"obj-1::obj-47::obj-2::obj-11::obj-16" : 				{
					"parameter_longname" : "on[61]"
				}
,
				"obj-1::obj-47::obj-2::obj-11::obj-17" : 				{
					"parameter_longname" : "p1[61]"
				}
,
				"obj-1::obj-47::obj-2::obj-11::obj-18" : 				{
					"parameter_longname" : "p2[61]"
				}
,
				"obj-1::obj-47::obj-2::obj-11::obj-19" : 				{
					"parameter_longname" : "p3[61]"
				}
,
				"obj-1::obj-47::obj-2::obj-11::obj-3" : 				{
					"parameter_longname" : "p0[61]"
				}
,
				"obj-1::obj-47::obj-2::obj-13::obj-16" : 				{
					"parameter_longname" : "on[60]"
				}
,
				"obj-1::obj-47::obj-2::obj-13::obj-17" : 				{
					"parameter_longname" : "p1[60]"
				}
,
				"obj-1::obj-47::obj-2::obj-13::obj-18" : 				{
					"parameter_longname" : "p2[60]"
				}
,
				"obj-1::obj-47::obj-2::obj-13::obj-19" : 				{
					"parameter_longname" : "p3[60]"
				}
,
				"obj-1::obj-47::obj-2::obj-13::obj-3" : 				{
					"parameter_longname" : "p0[60]"
				}
,
				"obj-1::obj-47::obj-2::obj-14::obj-16" : 				{
					"parameter_longname" : "on[59]"
				}
,
				"obj-1::obj-47::obj-2::obj-14::obj-17" : 				{
					"parameter_longname" : "p1[59]"
				}
,
				"obj-1::obj-47::obj-2::obj-14::obj-18" : 				{
					"parameter_longname" : "p2[59]"
				}
,
				"obj-1::obj-47::obj-2::obj-14::obj-19" : 				{
					"parameter_longname" : "p3[59]"
				}
,
				"obj-1::obj-47::obj-2::obj-14::obj-3" : 				{
					"parameter_longname" : "p0[59]"
				}
,
				"obj-1::obj-47::obj-2::obj-15::obj-16" : 				{
					"parameter_longname" : "on[58]"
				}
,
				"obj-1::obj-47::obj-2::obj-15::obj-17" : 				{
					"parameter_longname" : "p1[58]"
				}
,
				"obj-1::obj-47::obj-2::obj-15::obj-18" : 				{
					"parameter_longname" : "p2[58]"
				}
,
				"obj-1::obj-47::obj-2::obj-15::obj-19" : 				{
					"parameter_longname" : "p3[58]"
				}
,
				"obj-1::obj-47::obj-2::obj-15::obj-3" : 				{
					"parameter_longname" : "p0[58]"
				}
,
				"obj-1::obj-47::obj-2::obj-16::obj-16" : 				{
					"parameter_longname" : "on[57]"
				}
,
				"obj-1::obj-47::obj-2::obj-16::obj-17" : 				{
					"parameter_longname" : "p1[57]"
				}
,
				"obj-1::obj-47::obj-2::obj-16::obj-18" : 				{
					"parameter_longname" : "p2[57]"
				}
,
				"obj-1::obj-47::obj-2::obj-16::obj-19" : 				{
					"parameter_longname" : "p3[57]"
				}
,
				"obj-1::obj-47::obj-2::obj-16::obj-3" : 				{
					"parameter_longname" : "p0[57]"
				}
,
				"obj-1::obj-47::obj-2::obj-17::obj-16" : 				{
					"parameter_longname" : "on[56]"
				}
,
				"obj-1::obj-47::obj-2::obj-17::obj-17" : 				{
					"parameter_longname" : "p1[56]"
				}
,
				"obj-1::obj-47::obj-2::obj-17::obj-18" : 				{
					"parameter_longname" : "p2[56]"
				}
,
				"obj-1::obj-47::obj-2::obj-17::obj-19" : 				{
					"parameter_longname" : "p3[56]"
				}
,
				"obj-1::obj-47::obj-2::obj-17::obj-3" : 				{
					"parameter_longname" : "p0[56]"
				}
,
				"obj-1::obj-47::obj-2::obj-1::obj-16" : 				{
					"parameter_longname" : "on[48]"
				}
,
				"obj-1::obj-47::obj-2::obj-1::obj-17" : 				{
					"parameter_longname" : "p1[48]"
				}
,
				"obj-1::obj-47::obj-2::obj-1::obj-18" : 				{
					"parameter_longname" : "p2[48]"
				}
,
				"obj-1::obj-47::obj-2::obj-1::obj-19" : 				{
					"parameter_longname" : "p3[48]"
				}
,
				"obj-1::obj-47::obj-2::obj-1::obj-3" : 				{
					"parameter_longname" : "p0[48]"
				}
,
				"obj-1::obj-47::obj-2::obj-2::obj-16" : 				{
					"parameter_longname" : "on[49]"
				}
,
				"obj-1::obj-47::obj-2::obj-2::obj-17" : 				{
					"parameter_longname" : "p1[49]"
				}
,
				"obj-1::obj-47::obj-2::obj-2::obj-18" : 				{
					"parameter_longname" : "p2[49]"
				}
,
				"obj-1::obj-47::obj-2::obj-2::obj-19" : 				{
					"parameter_longname" : "p3[49]"
				}
,
				"obj-1::obj-47::obj-2::obj-2::obj-3" : 				{
					"parameter_longname" : "p0[49]"
				}
,
				"obj-1::obj-47::obj-2::obj-3::obj-16" : 				{
					"parameter_longname" : "on[50]"
				}
,
				"obj-1::obj-47::obj-2::obj-3::obj-17" : 				{
					"parameter_longname" : "p1[50]"
				}
,
				"obj-1::obj-47::obj-2::obj-3::obj-18" : 				{
					"parameter_longname" : "p2[50]"
				}
,
				"obj-1::obj-47::obj-2::obj-3::obj-19" : 				{
					"parameter_longname" : "p3[50]"
				}
,
				"obj-1::obj-47::obj-2::obj-3::obj-3" : 				{
					"parameter_longname" : "p0[50]"
				}
,
				"obj-1::obj-47::obj-2::obj-4::obj-16" : 				{
					"parameter_longname" : "on[51]"
				}
,
				"obj-1::obj-47::obj-2::obj-4::obj-17" : 				{
					"parameter_longname" : "p1[51]"
				}
,
				"obj-1::obj-47::obj-2::obj-4::obj-18" : 				{
					"parameter_longname" : "p2[51]"
				}
,
				"obj-1::obj-47::obj-2::obj-4::obj-19" : 				{
					"parameter_longname" : "p3[51]"
				}
,
				"obj-1::obj-47::obj-2::obj-4::obj-3" : 				{
					"parameter_longname" : "p0[51]"
				}
,
				"obj-1::obj-47::obj-2::obj-5::obj-16" : 				{
					"parameter_longname" : "on[55]"
				}
,
				"obj-1::obj-47::obj-2::obj-5::obj-17" : 				{
					"parameter_longname" : "p1[55]"
				}
,
				"obj-1::obj-47::obj-2::obj-5::obj-18" : 				{
					"parameter_longname" : "p2[55]"
				}
,
				"obj-1::obj-47::obj-2::obj-5::obj-19" : 				{
					"parameter_longname" : "p3[55]"
				}
,
				"obj-1::obj-47::obj-2::obj-5::obj-3" : 				{
					"parameter_longname" : "p0[55]"
				}
,
				"obj-1::obj-47::obj-2::obj-6::obj-16" : 				{
					"parameter_longname" : "on[54]"
				}
,
				"obj-1::obj-47::obj-2::obj-6::obj-17" : 				{
					"parameter_longname" : "p1[54]"
				}
,
				"obj-1::obj-47::obj-2::obj-6::obj-18" : 				{
					"parameter_longname" : "p2[54]"
				}
,
				"obj-1::obj-47::obj-2::obj-6::obj-19" : 				{
					"parameter_longname" : "p3[54]"
				}
,
				"obj-1::obj-47::obj-2::obj-6::obj-3" : 				{
					"parameter_longname" : "p0[54]"
				}
,
				"obj-1::obj-47::obj-2::obj-7::obj-16" : 				{
					"parameter_longname" : "on[53]"
				}
,
				"obj-1::obj-47::obj-2::obj-7::obj-17" : 				{
					"parameter_longname" : "p1[53]"
				}
,
				"obj-1::obj-47::obj-2::obj-7::obj-18" : 				{
					"parameter_longname" : "p2[53]"
				}
,
				"obj-1::obj-47::obj-2::obj-7::obj-19" : 				{
					"parameter_longname" : "p3[53]"
				}
,
				"obj-1::obj-47::obj-2::obj-7::obj-3" : 				{
					"parameter_longname" : "p0[53]"
				}
,
				"obj-1::obj-47::obj-2::obj-8::obj-16" : 				{
					"parameter_longname" : "on[52]"
				}
,
				"obj-1::obj-47::obj-2::obj-8::obj-17" : 				{
					"parameter_longname" : "p1[52]"
				}
,
				"obj-1::obj-47::obj-2::obj-8::obj-18" : 				{
					"parameter_longname" : "p2[52]"
				}
,
				"obj-1::obj-47::obj-2::obj-8::obj-19" : 				{
					"parameter_longname" : "p3[52]"
				}
,
				"obj-1::obj-47::obj-2::obj-8::obj-3" : 				{
					"parameter_longname" : "p0[52]"
				}
,
				"obj-1::obj-47::obj-2::obj-9::obj-16" : 				{
					"parameter_longname" : "on[63]"
				}
,
				"obj-1::obj-47::obj-2::obj-9::obj-17" : 				{
					"parameter_longname" : "p1[63]"
				}
,
				"obj-1::obj-47::obj-2::obj-9::obj-18" : 				{
					"parameter_longname" : "p2[63]"
				}
,
				"obj-1::obj-47::obj-2::obj-9::obj-19" : 				{
					"parameter_longname" : "p3[63]"
				}
,
				"obj-1::obj-47::obj-2::obj-9::obj-3" : 				{
					"parameter_longname" : "p0[63]"
				}
,
				"obj-54::obj-47::obj-1::obj-10::obj-16" : 				{
					"parameter_longname" : "on[14]"
				}
,
				"obj-54::obj-47::obj-1::obj-10::obj-17" : 				{
					"parameter_longname" : "p1[14]"
				}
,
				"obj-54::obj-47::obj-1::obj-10::obj-18" : 				{
					"parameter_longname" : "p2[14]"
				}
,
				"obj-54::obj-47::obj-1::obj-10::obj-19" : 				{
					"parameter_longname" : "p3[14]"
				}
,
				"obj-54::obj-47::obj-1::obj-10::obj-3" : 				{
					"parameter_longname" : "p0[14]"
				}
,
				"obj-54::obj-47::obj-1::obj-11::obj-16" : 				{
					"parameter_longname" : "on[13]"
				}
,
				"obj-54::obj-47::obj-1::obj-11::obj-17" : 				{
					"parameter_longname" : "p1[13]"
				}
,
				"obj-54::obj-47::obj-1::obj-11::obj-18" : 				{
					"parameter_longname" : "p2[13]"
				}
,
				"obj-54::obj-47::obj-1::obj-11::obj-19" : 				{
					"parameter_longname" : "p3[13]"
				}
,
				"obj-54::obj-47::obj-1::obj-11::obj-3" : 				{
					"parameter_longname" : "p0[13]"
				}
,
				"obj-54::obj-47::obj-1::obj-13::obj-16" : 				{
					"parameter_longname" : "on[12]"
				}
,
				"obj-54::obj-47::obj-1::obj-13::obj-17" : 				{
					"parameter_longname" : "p1[12]"
				}
,
				"obj-54::obj-47::obj-1::obj-13::obj-18" : 				{
					"parameter_longname" : "p2[12]"
				}
,
				"obj-54::obj-47::obj-1::obj-13::obj-19" : 				{
					"parameter_longname" : "p3[12]"
				}
,
				"obj-54::obj-47::obj-1::obj-13::obj-3" : 				{
					"parameter_longname" : "p0[12]"
				}
,
				"obj-54::obj-47::obj-1::obj-14::obj-16" : 				{
					"parameter_longname" : "on[11]"
				}
,
				"obj-54::obj-47::obj-1::obj-14::obj-17" : 				{
					"parameter_longname" : "p1[11]"
				}
,
				"obj-54::obj-47::obj-1::obj-14::obj-18" : 				{
					"parameter_longname" : "p2[11]"
				}
,
				"obj-54::obj-47::obj-1::obj-14::obj-19" : 				{
					"parameter_longname" : "p3[11]"
				}
,
				"obj-54::obj-47::obj-1::obj-14::obj-3" : 				{
					"parameter_longname" : "p0[11]"
				}
,
				"obj-54::obj-47::obj-1::obj-15::obj-16" : 				{
					"parameter_longname" : "on[10]"
				}
,
				"obj-54::obj-47::obj-1::obj-15::obj-17" : 				{
					"parameter_longname" : "p1[10]"
				}
,
				"obj-54::obj-47::obj-1::obj-15::obj-18" : 				{
					"parameter_longname" : "p2[10]"
				}
,
				"obj-54::obj-47::obj-1::obj-15::obj-19" : 				{
					"parameter_longname" : "p3[10]"
				}
,
				"obj-54::obj-47::obj-1::obj-15::obj-3" : 				{
					"parameter_longname" : "p0[10]"
				}
,
				"obj-54::obj-47::obj-1::obj-16::obj-16" : 				{
					"parameter_longname" : "on[9]"
				}
,
				"obj-54::obj-47::obj-1::obj-16::obj-17" : 				{
					"parameter_longname" : "p1[9]"
				}
,
				"obj-54::obj-47::obj-1::obj-16::obj-18" : 				{
					"parameter_longname" : "p2[9]"
				}
,
				"obj-54::obj-47::obj-1::obj-16::obj-19" : 				{
					"parameter_longname" : "p3[9]"
				}
,
				"obj-54::obj-47::obj-1::obj-16::obj-3" : 				{
					"parameter_longname" : "p0[9]"
				}
,
				"obj-54::obj-47::obj-1::obj-17::obj-16" : 				{
					"parameter_longname" : "on[8]"
				}
,
				"obj-54::obj-47::obj-1::obj-17::obj-17" : 				{
					"parameter_longname" : "p1[8]"
				}
,
				"obj-54::obj-47::obj-1::obj-17::obj-18" : 				{
					"parameter_longname" : "p2[8]"
				}
,
				"obj-54::obj-47::obj-1::obj-17::obj-19" : 				{
					"parameter_longname" : "p3[8]"
				}
,
				"obj-54::obj-47::obj-1::obj-17::obj-3" : 				{
					"parameter_longname" : "p0[8]"
				}
,
				"obj-54::obj-47::obj-1::obj-2::obj-16" : 				{
					"parameter_longname" : "on[1]"
				}
,
				"obj-54::obj-47::obj-1::obj-2::obj-17" : 				{
					"parameter_longname" : "p1[1]"
				}
,
				"obj-54::obj-47::obj-1::obj-2::obj-18" : 				{
					"parameter_longname" : "p2[1]"
				}
,
				"obj-54::obj-47::obj-1::obj-2::obj-19" : 				{
					"parameter_longname" : "p3[1]"
				}
,
				"obj-54::obj-47::obj-1::obj-2::obj-3" : 				{
					"parameter_longname" : "p0[1]"
				}
,
				"obj-54::obj-47::obj-1::obj-3::obj-16" : 				{
					"parameter_longname" : "on[2]"
				}
,
				"obj-54::obj-47::obj-1::obj-3::obj-17" : 				{
					"parameter_longname" : "p1[2]"
				}
,
				"obj-54::obj-47::obj-1::obj-3::obj-18" : 				{
					"parameter_longname" : "p2[2]"
				}
,
				"obj-54::obj-47::obj-1::obj-3::obj-19" : 				{
					"parameter_longname" : "p3[2]"
				}
,
				"obj-54::obj-47::obj-1::obj-3::obj-3" : 				{
					"parameter_longname" : "p0[2]"
				}
,
				"obj-54::obj-47::obj-1::obj-4::obj-16" : 				{
					"parameter_longname" : "on[3]"
				}
,
				"obj-54::obj-47::obj-1::obj-4::obj-17" : 				{
					"parameter_longname" : "p1[3]"
				}
,
				"obj-54::obj-47::obj-1::obj-4::obj-18" : 				{
					"parameter_longname" : "p2[3]"
				}
,
				"obj-54::obj-47::obj-1::obj-4::obj-19" : 				{
					"parameter_longname" : "p3[3]"
				}
,
				"obj-54::obj-47::obj-1::obj-4::obj-3" : 				{
					"parameter_longname" : "p0[3]"
				}
,
				"obj-54::obj-47::obj-1::obj-5::obj-16" : 				{
					"parameter_longname" : "on[7]"
				}
,
				"obj-54::obj-47::obj-1::obj-5::obj-17" : 				{
					"parameter_longname" : "p1[7]"
				}
,
				"obj-54::obj-47::obj-1::obj-5::obj-18" : 				{
					"parameter_longname" : "p2[7]"
				}
,
				"obj-54::obj-47::obj-1::obj-5::obj-19" : 				{
					"parameter_longname" : "p3[7]"
				}
,
				"obj-54::obj-47::obj-1::obj-5::obj-3" : 				{
					"parameter_longname" : "p0[7]"
				}
,
				"obj-54::obj-47::obj-1::obj-6::obj-16" : 				{
					"parameter_longname" : "on[6]"
				}
,
				"obj-54::obj-47::obj-1::obj-6::obj-17" : 				{
					"parameter_longname" : "p1[6]"
				}
,
				"obj-54::obj-47::obj-1::obj-6::obj-18" : 				{
					"parameter_longname" : "p2[6]"
				}
,
				"obj-54::obj-47::obj-1::obj-6::obj-19" : 				{
					"parameter_longname" : "p3[6]"
				}
,
				"obj-54::obj-47::obj-1::obj-6::obj-3" : 				{
					"parameter_longname" : "p0[6]"
				}
,
				"obj-54::obj-47::obj-1::obj-7::obj-16" : 				{
					"parameter_longname" : "on[5]"
				}
,
				"obj-54::obj-47::obj-1::obj-7::obj-17" : 				{
					"parameter_longname" : "p1[5]"
				}
,
				"obj-54::obj-47::obj-1::obj-7::obj-18" : 				{
					"parameter_longname" : "p2[5]"
				}
,
				"obj-54::obj-47::obj-1::obj-7::obj-19" : 				{
					"parameter_longname" : "p3[5]"
				}
,
				"obj-54::obj-47::obj-1::obj-7::obj-3" : 				{
					"parameter_longname" : "p0[5]"
				}
,
				"obj-54::obj-47::obj-1::obj-8::obj-16" : 				{
					"parameter_longname" : "on[4]"
				}
,
				"obj-54::obj-47::obj-1::obj-8::obj-17" : 				{
					"parameter_longname" : "p1[4]"
				}
,
				"obj-54::obj-47::obj-1::obj-8::obj-18" : 				{
					"parameter_longname" : "p2[4]"
				}
,
				"obj-54::obj-47::obj-1::obj-8::obj-19" : 				{
					"parameter_longname" : "p3[4]"
				}
,
				"obj-54::obj-47::obj-1::obj-8::obj-3" : 				{
					"parameter_longname" : "p0[4]"
				}
,
				"obj-54::obj-47::obj-1::obj-9::obj-16" : 				{
					"parameter_longname" : "on[15]"
				}
,
				"obj-54::obj-47::obj-1::obj-9::obj-17" : 				{
					"parameter_longname" : "p1[15]"
				}
,
				"obj-54::obj-47::obj-1::obj-9::obj-18" : 				{
					"parameter_longname" : "p2[15]"
				}
,
				"obj-54::obj-47::obj-1::obj-9::obj-19" : 				{
					"parameter_longname" : "p3[15]"
				}
,
				"obj-54::obj-47::obj-1::obj-9::obj-3" : 				{
					"parameter_longname" : "p0[15]"
				}
,
				"obj-54::obj-47::obj-2::obj-10::obj-16" : 				{
					"parameter_longname" : "on[30]"
				}
,
				"obj-54::obj-47::obj-2::obj-10::obj-17" : 				{
					"parameter_longname" : "p1[30]"
				}
,
				"obj-54::obj-47::obj-2::obj-10::obj-18" : 				{
					"parameter_longname" : "p2[30]"
				}
,
				"obj-54::obj-47::obj-2::obj-10::obj-19" : 				{
					"parameter_longname" : "p3[30]"
				}
,
				"obj-54::obj-47::obj-2::obj-10::obj-3" : 				{
					"parameter_longname" : "p0[30]"
				}
,
				"obj-54::obj-47::obj-2::obj-11::obj-16" : 				{
					"parameter_longname" : "on[29]"
				}
,
				"obj-54::obj-47::obj-2::obj-11::obj-17" : 				{
					"parameter_longname" : "p1[29]"
				}
,
				"obj-54::obj-47::obj-2::obj-11::obj-18" : 				{
					"parameter_longname" : "p2[29]"
				}
,
				"obj-54::obj-47::obj-2::obj-11::obj-19" : 				{
					"parameter_longname" : "p3[29]"
				}
,
				"obj-54::obj-47::obj-2::obj-11::obj-3" : 				{
					"parameter_longname" : "p0[29]"
				}
,
				"obj-54::obj-47::obj-2::obj-13::obj-16" : 				{
					"parameter_longname" : "on[28]"
				}
,
				"obj-54::obj-47::obj-2::obj-13::obj-17" : 				{
					"parameter_longname" : "p1[28]"
				}
,
				"obj-54::obj-47::obj-2::obj-13::obj-18" : 				{
					"parameter_longname" : "p2[28]"
				}
,
				"obj-54::obj-47::obj-2::obj-13::obj-19" : 				{
					"parameter_longname" : "p3[28]"
				}
,
				"obj-54::obj-47::obj-2::obj-13::obj-3" : 				{
					"parameter_longname" : "p0[28]"
				}
,
				"obj-54::obj-47::obj-2::obj-14::obj-16" : 				{
					"parameter_longname" : "on[27]"
				}
,
				"obj-54::obj-47::obj-2::obj-14::obj-17" : 				{
					"parameter_longname" : "p1[27]"
				}
,
				"obj-54::obj-47::obj-2::obj-14::obj-18" : 				{
					"parameter_longname" : "p2[27]"
				}
,
				"obj-54::obj-47::obj-2::obj-14::obj-19" : 				{
					"parameter_longname" : "p3[27]"
				}
,
				"obj-54::obj-47::obj-2::obj-14::obj-3" : 				{
					"parameter_longname" : "p0[27]"
				}
,
				"obj-54::obj-47::obj-2::obj-15::obj-16" : 				{
					"parameter_longname" : "on[26]"
				}
,
				"obj-54::obj-47::obj-2::obj-15::obj-17" : 				{
					"parameter_longname" : "p1[26]"
				}
,
				"obj-54::obj-47::obj-2::obj-15::obj-18" : 				{
					"parameter_longname" : "p2[26]"
				}
,
				"obj-54::obj-47::obj-2::obj-15::obj-19" : 				{
					"parameter_longname" : "p3[26]"
				}
,
				"obj-54::obj-47::obj-2::obj-15::obj-3" : 				{
					"parameter_longname" : "p0[26]"
				}
,
				"obj-54::obj-47::obj-2::obj-16::obj-16" : 				{
					"parameter_longname" : "on[25]"
				}
,
				"obj-54::obj-47::obj-2::obj-16::obj-17" : 				{
					"parameter_longname" : "p1[25]"
				}
,
				"obj-54::obj-47::obj-2::obj-16::obj-18" : 				{
					"parameter_longname" : "p2[25]"
				}
,
				"obj-54::obj-47::obj-2::obj-16::obj-19" : 				{
					"parameter_longname" : "p3[25]"
				}
,
				"obj-54::obj-47::obj-2::obj-16::obj-3" : 				{
					"parameter_longname" : "p0[25]"
				}
,
				"obj-54::obj-47::obj-2::obj-17::obj-16" : 				{
					"parameter_longname" : "on[24]"
				}
,
				"obj-54::obj-47::obj-2::obj-17::obj-17" : 				{
					"parameter_longname" : "p1[24]"
				}
,
				"obj-54::obj-47::obj-2::obj-17::obj-18" : 				{
					"parameter_longname" : "p2[24]"
				}
,
				"obj-54::obj-47::obj-2::obj-17::obj-19" : 				{
					"parameter_longname" : "p3[24]"
				}
,
				"obj-54::obj-47::obj-2::obj-17::obj-3" : 				{
					"parameter_longname" : "p0[24]"
				}
,
				"obj-54::obj-47::obj-2::obj-1::obj-16" : 				{
					"parameter_longname" : "on[16]"
				}
,
				"obj-54::obj-47::obj-2::obj-1::obj-17" : 				{
					"parameter_longname" : "p1[16]"
				}
,
				"obj-54::obj-47::obj-2::obj-1::obj-18" : 				{
					"parameter_longname" : "p2[16]"
				}
,
				"obj-54::obj-47::obj-2::obj-1::obj-19" : 				{
					"parameter_longname" : "p3[16]"
				}
,
				"obj-54::obj-47::obj-2::obj-1::obj-3" : 				{
					"parameter_longname" : "p0[16]"
				}
,
				"obj-54::obj-47::obj-2::obj-2::obj-16" : 				{
					"parameter_longname" : "on[17]"
				}
,
				"obj-54::obj-47::obj-2::obj-2::obj-17" : 				{
					"parameter_longname" : "p1[17]"
				}
,
				"obj-54::obj-47::obj-2::obj-2::obj-18" : 				{
					"parameter_longname" : "p2[17]"
				}
,
				"obj-54::obj-47::obj-2::obj-2::obj-19" : 				{
					"parameter_longname" : "p3[17]"
				}
,
				"obj-54::obj-47::obj-2::obj-2::obj-3" : 				{
					"parameter_longname" : "p0[17]"
				}
,
				"obj-54::obj-47::obj-2::obj-3::obj-16" : 				{
					"parameter_longname" : "on[18]"
				}
,
				"obj-54::obj-47::obj-2::obj-3::obj-17" : 				{
					"parameter_longname" : "p1[18]"
				}
,
				"obj-54::obj-47::obj-2::obj-3::obj-18" : 				{
					"parameter_longname" : "p2[18]"
				}
,
				"obj-54::obj-47::obj-2::obj-3::obj-19" : 				{
					"parameter_longname" : "p3[18]"
				}
,
				"obj-54::obj-47::obj-2::obj-3::obj-3" : 				{
					"parameter_longname" : "p0[18]"
				}
,
				"obj-54::obj-47::obj-2::obj-4::obj-16" : 				{
					"parameter_longname" : "on[19]"
				}
,
				"obj-54::obj-47::obj-2::obj-4::obj-17" : 				{
					"parameter_longname" : "p1[19]"
				}
,
				"obj-54::obj-47::obj-2::obj-4::obj-18" : 				{
					"parameter_longname" : "p2[19]"
				}
,
				"obj-54::obj-47::obj-2::obj-4::obj-19" : 				{
					"parameter_longname" : "p3[19]"
				}
,
				"obj-54::obj-47::obj-2::obj-4::obj-3" : 				{
					"parameter_longname" : "p0[19]"
				}
,
				"obj-54::obj-47::obj-2::obj-5::obj-16" : 				{
					"parameter_longname" : "on[23]"
				}
,
				"obj-54::obj-47::obj-2::obj-5::obj-17" : 				{
					"parameter_longname" : "p1[23]"
				}
,
				"obj-54::obj-47::obj-2::obj-5::obj-18" : 				{
					"parameter_longname" : "p2[23]"
				}
,
				"obj-54::obj-47::obj-2::obj-5::obj-19" : 				{
					"parameter_longname" : "p3[23]"
				}
,
				"obj-54::obj-47::obj-2::obj-5::obj-3" : 				{
					"parameter_longname" : "p0[23]"
				}
,
				"obj-54::obj-47::obj-2::obj-6::obj-16" : 				{
					"parameter_longname" : "on[22]"
				}
,
				"obj-54::obj-47::obj-2::obj-6::obj-17" : 				{
					"parameter_longname" : "p1[22]"
				}
,
				"obj-54::obj-47::obj-2::obj-6::obj-18" : 				{
					"parameter_longname" : "p2[22]"
				}
,
				"obj-54::obj-47::obj-2::obj-6::obj-19" : 				{
					"parameter_longname" : "p3[22]"
				}
,
				"obj-54::obj-47::obj-2::obj-6::obj-3" : 				{
					"parameter_longname" : "p0[22]"
				}
,
				"obj-54::obj-47::obj-2::obj-7::obj-16" : 				{
					"parameter_longname" : "on[21]"
				}
,
				"obj-54::obj-47::obj-2::obj-7::obj-17" : 				{
					"parameter_longname" : "p1[21]"
				}
,
				"obj-54::obj-47::obj-2::obj-7::obj-18" : 				{
					"parameter_longname" : "p2[21]"
				}
,
				"obj-54::obj-47::obj-2::obj-7::obj-19" : 				{
					"parameter_longname" : "p3[21]"
				}
,
				"obj-54::obj-47::obj-2::obj-7::obj-3" : 				{
					"parameter_longname" : "p0[21]"
				}
,
				"obj-54::obj-47::obj-2::obj-8::obj-16" : 				{
					"parameter_longname" : "on[20]"
				}
,
				"obj-54::obj-47::obj-2::obj-8::obj-17" : 				{
					"parameter_longname" : "p1[20]"
				}
,
				"obj-54::obj-47::obj-2::obj-8::obj-18" : 				{
					"parameter_longname" : "p2[20]"
				}
,
				"obj-54::obj-47::obj-2::obj-8::obj-19" : 				{
					"parameter_longname" : "p3[20]"
				}
,
				"obj-54::obj-47::obj-2::obj-8::obj-3" : 				{
					"parameter_longname" : "p0[20]"
				}
,
				"obj-54::obj-47::obj-2::obj-9::obj-16" : 				{
					"parameter_longname" : "on[31]"
				}
,
				"obj-54::obj-47::obj-2::obj-9::obj-17" : 				{
					"parameter_longname" : "p1[31]"
				}
,
				"obj-54::obj-47::obj-2::obj-9::obj-18" : 				{
					"parameter_longname" : "p2[31]"
				}
,
				"obj-54::obj-47::obj-2::obj-9::obj-19" : 				{
					"parameter_longname" : "p3[31]"
				}
,
				"obj-54::obj-47::obj-2::obj-9::obj-3" : 				{
					"parameter_longname" : "p0[31]"
				}
,
				"obj-8::obj-47::obj-1::obj-10::obj-16" : 				{
					"parameter_longname" : "on[78]"
				}
,
				"obj-8::obj-47::obj-1::obj-10::obj-17" : 				{
					"parameter_longname" : "p1[78]"
				}
,
				"obj-8::obj-47::obj-1::obj-10::obj-18" : 				{
					"parameter_longname" : "p2[78]"
				}
,
				"obj-8::obj-47::obj-1::obj-10::obj-19" : 				{
					"parameter_longname" : "p3[78]"
				}
,
				"obj-8::obj-47::obj-1::obj-10::obj-3" : 				{
					"parameter_longname" : "p0[78]"
				}
,
				"obj-8::obj-47::obj-1::obj-11::obj-16" : 				{
					"parameter_longname" : "on[77]"
				}
,
				"obj-8::obj-47::obj-1::obj-11::obj-17" : 				{
					"parameter_longname" : "p1[77]"
				}
,
				"obj-8::obj-47::obj-1::obj-11::obj-18" : 				{
					"parameter_longname" : "p2[77]"
				}
,
				"obj-8::obj-47::obj-1::obj-11::obj-19" : 				{
					"parameter_longname" : "p3[77]"
				}
,
				"obj-8::obj-47::obj-1::obj-11::obj-3" : 				{
					"parameter_longname" : "p0[77]"
				}
,
				"obj-8::obj-47::obj-1::obj-13::obj-16" : 				{
					"parameter_longname" : "on[76]"
				}
,
				"obj-8::obj-47::obj-1::obj-13::obj-17" : 				{
					"parameter_longname" : "p1[76]"
				}
,
				"obj-8::obj-47::obj-1::obj-13::obj-18" : 				{
					"parameter_longname" : "p2[76]"
				}
,
				"obj-8::obj-47::obj-1::obj-13::obj-19" : 				{
					"parameter_longname" : "p3[76]"
				}
,
				"obj-8::obj-47::obj-1::obj-13::obj-3" : 				{
					"parameter_longname" : "p0[76]"
				}
,
				"obj-8::obj-47::obj-1::obj-14::obj-16" : 				{
					"parameter_longname" : "on[75]"
				}
,
				"obj-8::obj-47::obj-1::obj-14::obj-17" : 				{
					"parameter_longname" : "p1[75]"
				}
,
				"obj-8::obj-47::obj-1::obj-14::obj-18" : 				{
					"parameter_longname" : "p2[75]"
				}
,
				"obj-8::obj-47::obj-1::obj-14::obj-19" : 				{
					"parameter_longname" : "p3[75]"
				}
,
				"obj-8::obj-47::obj-1::obj-14::obj-3" : 				{
					"parameter_longname" : "p0[75]"
				}
,
				"obj-8::obj-47::obj-1::obj-15::obj-16" : 				{
					"parameter_longname" : "on[74]"
				}
,
				"obj-8::obj-47::obj-1::obj-15::obj-17" : 				{
					"parameter_longname" : "p1[74]"
				}
,
				"obj-8::obj-47::obj-1::obj-15::obj-18" : 				{
					"parameter_longname" : "p2[74]"
				}
,
				"obj-8::obj-47::obj-1::obj-15::obj-19" : 				{
					"parameter_longname" : "p3[74]"
				}
,
				"obj-8::obj-47::obj-1::obj-15::obj-3" : 				{
					"parameter_longname" : "p0[74]"
				}
,
				"obj-8::obj-47::obj-1::obj-16::obj-16" : 				{
					"parameter_longname" : "on[73]"
				}
,
				"obj-8::obj-47::obj-1::obj-16::obj-17" : 				{
					"parameter_longname" : "p1[73]"
				}
,
				"obj-8::obj-47::obj-1::obj-16::obj-18" : 				{
					"parameter_longname" : "p2[73]"
				}
,
				"obj-8::obj-47::obj-1::obj-16::obj-19" : 				{
					"parameter_longname" : "p3[73]"
				}
,
				"obj-8::obj-47::obj-1::obj-16::obj-3" : 				{
					"parameter_longname" : "p0[73]"
				}
,
				"obj-8::obj-47::obj-1::obj-17::obj-16" : 				{
					"parameter_longname" : "on[72]"
				}
,
				"obj-8::obj-47::obj-1::obj-17::obj-17" : 				{
					"parameter_longname" : "p1[72]"
				}
,
				"obj-8::obj-47::obj-1::obj-17::obj-18" : 				{
					"parameter_longname" : "p2[72]"
				}
,
				"obj-8::obj-47::obj-1::obj-17::obj-19" : 				{
					"parameter_longname" : "p3[72]"
				}
,
				"obj-8::obj-47::obj-1::obj-17::obj-3" : 				{
					"parameter_longname" : "p0[72]"
				}
,
				"obj-8::obj-47::obj-1::obj-1::obj-16" : 				{
					"parameter_longname" : "on[64]"
				}
,
				"obj-8::obj-47::obj-1::obj-1::obj-17" : 				{
					"parameter_longname" : "p1[64]"
				}
,
				"obj-8::obj-47::obj-1::obj-1::obj-18" : 				{
					"parameter_longname" : "p2[64]"
				}
,
				"obj-8::obj-47::obj-1::obj-1::obj-19" : 				{
					"parameter_longname" : "p3[64]"
				}
,
				"obj-8::obj-47::obj-1::obj-1::obj-3" : 				{
					"parameter_longname" : "p0[64]"
				}
,
				"obj-8::obj-47::obj-1::obj-2::obj-16" : 				{
					"parameter_longname" : "on[65]"
				}
,
				"obj-8::obj-47::obj-1::obj-2::obj-17" : 				{
					"parameter_longname" : "p1[65]"
				}
,
				"obj-8::obj-47::obj-1::obj-2::obj-18" : 				{
					"parameter_longname" : "p2[65]"
				}
,
				"obj-8::obj-47::obj-1::obj-2::obj-19" : 				{
					"parameter_longname" : "p3[65]"
				}
,
				"obj-8::obj-47::obj-1::obj-2::obj-3" : 				{
					"parameter_longname" : "p0[65]"
				}
,
				"obj-8::obj-47::obj-1::obj-3::obj-16" : 				{
					"parameter_longname" : "on[66]"
				}
,
				"obj-8::obj-47::obj-1::obj-3::obj-17" : 				{
					"parameter_longname" : "p1[66]"
				}
,
				"obj-8::obj-47::obj-1::obj-3::obj-18" : 				{
					"parameter_longname" : "p2[66]"
				}
,
				"obj-8::obj-47::obj-1::obj-3::obj-19" : 				{
					"parameter_longname" : "p3[66]"
				}
,
				"obj-8::obj-47::obj-1::obj-3::obj-3" : 				{
					"parameter_longname" : "p0[66]"
				}
,
				"obj-8::obj-47::obj-1::obj-4::obj-16" : 				{
					"parameter_longname" : "on[67]"
				}
,
				"obj-8::obj-47::obj-1::obj-4::obj-17" : 				{
					"parameter_longname" : "p1[67]"
				}
,
				"obj-8::obj-47::obj-1::obj-4::obj-18" : 				{
					"parameter_longname" : "p2[67]"
				}
,
				"obj-8::obj-47::obj-1::obj-4::obj-19" : 				{
					"parameter_longname" : "p3[67]"
				}
,
				"obj-8::obj-47::obj-1::obj-4::obj-3" : 				{
					"parameter_longname" : "p0[67]"
				}
,
				"obj-8::obj-47::obj-1::obj-5::obj-16" : 				{
					"parameter_longname" : "on[71]"
				}
,
				"obj-8::obj-47::obj-1::obj-5::obj-17" : 				{
					"parameter_longname" : "p1[71]"
				}
,
				"obj-8::obj-47::obj-1::obj-5::obj-18" : 				{
					"parameter_longname" : "p2[71]"
				}
,
				"obj-8::obj-47::obj-1::obj-5::obj-19" : 				{
					"parameter_longname" : "p3[71]"
				}
,
				"obj-8::obj-47::obj-1::obj-5::obj-3" : 				{
					"parameter_longname" : "p0[71]"
				}
,
				"obj-8::obj-47::obj-1::obj-6::obj-16" : 				{
					"parameter_longname" : "on[70]"
				}
,
				"obj-8::obj-47::obj-1::obj-6::obj-17" : 				{
					"parameter_longname" : "p1[70]"
				}
,
				"obj-8::obj-47::obj-1::obj-6::obj-18" : 				{
					"parameter_longname" : "p2[70]"
				}
,
				"obj-8::obj-47::obj-1::obj-6::obj-19" : 				{
					"parameter_longname" : "p3[70]"
				}
,
				"obj-8::obj-47::obj-1::obj-6::obj-3" : 				{
					"parameter_longname" : "p0[70]"
				}
,
				"obj-8::obj-47::obj-1::obj-7::obj-16" : 				{
					"parameter_longname" : "on[69]"
				}
,
				"obj-8::obj-47::obj-1::obj-7::obj-17" : 				{
					"parameter_longname" : "p1[69]"
				}
,
				"obj-8::obj-47::obj-1::obj-7::obj-18" : 				{
					"parameter_longname" : "p2[69]"
				}
,
				"obj-8::obj-47::obj-1::obj-7::obj-19" : 				{
					"parameter_longname" : "p3[69]"
				}
,
				"obj-8::obj-47::obj-1::obj-7::obj-3" : 				{
					"parameter_longname" : "p0[69]"
				}
,
				"obj-8::obj-47::obj-1::obj-8::obj-16" : 				{
					"parameter_longname" : "on[68]"
				}
,
				"obj-8::obj-47::obj-1::obj-8::obj-17" : 				{
					"parameter_longname" : "p1[68]"
				}
,
				"obj-8::obj-47::obj-1::obj-8::obj-18" : 				{
					"parameter_longname" : "p2[68]"
				}
,
				"obj-8::obj-47::obj-1::obj-8::obj-19" : 				{
					"parameter_longname" : "p3[68]"
				}
,
				"obj-8::obj-47::obj-1::obj-8::obj-3" : 				{
					"parameter_longname" : "p0[68]"
				}
,
				"obj-8::obj-47::obj-1::obj-9::obj-16" : 				{
					"parameter_longname" : "on[79]"
				}
,
				"obj-8::obj-47::obj-1::obj-9::obj-17" : 				{
					"parameter_longname" : "p1[79]"
				}
,
				"obj-8::obj-47::obj-1::obj-9::obj-18" : 				{
					"parameter_longname" : "p2[79]"
				}
,
				"obj-8::obj-47::obj-1::obj-9::obj-19" : 				{
					"parameter_longname" : "p3[79]"
				}
,
				"obj-8::obj-47::obj-1::obj-9::obj-3" : 				{
					"parameter_longname" : "p0[79]"
				}
,
				"obj-8::obj-47::obj-2::obj-10::obj-16" : 				{
					"parameter_longname" : "on[94]"
				}
,
				"obj-8::obj-47::obj-2::obj-10::obj-17" : 				{
					"parameter_longname" : "p1[94]"
				}
,
				"obj-8::obj-47::obj-2::obj-10::obj-18" : 				{
					"parameter_longname" : "p2[94]"
				}
,
				"obj-8::obj-47::obj-2::obj-10::obj-19" : 				{
					"parameter_longname" : "p3[94]"
				}
,
				"obj-8::obj-47::obj-2::obj-10::obj-3" : 				{
					"parameter_longname" : "p0[94]"
				}
,
				"obj-8::obj-47::obj-2::obj-11::obj-16" : 				{
					"parameter_longname" : "on[93]"
				}
,
				"obj-8::obj-47::obj-2::obj-11::obj-17" : 				{
					"parameter_longname" : "p1[93]"
				}
,
				"obj-8::obj-47::obj-2::obj-11::obj-18" : 				{
					"parameter_longname" : "p2[93]"
				}
,
				"obj-8::obj-47::obj-2::obj-11::obj-19" : 				{
					"parameter_longname" : "p3[93]"
				}
,
				"obj-8::obj-47::obj-2::obj-11::obj-3" : 				{
					"parameter_longname" : "p0[93]"
				}
,
				"obj-8::obj-47::obj-2::obj-13::obj-16" : 				{
					"parameter_longname" : "on[92]"
				}
,
				"obj-8::obj-47::obj-2::obj-13::obj-17" : 				{
					"parameter_longname" : "p1[92]"
				}
,
				"obj-8::obj-47::obj-2::obj-13::obj-18" : 				{
					"parameter_longname" : "p2[92]"
				}
,
				"obj-8::obj-47::obj-2::obj-13::obj-19" : 				{
					"parameter_longname" : "p3[92]"
				}
,
				"obj-8::obj-47::obj-2::obj-13::obj-3" : 				{
					"parameter_longname" : "p0[92]"
				}
,
				"obj-8::obj-47::obj-2::obj-14::obj-16" : 				{
					"parameter_longname" : "on[91]"
				}
,
				"obj-8::obj-47::obj-2::obj-14::obj-17" : 				{
					"parameter_longname" : "p1[91]"
				}
,
				"obj-8::obj-47::obj-2::obj-14::obj-18" : 				{
					"parameter_longname" : "p2[91]"
				}
,
				"obj-8::obj-47::obj-2::obj-14::obj-19" : 				{
					"parameter_longname" : "p3[91]"
				}
,
				"obj-8::obj-47::obj-2::obj-14::obj-3" : 				{
					"parameter_longname" : "p0[91]"
				}
,
				"obj-8::obj-47::obj-2::obj-15::obj-16" : 				{
					"parameter_longname" : "on[90]"
				}
,
				"obj-8::obj-47::obj-2::obj-15::obj-17" : 				{
					"parameter_longname" : "p1[90]"
				}
,
				"obj-8::obj-47::obj-2::obj-15::obj-18" : 				{
					"parameter_longname" : "p2[90]"
				}
,
				"obj-8::obj-47::obj-2::obj-15::obj-19" : 				{
					"parameter_longname" : "p3[90]"
				}
,
				"obj-8::obj-47::obj-2::obj-15::obj-3" : 				{
					"parameter_longname" : "p0[90]"
				}
,
				"obj-8::obj-47::obj-2::obj-16::obj-16" : 				{
					"parameter_longname" : "on[89]"
				}
,
				"obj-8::obj-47::obj-2::obj-16::obj-17" : 				{
					"parameter_longname" : "p1[89]"
				}
,
				"obj-8::obj-47::obj-2::obj-16::obj-18" : 				{
					"parameter_longname" : "p2[89]"
				}
,
				"obj-8::obj-47::obj-2::obj-16::obj-19" : 				{
					"parameter_longname" : "p3[89]"
				}
,
				"obj-8::obj-47::obj-2::obj-16::obj-3" : 				{
					"parameter_longname" : "p0[89]"
				}
,
				"obj-8::obj-47::obj-2::obj-17::obj-16" : 				{
					"parameter_longname" : "on[88]"
				}
,
				"obj-8::obj-47::obj-2::obj-17::obj-17" : 				{
					"parameter_longname" : "p1[88]"
				}
,
				"obj-8::obj-47::obj-2::obj-17::obj-18" : 				{
					"parameter_longname" : "p2[88]"
				}
,
				"obj-8::obj-47::obj-2::obj-17::obj-19" : 				{
					"parameter_longname" : "p3[88]"
				}
,
				"obj-8::obj-47::obj-2::obj-17::obj-3" : 				{
					"parameter_longname" : "p0[88]"
				}
,
				"obj-8::obj-47::obj-2::obj-1::obj-16" : 				{
					"parameter_longname" : "on[80]"
				}
,
				"obj-8::obj-47::obj-2::obj-1::obj-17" : 				{
					"parameter_longname" : "p1[80]"
				}
,
				"obj-8::obj-47::obj-2::obj-1::obj-18" : 				{
					"parameter_longname" : "p2[80]"
				}
,
				"obj-8::obj-47::obj-2::obj-1::obj-19" : 				{
					"parameter_longname" : "p3[80]"
				}
,
				"obj-8::obj-47::obj-2::obj-1::obj-3" : 				{
					"parameter_longname" : "p0[80]"
				}
,
				"obj-8::obj-47::obj-2::obj-2::obj-16" : 				{
					"parameter_longname" : "on[81]"
				}
,
				"obj-8::obj-47::obj-2::obj-2::obj-17" : 				{
					"parameter_longname" : "p1[81]"
				}
,
				"obj-8::obj-47::obj-2::obj-2::obj-18" : 				{
					"parameter_longname" : "p2[81]"
				}
,
				"obj-8::obj-47::obj-2::obj-2::obj-19" : 				{
					"parameter_longname" : "p3[81]"
				}
,
				"obj-8::obj-47::obj-2::obj-2::obj-3" : 				{
					"parameter_longname" : "p0[81]"
				}
,
				"obj-8::obj-47::obj-2::obj-3::obj-16" : 				{
					"parameter_longname" : "on[82]"
				}
,
				"obj-8::obj-47::obj-2::obj-3::obj-17" : 				{
					"parameter_longname" : "p1[82]"
				}
,
				"obj-8::obj-47::obj-2::obj-3::obj-18" : 				{
					"parameter_longname" : "p2[82]"
				}
,
				"obj-8::obj-47::obj-2::obj-3::obj-19" : 				{
					"parameter_longname" : "p3[82]"
				}
,
				"obj-8::obj-47::obj-2::obj-3::obj-3" : 				{
					"parameter_longname" : "p0[82]"
				}
,
				"obj-8::obj-47::obj-2::obj-4::obj-16" : 				{
					"parameter_longname" : "on[83]"
				}
,
				"obj-8::obj-47::obj-2::obj-4::obj-17" : 				{
					"parameter_longname" : "p1[83]"
				}
,
				"obj-8::obj-47::obj-2::obj-4::obj-18" : 				{
					"parameter_longname" : "p2[83]"
				}
,
				"obj-8::obj-47::obj-2::obj-4::obj-19" : 				{
					"parameter_longname" : "p3[83]"
				}
,
				"obj-8::obj-47::obj-2::obj-4::obj-3" : 				{
					"parameter_longname" : "p0[83]"
				}
,
				"obj-8::obj-47::obj-2::obj-5::obj-16" : 				{
					"parameter_longname" : "on[87]"
				}
,
				"obj-8::obj-47::obj-2::obj-5::obj-17" : 				{
					"parameter_longname" : "p1[87]"
				}
,
				"obj-8::obj-47::obj-2::obj-5::obj-18" : 				{
					"parameter_longname" : "p2[87]"
				}
,
				"obj-8::obj-47::obj-2::obj-5::obj-19" : 				{
					"parameter_longname" : "p3[87]"
				}
,
				"obj-8::obj-47::obj-2::obj-5::obj-3" : 				{
					"parameter_longname" : "p0[87]"
				}
,
				"obj-8::obj-47::obj-2::obj-6::obj-16" : 				{
					"parameter_longname" : "on[86]"
				}
,
				"obj-8::obj-47::obj-2::obj-6::obj-17" : 				{
					"parameter_longname" : "p1[86]"
				}
,
				"obj-8::obj-47::obj-2::obj-6::obj-18" : 				{
					"parameter_longname" : "p2[86]"
				}
,
				"obj-8::obj-47::obj-2::obj-6::obj-19" : 				{
					"parameter_longname" : "p3[86]"
				}
,
				"obj-8::obj-47::obj-2::obj-6::obj-3" : 				{
					"parameter_longname" : "p0[86]"
				}
,
				"obj-8::obj-47::obj-2::obj-7::obj-16" : 				{
					"parameter_longname" : "on[85]"
				}
,
				"obj-8::obj-47::obj-2::obj-7::obj-17" : 				{
					"parameter_longname" : "p1[85]"
				}
,
				"obj-8::obj-47::obj-2::obj-7::obj-18" : 				{
					"parameter_longname" : "p2[85]"
				}
,
				"obj-8::obj-47::obj-2::obj-7::obj-19" : 				{
					"parameter_longname" : "p3[85]"
				}
,
				"obj-8::obj-47::obj-2::obj-7::obj-3" : 				{
					"parameter_longname" : "p0[85]"
				}
,
				"obj-8::obj-47::obj-2::obj-8::obj-16" : 				{
					"parameter_longname" : "on[84]"
				}
,
				"obj-8::obj-47::obj-2::obj-8::obj-17" : 				{
					"parameter_longname" : "p1[84]"
				}
,
				"obj-8::obj-47::obj-2::obj-8::obj-18" : 				{
					"parameter_longname" : "p2[84]"
				}
,
				"obj-8::obj-47::obj-2::obj-8::obj-19" : 				{
					"parameter_longname" : "p3[84]"
				}
,
				"obj-8::obj-47::obj-2::obj-8::obj-3" : 				{
					"parameter_longname" : "p0[84]"
				}
,
				"obj-8::obj-47::obj-2::obj-9::obj-16" : 				{
					"parameter_longname" : "on[95]"
				}
,
				"obj-8::obj-47::obj-2::obj-9::obj-17" : 				{
					"parameter_longname" : "p1[95]"
				}
,
				"obj-8::obj-47::obj-2::obj-9::obj-18" : 				{
					"parameter_longname" : "p2[95]"
				}
,
				"obj-8::obj-47::obj-2::obj-9::obj-19" : 				{
					"parameter_longname" : "p3[95]"
				}
,
				"obj-8::obj-47::obj-2::obj-9::obj-3" : 				{
					"parameter_longname" : "p0[95]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "step32.store.maxpat",
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
 ],
		"autosave" : 0
	}

}
