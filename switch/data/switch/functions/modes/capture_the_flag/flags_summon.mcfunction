
# Maps
execute if data storage switch:main {map:"ctf_plains_castles"} run summon armor_stand 146039 127 146114 {Invisible:1b,Invulnerable:1b,Marker:1b,Passengers:[{id:"minecraft:item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"minecraft:blue_banner",Count:1b},Rotation:[-90.0f,0.0f],Glowing:1b}],Rotation:[-90.0f,0.0f]}
execute if data storage switch:main {map:"ctf_plains_castles"} run summon armor_stand 146285 127 146114 {Invisible:1b,Invulnerable:1b,Marker:1b,Passengers:[{id:"minecraft:item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"minecraft:red_banner",Count:1b},Rotation:[90.0f,0.0f],Glowing:1b}],Rotation:[90.0f,0.0f]}
execute if data storage switch:main {map:"ctf_mountains_castles"} run summon armor_stand 147285 213 147106 {Invisible:1b,Invulnerable:1b,Marker:1b,Passengers:[{id:"minecraft:item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"minecraft:blue_banner",Count:1b},Rotation:[180.0f,0.0f],Glowing:1b}],Rotation:[180.0f,0.0f]}
execute if data storage switch:main {map:"ctf_mountains_castles"} run summon armor_stand 147076 213 147107 {Invisible:1b,Invulnerable:1b,Marker:1b,Passengers:[{id:"minecraft:item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"minecraft:red_banner",Count:1b},Rotation:[180.0f,0.0f],Glowing:1b}],Rotation:[180.0f,0.0f]}
execute if data storage switch:main {map:"ctf_flowers"} run summon armor_stand 148178 131 148052 {Invisible:1b,Invulnerable:1b,Marker:1b,Passengers:[{id:"minecraft:item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"minecraft:blue_banner",Count:1b},Rotation:[90.0f,0.0f],Glowing:1b}],Rotation:[90.0f,0.0f]}
execute if data storage switch:main {map:"ctf_flowers"} run summon armor_stand 148024 131 148053 {Invisible:1b,Invulnerable:1b,Marker:1b,Passengers:[{id:"minecraft:item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"minecraft:red_banner",Count:1b},Rotation:[-90.0f,0.0f],Glowing:1b}],Rotation:[-90.0f,0.0f]}
execute if data storage switch:main {map:"ctf_nether"} run summon armor_stand 149100 143 149029 {Invisible:1b,Invulnerable:1b,Marker:1b,Passengers:[{id:"minecraft:item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"minecraft:blue_banner",Count:1b},Rotation:[0.0f,0.0f],Glowing:1b}],Rotation:[0.0f,0.0f]}
execute if data storage switch:main {map:"ctf_nether"} run summon armor_stand 149102 143 149321 {Invisible:1b,Invulnerable:1b,Marker:1b,Passengers:[{id:"minecraft:item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"minecraft:red_banner",Count:1b},Rotation:[180.0f,0.0f],Glowing:1b}],Rotation:[180.0f,0.0f]}
execute if data storage switch:main {map:"ctf_forest_castles"} run summon armor_stand 150050 114 150034 {Invisible:1b,Invulnerable:1b,Marker:1b,Passengers:[{id:"minecraft:item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"minecraft:blue_banner",Count:1b},Rotation:[0.0f,0.0f],Glowing:1b}],Rotation:[0.0f,0.0f]}
execute if data storage switch:main {map:"ctf_forest_castles"} run summon armor_stand 150050 114 150180 {Invisible:1b,Invulnerable:1b,Marker:1b,Passengers:[{id:"minecraft:item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"minecraft:red_banner",Count:1b},Rotation:[180.0f,0.0f],Glowing:1b}],Rotation:[180.0f,0.0f]}

# Stuff
execute as @e[tag=switch.flag] at @s run data modify entity @s item.tag.Pos set from entity @e[type=armor_stand,sort=nearest,limit=1] Pos
execute as @e[tag=switch.flag] at @s run data modify entity @s item.tag.Rotation set from entity @e[type=armor_stand,sort=nearest,limit=1] Rotation
execute as @e[tag=switch.flag] run data modify entity @s transformation.translation[1] set value 0.5f

