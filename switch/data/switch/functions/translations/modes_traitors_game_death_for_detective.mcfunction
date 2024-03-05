
# French
execute if entity @s[scores={switch.temp.role=0}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était un "},{"text":"UWUWUWUWU","color":"gray","obfuscated":true},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=2}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était un "},{"text":"Innocent","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=3..4}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était le "},{"text":"Ninja","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=5}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était un "},{"text":"Traitre","color":"red"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=6}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était le "},{"text":"Gros Traitre","color":"dark_red"},{"text":" !"}]
execute if score #success switch.data matches 0 if entity @s[scores={switch.temp.role=7}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, il était le "},{"text":"Floupy","color":"yellow"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=2}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"Innocent","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=3..4}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était le "},{"text":"Ninja","color":"green"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=5}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était un "},{"text":"Traitre","color":"red"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=6}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était le "},{"text":"Gros Traitre","color":"dark_red"},{"text":" !"}]
execute if score #success switch.data matches 1 if entity @s[scores={switch.temp.role=7}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mort, c'était le "},{"text":"Floupy","color":"yellow"},{"text":" !"}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=2}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Innocent","color":"green"},{"text":" fût son rôle..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=3..4}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Ninja","color":"green"},{"text":" fût son rôle..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=5}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Traitre","color":"red"},{"text":" fût son rôle..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=6}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Gros Traitre","color":"dark_red"},{"text":" fût son rôle..."}]
execute if score #success switch.data matches 2 if entity @s[scores={switch.temp.role=7}] run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"nbt":"data.Name","entity":"@s"},{"text":" est mouru, "},{"text":"Floupy","color":"yellow"},{"text":" fût son rôle..."}]

