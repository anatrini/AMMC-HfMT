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
        "rect": [
            60.0,
            60.0,
            1500.0,
            900.0
        ],
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        12.0,
                        1100.0,
                        24.0
                    ],
                    "text": "Exercise 3C · A map of harmonies (ml.som, pitch-class histograms, prnn serve)"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "id": "obj-2",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        45.0,
                        660.0,
                        560.0
                    ],
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
                    "patching_rect": [
                        25.0,
                        52.0,
                        640.0,
                        22.0
                    ],
                    "text": "1 · HISTOGRAMS"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        74.0,
                        640.0,
                        47.0
                    ],
                    "text": "One histogram every 5 s of each MIDI file: the share of time each pitch class sounds, computed by histograms.py with the code of Performance RNN. Read the Bach and Chopin of MAESTRO (9756 + 18947 histograms), or compute new ones: the script sends them here over OSC (port 9020)."
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        25.0,
                        130.0,
                        180.0,
                        22.0
                    ],
                    "text": "read maestro-bach-chopin.txt"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        95.0,
                        160.0,
                        51.0,
                        22.0
                    ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        25.0,
                        190.0,
                        79.0,
                        22.0
                    ],
                    "text": "delay 200"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        25.0,
                        220.0,
                        56.0,
                        22.0
                    ],
                    "text": "length"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        150.0,
                        220.0,
                        49.0,
                        22.0
                    ],
                    "text": "write"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        150.0,
                        180.0,
                        70.0,
                        33.0
                    ],
                    "text": "save them to a file",
                    "linecount": 2
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        130.0,
                        505.0,
                        110.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll ex3c.data"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        235.0,
                        130.0,
                        430.0,
                        33.0
                    ],
                    "text": "or compute them: your files in midi/ next to this patch, or one composer of MAESTRO",
                    "linecount": 2
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "int"
                    ],
                    "patching_rect": [
                        235.0,
                        318.0,
                        100.0,
                        22.0
                    ],
                    "text": "spawn"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        235.0,
                        167.0,
                        351.0,
                        22.0
                    ],
                    "text": "../../../performance_rnn_torch/.venv/bin/python histograms.py midi"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        260.0,
                        197.0,
                        410.0,
                        49.0
                    ],
                    "text": "../../../performance_rnn_torch/.venv/bin/python histograms.py --maestro ../../../performance_rnn_torch/data/maestro-v3.0.0 --composer 'Johann Sebastian Bach'",
                    "linecount": 3
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        285.0,
                        254.0,
                        380.0,
                        49.0
                    ],
                    "text": "../../../performance_rnn_torch/.venv/bin/python histograms.py --maestro ../../../performance_rnn_torch/data/maestro-v3.0.0 --composer 'Frédéric Chopin'",
                    "linecount": 3
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        235.0,
                        348.0,
                        100.0,
                        22.0
                    ],
                    "text": "print histograms"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        345.0,
                        348.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        372.0,
                        350.0,
                        60.0,
                        20.0
                    ],
                    "text": "running"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        235.0,
                        385.0,
                        121.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "port": 9020
                    },
                    "text": "udpreceive 9020"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        235.0,
                        415.0,
                        200.0,
                        22.0
                    ],
                    "text": "route /clear /histogram /done"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        150.0,
                        445.0,
                        49.0,
                        22.0
                    ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        380.0,
                        445.0,
                        86.0,
                        22.0
                    ],
                    "text": "zl.slice 1"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 0,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        380.0,
                        475.0,
                        150.0,
                        45.0
                    ],
                    "setminmax": [
                        0.0,
                        1.0
                    ],
                    "setstyle": 1,
                    "size": 12,
                    "slidercolor": [
                        0.35,
                        0.45,
                        0.07,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        380.0,
                        523.0,
                        150.0,
                        20.0
                    ],
                    "text": "the last one received"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        260.0,
                        545.0,
                        60.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        325.0,
                        547.0,
                        75.0,
                        20.0
                    ],
                    "text": "histograms"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        260.0,
                        575.0,
                        100.0,
                        22.0
                    ],
                    "text": "s ex3c.count"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "id": "obj-29",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        690.0,
                        45.0,
                        770.0,
                        695.0
                    ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        700.0,
                        52.0,
                        750.0,
                        22.0
                    ],
                    "text": "2 · TRAIN"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        700.0,
                        74.0,
                        750.0,
                        47.0
                    ],
                    "text": "'train' sets every node to a random histogram, then trains in 40 rounds of 1500 histograms in random order: the neighbourhood shrinks from half the map to 0.25 nodes, the learning rate from 0.5 to 0.01. The map is redrawn after every round."
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        700.0,
                        130.0,
                        86.0,
                        22.0
                    ],
                    "text": "loadmess 8"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        700.0,
                        160.0,
                        40.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        745.0,
                        162.0,
                        65.0,
                        20.0
                    ],
                    "text": "map size"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        860.0,
                        160.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        887.0,
                        162.0,
                        45.0,
                        20.0
                    ],
                    "text": "train"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1270.0,
                        260.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1297.0,
                        262.0,
                        65.0,
                        20.0
                    ],
                    "text": "training"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [
                        "int",
                        "int",
                        "int",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        700.0,
                        190.0,
                        93.0,
                        22.0
                    ],
                    "text": "t i i i i i"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "bang",
                        "bang",
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        860.0,
                        190.0,
                        79.0,
                        22.0
                    ],
                    "text": "t b b b b"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1020.0,
                        160.0,
                        95.0,
                        22.0
                    ],
                    "text": "r ex3c.count"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        700.0,
                        620.0,
                        80.0,
                        22.0
                    ],
                    "text": "prepend size"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        720.0,
                        590.0,
                        95.0,
                        22.0
                    ],
                    "text": "s ex3c.mapsize"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        840.0,
                        230.0,
                        37.0,
                        22.0
                    ],
                    "text": "* 1"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1085.0,
                        245.0,
                        49.0,
                        22.0
                    ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [
                        "bang",
                        "bang",
                        "int"
                    ],
                    "patching_rect": [
                        880.0,
                        262.0,
                        58.0,
                        22.0
                    ],
                    "text": "uzi 64"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        922.0,
                        292.0,
                        37.0,
                        22.0
                    ],
                    "text": "- 1"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "bang"
                    ],
                    "patching_rect": [
                        922.0,
                        322.0,
                        51.0,
                        22.0
                    ],
                    "text": "t i b"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        975.0,
                        352.0,
                        60.0,
                        22.0
                    ],
                    "text": "random 1"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        975.0,
                        382.0,
                        88.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll ex3c.data"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        900.0,
                        352.0,
                        51.0,
                        22.0
                    ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        820.0,
                        382.0,
                        37.0,
                        22.0
                    ],
                    "text": "% 8"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        870.0,
                        382.0,
                        37.0,
                        22.0
                    ],
                    "text": "/ 8"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        820.0,
                        412.0,
                        72.0,
                        22.0
                    ],
                    "text": "pack 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        820.0,
                        442.0,
                        65.0,
                        22.0
                    ],
                    "text": "zl.join"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        820.0,
                        472.0,
                        85.0,
                        22.0
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1140.0,
                        235.0,
                        49.0,
                        22.0
                    ],
                    "text": "set 0"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1200.0,
                        230.0,
                        30.0,
                        22.0
                    ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1245.0,
                        195.0,
                        30.0,
                        22.0
                    ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1245.0,
                        225.0,
                        95.0,
                        22.0
                    ],
                    "text": "s ex3c.playoff"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        1200.0,
                        262.0,
                        55.0,
                        22.0
                    ],
                    "text": "metro 20"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [
                        "int",
                        "",
                        "",
                        "int"
                    ],
                    "patching_rect": [
                        1140.0,
                        290.0,
                        72.0,
                        22.0
                    ],
                    "text": "counter 0 39"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "bang",
                        "bang",
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        1140.0,
                        320.0,
                        79.0,
                        22.0
                    ],
                    "text": "t b b f f"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        1290.0,
                        350.0,
                        50.0,
                        22.0
                    ],
                    "text": "sel 39"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1245.0,
                        380.0,
                        30.0,
                        22.0
                    ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [
                        "bang",
                        "bang",
                        "int"
                    ],
                    "patching_rect": [
                        1145.0,
                        380.0,
                        50.0,
                        22.0
                    ],
                    "text": "uzi 1500"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1145.0,
                        440.0,
                        55.0,
                        22.0
                    ],
                    "text": "random 1"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1125.0,
                        470.0,
                        85.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll ex3c.data"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1240.0,
                        500.0,
                        215.0,
                        22.0
                    ],
                    "text": "expr ($f2/2.)*pow(0.5/$f2\\, $f1/39.)"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1225.0,
                        590.0,
                        195.0,
                        22.0
                    ],
                    "text": "expr 0.5*pow(0.02\\, $f1/39.)"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1240.0,
                        530.0,
                        156.0,
                        22.0
                    ],
                    "text": "prepend neighborhood"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1225.0,
                        620.0,
                        128.0,
                        22.0
                    ],
                    "text": "prepend learning"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1100.0,
                        355.0,
                        42.0,
                        22.0
                    ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        980.0,
                        420.0,
                        100.0,
                        33.0
                    ],
                    "text": "after each round: redraw",
                    "linecount": 2
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1085.0,
                        650.0,
                        130.0,
                        22.0
                    ],
                    "text": "ml.som 8 4 0.5 0"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        900.0,
                        620.0,
                        86.0,
                        22.0
                    ],
                    "text": "r ex3c.get"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1085.0,
                        680.0,
                        110.0,
                        22.0
                    ],
                    "text": "s ex3c.weights"
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1199.0,
                        680.0,
                        100.0,
                        22.0
                    ],
                    "text": "prepend node"
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1199.0,
                        710.0,
                        100.0,
                        22.0
                    ],
                    "text": "s ex3c.nodes"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "id": "obj-80",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1475.0,
                        45.0,
                        435.0,
                        845.0
                    ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-81",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1485.0,
                        52.0,
                        415.0,
                        22.0
                    ],
                    "text": "3 · PLAY"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1485.0,
                        74.0,
                        415.0,
                        47.0
                    ],
                    "text": "Click and drag on the map: the 12 weights of that point, interpolated between nodes, go to prnn serve as /histogram. Start the server and the notes with B-261030-prnn.maxpat."
                }
            },
            {
                "box": {
                    "border": 0,
                    "embed": 0,
                    "filename": "ex3.som-map.js",
                    "id": "obj-83",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1485.0,
                        350.0,
                        300.0,
                        300.0
                    ],
                    "textfile": {
                        "filename": "ex3.som-map.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1695.0,
                        318.0,
                        95.0,
                        22.0
                    ],
                    "text": "r ex3c.nodes"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1790.0,
                        178.0,
                        100.0,
                        22.0
                    ],
                    "text": "r ex3c.mapsize"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1795.0,
                        322.0,
                        101.0,
                        22.0
                    ],
                    "text": "prepend mapsize"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1555.0,
                        314.0,
                        105.0,
                        22.0
                    ],
                    "text": "loadmess labels 1"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1485.0,
                        665.0,
                        93.0,
                        22.0
                    ],
                    "text": "prepend get"
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1485.0,
                        695.0,
                        86.0,
                        22.0
                    ],
                    "text": "s ex3c.get"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1620.0,
                        695.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1648.0,
                        697.0,
                        130.0,
                        20.0
                    ],
                    "text": "send to the server"
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1620.0,
                        665.0,
                        100.0,
                        22.0
                    ],
                    "text": "r ex3c.playoff"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1790.0,
                        695.0,
                        100.0,
                        22.0
                    ],
                    "text": "r ex3c.weights"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1620.0,
                        730.0,
                        44.0,
                        22.0
                    ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1620.0,
                        760.0,
                        86.0,
                        22.0
                    ],
                    "text": "zl.slice 2"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1485.0,
                        148.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1485.0,
                        125.0,
                        280.0,
                        20.0
                    ],
                    "text": "use the phone (touch x, y from Exercise 1)"
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1513.0,
                        148.0,
                        100.0,
                        22.0
                    ],
                    "text": "r sensor.values"
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1485.0,
                        178.0,
                        44.0,
                        22.0
                    ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "float",
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        1485.0,
                        208.0,
                        121.0,
                        22.0
                    ],
                    "text": "unpack 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        1730.0,
                        208.0,
                        37.0,
                        22.0
                    ],
                    "text": "- 1"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1485.0,
                        238.0,
                        110.0,
                        22.0
                    ],
                    "text": "scale 0. 1. 0. 7."
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1620.0,
                        238.0,
                        110.0,
                        22.0
                    ],
                    "text": "scale 0. 1. 0. 7."
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1485.0,
                        268.0,
                        79.0,
                        22.0
                    ],
                    "text": "pak 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1485.0,
                        298.0,
                        66.0,
                        22.0
                    ],
                    "text": "prepend xy"
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1620.0,
                        262.0,
                        178.0,
                        47.0
                    ],
                    "text": "values assumed 0-1: change the first two numbers of scale if not"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 0,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1790.0,
                        790.0,
                        100.0,
                        50.0
                    ],
                    "setminmax": [
                        0.0,
                        1.0
                    ],
                    "setstyle": 1,
                    "size": 12,
                    "slidercolor": [
                        0.35,
                        0.45,
                        0.07,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1485.0,
                        795.0,
                        80.0,
                        22.0
                    ],
                    "text": "speedlim 50"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1485.0,
                        825.0,
                        120.0,
                        22.0
                    ],
                    "text": "prepend /histogram"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1485.0,
                        855.0,
                        150.0,
                        22.0
                    ],
                    "text": "udpsend 127.0.0.1 9010"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "id": "obj-111",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        620.0,
                        660.0,
                        165.0
                    ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-112",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        627.0,
                        640.0,
                        22.0
                    ],
                    "text": "How to use"
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "linecount": 8,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        652.0,
                        640.0,
                        120.0
                    ],
                    "text": "1. 'read maestro-bach-chopin.txt' (section 1), or click one of the three messages and wait until 'running' goes off (about a minute for a composer of MAESTRO).\n2. 'train' (section 2). The map is ready when 'training' goes off.\n3. Open B-261030-prnn.maxpat: start the server, 'play', choose a synthesizer.\n4. Here: 'send to the server', then click and drag on the map. Each cell shows its 12 weights and its strongest pitch class.\n5. Map size 4, then 16 ('train' again). Your own files with the Bach model, then with the Chopin model."
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1240.0,
                        405.0,
                        95.0,
                        22.0
                    ],
                    "text": "r ex3c.count"
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1360.0,
                        470.0,
                        95.0,
                        22.0
                    ],
                    "text": "r ex3c.mapsize"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-102",
                        0
                    ],
                    "source": [
                        "obj-100",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-103",
                        0
                    ],
                    "source": [
                        "obj-100",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-102",
                        4
                    ],
                    "order": 1,
                    "source": [
                        "obj-101",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-103",
                        4
                    ],
                    "order": 0,
                    "source": [
                        "obj-101",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-104",
                        0
                    ],
                    "source": [
                        "obj-102",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-104",
                        1
                    ],
                    "source": [
                        "obj-103",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-105",
                        0
                    ],
                    "source": [
                        "obj-104",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-83",
                        0
                    ],
                    "source": [
                        "obj-105",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-109",
                        0
                    ],
                    "source": [
                        "obj-108",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-110",
                        0
                    ],
                    "source": [
                        "obj-109",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-26",
                        0
                    ],
                    "source": [
                        "obj-11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-17",
                        0
                    ],
                    "source": [
                        "obj-13",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-18",
                        0
                    ],
                    "source": [
                        "obj-13",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-13",
                        0
                    ],
                    "source": [
                        "obj-14",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-13",
                        0
                    ],
                    "source": [
                        "obj-15",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-13",
                        0
                    ],
                    "source": [
                        "obj-16",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-21",
                        0
                    ],
                    "source": [
                        "obj-20",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-11",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-21",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-22",
                        0
                    ],
                    "source": [
                        "obj-21",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-23",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-21",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-26",
                        0
                    ],
                    "source": [
                        "obj-21",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-11",
                        0
                    ],
                    "source": [
                        "obj-22",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-24",
                        0
                    ],
                    "source": [
                        "obj-23",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-28",
                        0
                    ],
                    "source": [
                        "obj-26",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-33",
                        0
                    ],
                    "source": [
                        "obj-32",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-39",
                        0
                    ],
                    "source": [
                        "obj-33",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-40",
                        0
                    ],
                    "source": [
                        "obj-35",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-42",
                        0
                    ],
                    "order": 2,
                    "source": [
                        "obj-39",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-43",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-39",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-44",
                        1
                    ],
                    "source": [
                        "obj-39",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-44",
                        0
                    ],
                    "source": [
                        "obj-39",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-52",
                        1
                    ],
                    "source": [
                        "obj-39",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-53",
                        1
                    ],
                    "source": [
                        "obj-39",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-69",
                        1
                    ],
                    "order": 0,
                    "source": [
                        "obj-115",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-45",
                        0
                    ],
                    "source": [
                        "obj-40",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-46",
                        0
                    ],
                    "source": [
                        "obj-40",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-57",
                        0
                    ],
                    "order": 2,
                    "source": [
                        "obj-40",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-58",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-40",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-59",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-40",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-67",
                        0
                    ],
                    "source": [
                        "obj-40",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-49",
                        1
                    ],
                    "order": 1,
                    "source": [
                        "obj-41",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-67",
                        1
                    ],
                    "order": 0,
                    "source": [
                        "obj-114",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-75",
                        0
                    ],
                    "source": [
                        "obj-42",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-46",
                        1
                    ],
                    "source": [
                        "obj-44",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-75",
                        0
                    ],
                    "source": [
                        "obj-45",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-47",
                        0
                    ],
                    "source": [
                        "obj-46",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-48",
                        0
                    ],
                    "source": [
                        "obj-47",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-49",
                        0
                    ],
                    "source": [
                        "obj-48",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-51",
                        0
                    ],
                    "source": [
                        "obj-48",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-50",
                        0
                    ],
                    "source": [
                        "obj-49",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-6",
                        0
                    ],
                    "source": [
                        "obj-5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-55",
                        1
                    ],
                    "source": [
                        "obj-50",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-52",
                        0
                    ],
                    "source": [
                        "obj-51",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-53",
                        0
                    ],
                    "source": [
                        "obj-51",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-54",
                        0
                    ],
                    "source": [
                        "obj-52",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-54",
                        1
                    ],
                    "source": [
                        "obj-53",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-55",
                        0
                    ],
                    "source": [
                        "obj-54",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-56",
                        0
                    ],
                    "source": [
                        "obj-55",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-75",
                        0
                    ],
                    "source": [
                        "obj-56",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-62",
                        0
                    ],
                    "source": [
                        "obj-57",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-37",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-58",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-61",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-58",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-60",
                        0
                    ],
                    "source": [
                        "obj-59",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-11",
                        0
                    ],
                    "source": [
                        "obj-6",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-7",
                        0
                    ],
                    "source": [
                        "obj-6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-62",
                        0
                    ],
                    "source": [
                        "obj-61",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-63",
                        0
                    ],
                    "source": [
                        "obj-62",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-64",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-63",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-66",
                        0
                    ],
                    "source": [
                        "obj-63",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-69",
                        0
                    ],
                    "source": [
                        "obj-63",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-70",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-63",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-73",
                        0
                    ],
                    "source": [
                        "obj-63",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-65",
                        0
                    ],
                    "source": [
                        "obj-64",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-37",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-65",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-61",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-65",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-67",
                        0
                    ],
                    "source": [
                        "obj-66",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-68",
                        0
                    ],
                    "source": [
                        "obj-67",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-75",
                        0
                    ],
                    "source": [
                        "obj-68",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-71",
                        0
                    ],
                    "source": [
                        "obj-69",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-8",
                        0
                    ],
                    "source": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-72",
                        0
                    ],
                    "source": [
                        "obj-70",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-75",
                        0
                    ],
                    "source": [
                        "obj-71",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-75",
                        0
                    ],
                    "source": [
                        "obj-72",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-75",
                        0
                    ],
                    "source": [
                        "obj-73",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-77",
                        0
                    ],
                    "source": [
                        "obj-75",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-78",
                        0
                    ],
                    "source": [
                        "obj-75",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-75",
                        0
                    ],
                    "source": [
                        "obj-76",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-79",
                        0
                    ],
                    "source": [
                        "obj-78",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-11",
                        0
                    ],
                    "source": [
                        "obj-8",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-88",
                        0
                    ],
                    "source": [
                        "obj-83",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-83",
                        0
                    ],
                    "source": [
                        "obj-84",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-101",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-85",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-86",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-85",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-83",
                        0
                    ],
                    "source": [
                        "obj-86",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-83",
                        0
                    ],
                    "source": [
                        "obj-87",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-89",
                        0
                    ],
                    "source": [
                        "obj-88",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-11",
                        0
                    ],
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-94",
                        0
                    ],
                    "source": [
                        "obj-90",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-90",
                        0
                    ],
                    "source": [
                        "obj-92",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-94",
                        1
                    ],
                    "source": [
                        "obj-93",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-95",
                        0
                    ],
                    "source": [
                        "obj-94",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-107",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-95",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-108",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-95",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-99",
                        0
                    ],
                    "source": [
                        "obj-96",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-99",
                        1
                    ],
                    "source": [
                        "obj-98",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-100",
                        0
                    ],
                    "source": [
                        "obj-99",
                        0
                    ]
                }
            }
        ],
        "autosave": 0
    }
}