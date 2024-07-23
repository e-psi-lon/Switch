
# French
execute if score #random switch.data matches 0 if entity @s[team=switch.temp.visible] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" a obtenu un soin pour son équipe !\n","color":"white"}]
execute if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" aobtenu un effet de vitesse pour son équipe !\n","color":"white"}]
execute if score #random switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" a obtenu une pomme d'or pour son équipe !\n","color":"white"}]
execute if score #random switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" a obtenu un effet d'absorption pour son équipe !\n","color":"white"}]
execute if score #random switch.data matches 4 if entity @s[team=switch.temp.visible] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" a réssucité l'un des visibles !\n","color":"white"}]
execute if score #random switch.data matches 4 if entity @s[team=switch.temp.spectre] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" a obtenu 5 TNT pour son équipe !\n","color":"white"}]
execute if score #random switch.data matches 5 if entity @s[team=switch.temp.visible] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" a obtenu un effet de résistance pour son équipe !\n","color":"white"}]
execute if score #random switch.data matches 5 if entity @s[team=switch.temp.spectre] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Les spectres ont obtenu 2 oeufs de creeper et 2 oeufs de zombie villageois !\n","color":"white"}]
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.visible] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" a obtenu un effet d'invisibilité pour son équipe !\n","color":"white"}]
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.spectre] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" a invoqué 3 Golems de Fer !\n","color":"white"}]
execute if score #random switch.data matches 7 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Tous les visibles ont été téléportés sur l'un d'entre eux !\n","color":"white"}]
execute if score #random switch.data matches 8 if entity @s[team=switch.temp.visible] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" a obtenu 10 flèches pour son équipe !\n","color":"white"}]
execute if score #random switch.data matches 8 if entity @s[team=switch.temp.spectre] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" a obtenu 10 flèches spectrales pour son équipe.","color":"white"},{"text":"\n"}]
execute if score #random switch.data matches 9 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" a infligé un effet de lenteur à l'équipe adverse","color":"white"},{"text":"\n"}]
execute if score #random switch.data matches 10 if entity @s[team=switch.temp.visible] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" a infligé un effet de Glowing aux Spectres","color":"white"},{"text":"\n"}]
execute if score #random switch.data matches 10 if entity @s[team=switch.temp.spectre] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" a infligé un effet de Poison aux Visibles","color":"white"},{"text":"\n"}]
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.visible] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Un visible aléatoire est devenu très puissant temporairement !","color":"aqua"},{"text":"\n"}]
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.spectre] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" a infligé un effet de cécité aux visibles !\n","color":"white"}]
execute if score #random switch.data matches 12 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Les visibles ont obtenu un effet de respiration aquatique !\n","color":"white"}]

# English
execute if score #random switch.data matches 0 if entity @s[team=switch.temp.visible] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" got a care for their team!\n","color":"white"}]
execute if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" got a speed effect for their team!","color":"white"},{"text":" "}]
execute if score #random switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" got a golden apple for their team!","color":"white"},{"text":" "}]
execute if score #random switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" got an absorption effect for their team!","color":"white"},{"text":" "}]
execute if score #random switch.data matches 4 if entity @s[team=switch.temp.visible] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" has resurrected one of the visible ones!","color":"white"},{"text":" "}]
execute if score #random switch.data matches 4 if entity @s[team=switch.temp.spectre] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" got 5 TNT for their team!","color":"white"},{"text":" "}]
execute if score #random switch.data matches 5 if entity @s[team=switch.temp.visible] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" got a resistance effect for their team!","color":"white"},{"text":" "}]
execute if score #random switch.data matches 5 if entity @s[team=switch.temp.spectre] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Spectres got 2 creeper eggs and 2 zombie villager eggs!\n","color":"white"}]
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.visible] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" got an invisibility effect for their team!","color":"white"},{"text":" "}]
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.spectre] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" summoned 3 Iron Golems!","color":"white"},{"text":" "}]
execute if score #random switch.data matches 7 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"All visible have been teleported to one of them!","color":"white"},{"text":" "}]
execute if score #random switch.data matches 8 if entity @s[team=switch.temp.visible] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" got 10 arrows for their team!","color":"white"},{"text":" "}]
execute if score #random switch.data matches 8 if entity @s[team=switch.temp.spectre] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" got 10 spectral arrows for their team.","color":"white"},{"text":" "}]
execute if score #random switch.data matches 9 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" inflicted a slow effect on the opposing team","color":"white"},{"text":" "}]
execute if score #random switch.data matches 10 if entity @s[team=switch.temp.visible] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" inflicted a Glowing effect on the Spectres","color":"white"},{"text":" "}]
execute if score #random switch.data matches 10 if entity @s[team=switch.temp.spectre] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" inflicted a Poison effect on the Visibles","color":"white"},{"text":" "}]
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.visible] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"A random visible has become very powerful temporarily!","color":"aqua"},{"text":"\n"}]
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.spectre] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":" inflicted a blindness effect on the visible!","color":"white"},{"text":" "}]
execute if score #random switch.data matches 12 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"The visible ones have achieved an aquatic breathing effect!\n","color":"white"}]

