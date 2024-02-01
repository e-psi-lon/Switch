
# TODO : tp les joueurs au début / conditions de team / définir l'axobonus de l'axolot

scoreboard players set @a[tag=!detached] switch.alive 3
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time

gamerule fallDamage false

# partie en équipe aléatoire
scoreboard players set #TEAM_FISH switch.data 0
execute if predicate switch:chance/0.33 run scoreboard players set #TEAM_FISH switch.data 1


## Téléportation des joueurs
execute if score #TEAM_FISH switch.data matches 0 
function switch:choose_map_for/fish_fight
execute as @a[tag=!detached] run function switch:maps/spread_one_player
execute as @a[tag=!detached] run function switch:modes/fish_fight/xp_bar

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Fish Fight, expulsez les autres !"}]

scoreboard objectives add switch.temp.damages dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.old_x dummy
scoreboard objectives add switch.temp.old_z dummy
scoreboard objectives add switch.temp.blocks_run dummy
scoreboard players set @a[tag=!detached] switch.temp.cooldown 120

scoreboard players set #fish_fight_seconds switch.data 0
scoreboard players set #fish_fight_ticks switch.data 0
scoreboard players set #process_end switch.data 0

# gamemode survival
gamemode survival @a[tag=!detached]
# donner blindness et slownees pendant 4 secondes
effect give @a[tag=!detached] minecraft:blindness 4 2 true
effect give @a[tag=!detached] minecraft:slowness 4 2 true

