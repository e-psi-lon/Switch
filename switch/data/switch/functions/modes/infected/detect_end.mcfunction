
scoreboard players set #game_state switch.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.human_king] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.zombie_king] run scoreboard players add #game_state switch.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.zombie_king] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.human_king] run scoreboard players add #game_state switch.data 2
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players add #game_state switch.data 3

# 1 = Victoire Rouge
# 2 = Victoire Bleue
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #infected_seconds switch.data 100000

# Cas des vainqueurs
execute if score #infected_seconds switch.data matches 900 if score #game_state switch.data matches 0 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 15 minutes !"}]
execute if score #game_state switch.data matches 1 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"rouges","color":"red"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,team=switch.temp.human_king]"},{"text":", "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.human]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"bleus","color":"blue"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,team=switch.temp.zombie_king]"},{"text":", "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.zombie]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

execute if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.human_king] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.human] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.zombie_king] at @s run function switch:engine/add_money
execute if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.zombie] at @s run function switch:engine/add_money

# Visuel de fin de partie
execute if score #infected_seconds switch.data matches 900.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s

