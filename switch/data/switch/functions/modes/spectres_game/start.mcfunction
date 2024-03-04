
gamemode survival @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1
function switch:utils/set_dynamic_time

# Get new players and players count
scoreboard players add @a[tag=!detached] switch.stats.played.spectres_game 0
execute store result score #count switch.data if entity @a[tag=!detached]
execute store result score #new_players switch.data if entity @a[tag=!detached,scores={switch.stats.played.spectres_game=0}]

## Partie spectror game aléatoire
scoreboard objectives add switch.temp.spectror dummy
scoreboard players set #SPECTROR_GAME switch.data 0
execute unless score #new_players switch.data matches 2.. if score #count switch.data matches 10.. if predicate switch:chance/0.33 run scoreboard players set #SPECTROR_GAME switch.data 1
#mettre le score à 1

## Partie TASKS GAME aléatoire
scoreboard objectives add switch.temp.break_obsidian minecraft.mined:minecraft.crying_obsidian
scoreboard players set #TASKS_GAME switch.data 0
execute unless score #new_players switch.data matches 2.. if score #count switch.data matches 10.. if predicate switch:chance/0.33 run scoreboard players set #TASKS_GAME switch.data 1
#mettre le score à 1




## Placement de la map et des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/spectres_game

gamerule mobGriefing true
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Spectres Game dans 10 secondes, un tier des joueurs sont des spectres invisibles laissant des particules d'eau sur leur chemin lorsqu'ils ne sneak pas, ils doivent tuer les joueurs visibles tandis qu'eux doivent survivre et tuer les spectres !"}]
tellraw @a[tag=!detached] ["\n",{"nbt":"ParalyaPvPOld","storage":"switch:main","interpret":true}]
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s


scoreboard players set #remaining_time switch.data 901
scoreboard players set #spectres_game_seconds switch.data -1
scoreboard players set #spectres_game_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1
scoreboard players set #nb_dead_spectres switch.data 0
scoreboard players set #nb_dead_visibles switch.data 0

scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.damages dummy {"text":" Coups infligés ","color":"aqua"}
scoreboard objectives add switch.temp.kills playerKillCount {"text":" Joueurs tués ","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.damages
scoreboard objectives setdisplay list switch.health

# Choix des rôles + give d'items
team add switch.temp.visible
team add switch.temp.spectre
team modify switch.temp.visible color dark_green
team modify switch.temp.spectre color yellow
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/spectres_game/roles/
# Si partie spectror game
execute if score #SPECTROR_GAME switch.data matches 1 run scoreboard players set @r[team=switch.temp.visible] switch.temp.spectror 1
execute if score #SPECTROR_GAME switch.data matches 1 run team join switch.temp.spectre @a[scores={switch.temp.spectror=1}]
execute if score #SPECTROR_GAME switch.data matches 1 run scoreboard players set @a[scores={switch.temp.spectror=1}] switch.alive 3

execute as @a[tag=!detached] at @s run function switch:modes/spectres_game/give_items

give @r[team=switch.temp.spectre] splash_potion{display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:instant_damage",amplifier:0b,duration:20,show_particles:0b},{id:"minecraft:blindness",amplifier:0b,duration:80,show_particles:0b}],Potion:"minecraft:water"}
give @r[team=switch.temp.spectre] splash_potion{display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:instant_damage",amplifier:0b,duration:20,show_particles:0b},{id:"minecraft:blindness",amplifier:0b,duration:80,show_particles:0b}],Potion:"minecraft:water"}
give @r[team=switch.temp.spectre] splash_potion{display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:instant_damage",amplifier:0b,duration:20,show_particles:0b},{id:"minecraft:blindness",amplifier:0b,duration:80,show_particles:0b}],Potion:"minecraft:water"}
give @r[team=switch.temp.spectre] splash_potion{display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:nausea",amplifier:0b,duration:200,show_particles:0b},{id:"minecraft:poison",amplifier:0b,duration:220,show_particles:0b}],Potion:"minecraft:water"}
give @r[team=switch.temp.spectre] splash_potion{display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:nausea",amplifier:0b,duration:200,show_particles:0b},{id:"minecraft:poison",amplifier:0b,duration:220,show_particles:0b}],Potion:"minecraft:water"}
give @r[team=switch.temp.spectre] splash_potion{display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:nausea",amplifier:0b,duration:200,show_particles:0b},{id:"minecraft:poison",amplifier:0b,duration:220,show_particles:0b}],Potion:"minecraft:water"}

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance 18 255 true
effect give @a[tag=!detached] fire_resistance 18 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 22 255 true
effect give @a[team=switch.temp.visible] blindness 11 255 true
effect give @a[team=switch.temp.spectre] blindness 3 255 true
effect give @a[tag=!detached] slowness 8 255 true

