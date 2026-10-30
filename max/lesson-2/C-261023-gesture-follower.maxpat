{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 83.0, 133.0, 1395.0, 815.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 693.0, 147.0, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 495.0, 449.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 161.66666666666669, 171.0, 103.33333333333333, 22.0 ],
                    "text": "spawn"
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 246.66666666666669, 201.0, 75.0, 22.0 ],
                    "text": "print running"
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 161.66666666666669, 201.0, 72.0, 22.0 ],
                    "text": "print tracker"
                }
            },
            {
                "box": {
                    "id": "obj-112",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 197.66666666666669, 114.0, 247.33333333333331, 35.0 ],
                    "text": "../../code/bridge/.venv/bin/python ../../code/bridge/body2osc.py"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 160.66666666666669, 114.0, 31.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 12.0, 900.0, 24.0 ],
                    "text": "Exercise 2C · Following a gesture (mubu.hhmm)"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-2",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 45.0, 456.0, 307.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 52.0, 400.0, 22.0 ],
                    "text": "1 · FINGERTIP"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 74.0, 420.0, 33.0 ],
                    "text": "Start the tracker. Only the index fingertip (point 8) is used: its x and y in the image, 0-1. Open one exercise patch at a time."
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 115.0, 98.0, 22.0 ],
                    "saved_object_attributes": {
                        "port": 9001
                    },
                    "text": "udpreceive 9001"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 25.0, 145.0, 98.0, 22.0 ],
                    "text": "route /hand/raw"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 25.0, 175.0, 76.0, 22.0 ],
                    "text": "zl.slice 24"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 82.0, 204.0, 70.0, 22.0 ],
                    "text": "zl.slice 2"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 167.0, 229.0, 260.0, 20.0 ],
                    "text": "values 24 and 25: x and y of point 8"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 82.0, 235.0, 42.0, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 275.0, 64.0, 22.0 ],
                    "text": "s ex2c.xy"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 105.0, 275.0, 81.0, 22.0 ],
                    "text": "unpack 0. 0."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-13",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 105.0, 318.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-14",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 167.0, 318.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 225.0, 319.0, 40.0, 20.0 ],
                    "text": "x  y"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-16",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 360.5, 915.0, 400.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 367.5, 400.0, 22.0 ],
                    "text": "2 · RECORD"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 389.5, 890.0, 33.0 ],
                    "text": "Choose example 1, switch on 'record', draw a gesture in the air, switch off. Then examples 2 and 3, with different gestures. Each example is one buffer of the container below."
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 432.5, 25.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 55.0, 432.5, 25.0, 22.0 ],
                    "text": "2"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 85.0, 432.5, 25.0, 22.0 ],
                    "text": "3"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 120.0, 432.5, 60.0, 20.0 ],
                    "text": "example"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 462.5, 92.0, 22.0 ],
                    "text": "bufferindex $1"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 225.0, 432.5, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 253.0, 434.5, 50.0, 20.0 ],
                    "text": "record"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 225.0, 462.5, 64.0, 22.0 ],
                    "text": "record $1"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 355.0, 462.5, 64.0, 22.0 ],
                    "text": "r ex2c.xy"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 225.0, 495.5, 470.0, 22.0 ],
                    "saved_object_attributes": {
                        "verbose": 1
                    },
                    "text": "mubu.record ex2c data @predef yes @samplerate 30 @matrixcols 2 @maxsize 30s"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 725.0, 432.5, 59.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 795.0, 432.5, 59.0, 22.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 725.0, 462.5, 81.0, 22.0 ],
                    "text": "numbuffers 3"
                }
            },
            {
                "box": {
                    "alignviewbounds": 0,
                    "autobounds": 0,
                    "autorefreshrate": 0,
                    "autoupdate": 120.0,
                    "bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                    "bgcolordefault": 1,
                    "bufferchooser_bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                    "bufferchooser_bgcolordefault": 1,
                    "bufferchooser_fgcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "bufferchooser_fgcolordefault": 0,
                    "bufferchooser_position": 1,
                    "bufferchooser_shape": "buttons",
                    "bufferchooser_size": 15,
                    "bufferchooser_visible": 1,
                    "continousediting": 0,
                    "cursor_circleedgecolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "cursor_circlefillcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "cursor_circlefilled": 1,
                    "cursor_circleheight": 3.0,
                    "cursor_circlewidth": 3.0,
                    "cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "cursor_crossheight": -1.0,
                    "cursor_crosssizeunit": 0,
                    "cursor_crosswidth": -1.0,
                    "cursor_followmouse": 0,
                    "cursor_label": "",
                    "cursor_labelcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "cursor_labelfontsize": 12,
                    "cursor_labelposition": 0,
                    "cursor_labelxoffset": 0,
                    "cursor_labelyoffset": 0,
                    "cursor_nearest": 0,
                    "cursor_nearestcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "cursor_noringoffset": 0,
                    "cursor_numextracursors": 0,
                    "cursor_outputdata": 0,
                    "cursor_position": [ 0.0, 0.0 ],
                    "cursor_shape": "bar",
                    "cursor_size": 3.0,
                    "cursor_sizeunit": 0,
                    "cursor_symbol": "circle",
                    "cursor_symboledgecolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "cursor_symbolfillcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "cursor_symbolfilled": 1,
                    "cursor_symbolheight": 3.0,
                    "cursor_symbolsizeunit": 0,
                    "cursor_symbolwidth": 3.0,
                    "cursor_visible": 1,
                    "dirtypatcher": 1,
                    "domain_bounds": [ 0.0, 1.0 ],
                    "domainruler_bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                    "domainruler_bgcolordefault": 1,
                    "domainruler_fgcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "domainruler_fgcolordefault": 1,
                    "domainruler_grid": 0,
                    "domainruler_position": 0,
                    "domainruler_size": 15,
                    "domainruler_unit": 0,
                    "domainruler_visible": 0,
                    "domainscrollbar_color": [ 0.235, 0.235, 0.235, 1.0 ],
                    "domainscrollbar_colordefault": 1,
                    "domainscrollbar_size": 10,
                    "domainscrollbar_visible": 1,
                    "embed": 0,
                    "enablemousewheel": 0,
                    "externalfiles": 0,
                    "filename": "",
                    "foremost": 1,
                    "freeze": 0,
                    "id": "obj-32",
                    "layout": 0,
                    "maintrack": -1,
                    "maxclass": "imubu",
                    "mousewheelscroll": 0,
                    "mousewheelshiftstep": 40,
                    "mousewheelstep": 4,
                    "name": "ex2c",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "opacity": 0.0,
                    "opacityprogressive": 0,
                    "orientation": 0,
                    "outlettype": [ "" ],
                    "outputkeys": 0,
                    "outputmouse": 0,
                    "outputrangeselection": 0,
                    "outputselection": 0,
                    "outputtimeselection": 0,
                    "outputvalues": 0,
                    "outputviewname": 0,
                    "parameter_enable": 0,
                    "patching_rect": [ 25.0, 530.5, 880.0, 215.0 ],
                    "rangeruler_bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                    "rangeruler_bgcolordefault": 1,
                    "rangeruler_fgcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "rangeruler_fgcolordefault": 1,
                    "rangeruler_grid": 0,
                    "rangeruler_size": 35,
                    "rangeruler_visible": 0,
                    "refreshrate": 120.0,
                    "region_color": [ 0.800000011920929, 0.699999988079071, 0.699999988079071, 1.0 ],
                    "region_visible": 1,
                    "resamplefiles": 0,
                    "ringmaster": -1,
                    "scrollabledomain": 0,
                    "snaprate": 1000.0,
                    "splitbars_color": [ 0.235, 0.235, 0.235, 1.0 ],
                    "splitbars_size": 2,
                    "splitbars_visible": 1,
                    "tabs_bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                    "tabs_fgcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "tabs_position": 0,
                    "tabs_size": 20,
                    "tabs_visible": 1,
                    "tabsbgcolordefault": 1,
                    "tabsfgcolordefault": 1,
                    "tool": "edit",
                    "toolbar_bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                    "toolbar_position": 1,
                    "toolbar_size": 30,
                    "toolbar_transposition": 0,
                    "toolbar_visible": 1,
                    "toolbarbgcolordefault": 1,
                    "useplaceholders": 1,
                    "verbose": 1,
                    "vieworder": [ "default" ],
                    "windresize": 0
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-33",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 480.0, 45.0, 450.0, 215.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 490.0, 45.0, 400.0, 22.0 ],
                    "text": "3 · TRAIN AND FOLLOW"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 490.0, 74.0, 420.0, 33.0 ],
                    "text": "'train' fits one model per example. With 'follow' on, the model reports at every frame the likeliest gesture and how far through it you are."
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 490.0, 117.0, 42.0, 22.0 ],
                    "text": "train"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 550.0, 117.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 578.0, 119.0, 50.0, 20.0 ],
                    "text": "follow"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 740.0, 119.0, 190.0, 20.0 ],
                    "text": "states per gesture, then 'train'"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 550.0, 147.0, 53.0, 22.0 ],
                    "text": "play $1"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 620.0, 147.0, 64.0, 22.0 ],
                    "text": "r ex2c.xy"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 740.0, 147.0, 59.0, 22.0 ],
                    "text": "states 5"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 810.0, 147.0, 64.0, 22.0 ],
                    "text": "states 10"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 490.0, 180.0, 360.0, 22.0 ],
                    "saved_object_attributes": {
                        "verbose": 1
                    },
                    "text": "mubu.hhmm ex2c data @states 10 @regularization 0.05 0.01"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 490.0, 210.0, 104.0, 22.0 ],
                    "text": "route likelihood"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 0,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 490.0, 235.0, 90.0, 20.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "setstyle": 1,
                    "size": 3,
                    "slidercolor": [ 0.35, 0.45, 0.07, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 585.0, 235.0, 80.0, 20.0 ],
                    "text": "likelihoods"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 665.0, 210.0, 81.0, 22.0 ],
                    "text": "s ex2c.model"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 765.0, 210.0, 40.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 810.0, 210.0, 60.0, 20.0 ],
                    "text": "likeliest"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 765.0, 235.0, 76.0, 22.0 ],
                    "text": "s ex2c.best"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 850.0, 235.0, 80.0, 20.0 ],
                    "text": "to section 4"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-53",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 950.0, 67.0, 434.0, 487.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-54",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 960.0, 74.0, 400.0, 22.0 ],
                    "text": "4 · SOUND"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 960.0, 96.0, 400.0, 33.0 ],
                    "text": "The likeliest gesture chooses one of three sounds; its progress (0-1) is the playback position. Slow gesture: slow sound; backwards: backwards."
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 960.0, 137.0, 81.0, 22.0 ],
                    "text": "r ex2c.model"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1070.0, 137.0, 76.0, 22.0 ],
                    "text": "r ex2c.best"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1160.0, 137.0, 200.0, 20.0 ],
                    "text": "sets the argument of route"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 960.0, 167.0, 76.0, 22.0 ],
                    "text": "route model"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 960.0, 197.0, 53.0, 22.0 ],
                    "text": "route 1"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 960.0, 227.0, 92.0, 22.0 ],
                    "text": "route progress"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-62",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 960.0, 257.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1020.0, 257.0, 60.0, 20.0 ],
                    "text": "progress"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 960.0, 287.0, 70.0, 22.0 ],
                    "text": "pack 0. 40"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 960.0, 317.0, 42.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 960.0, 352.0, 76.0, 22.0 ],
                    "text": "r ex2c.best"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 960.0, 387.0, 289.0, 22.0 ],
                    "text": "selector~ 3 1"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1050.0, 352.0, 88.0, 22.0 ],
                    "text": "wave~ ex2c.s1"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 1210.0, 197.0, 160.0, 22.0 ],
                    "text": "buffer~ ex2c.s1 cello-f2.aif"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1140.0, 352.0, 88.0, 22.0 ],
                    "text": "wave~ ex2c.s2"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 1210.0, 227.0, 160.0, 22.0 ],
                    "text": "buffer~ ex2c.s2 duduk.aif"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1230.0, 352.0, 88.0, 22.0 ],
                    "text": "wave~ ex2c.s3"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 1210.0, 257.0, 160.0, 22.0 ],
                    "text": "buffer~ ex2c.s3 rainstick.aif"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1210.0, 287.0, 150.0, 20.0 ],
                    "text": "the three sounds"
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "orientation": 1,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 960.0, 432.0, 235.0, 47.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 960.0, 494.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1300.0, 387.0, 50.0, 20.0 ],
                    "text": "volume"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-78",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 950.0, 570.5, 430.0, 190.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-79",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 960.0, 575.0, 400.0, 22.0 ],
                    "text": "How to use"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 960.0, 602.5, 400.0, 87.0 ],
                    "text": "1. Audio on (section 4). Start the tracker.\n2. Record three different gestures as examples 1, 2, 3 (2-3 s each).\n3. Click 'train', switch on 'follow'.\n4. Perform the gestures slowly, fast, halfway, backwards.\nVariations: states 5 or 20 (then 'train'); the wrist (values 0 and 1) instead of the fingertip."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "source": [ "obj-119", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-12", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "order": 0,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "order": 1,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-44", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-44", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 1 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "order": 2,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "order": 1,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "order": 0,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 1 ],
                    "order": 0,
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "order": 1,
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 1 ],
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-7", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 2 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 3 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 1 ],
                    "source": [ "obj-75", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-85", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-75": [ "live.gain~", "live.gain~", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}