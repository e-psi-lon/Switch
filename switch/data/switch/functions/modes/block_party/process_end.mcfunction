
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!switch.detached,gamemode=!spectator] at @s run function switch:engine/add_money
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a[tag=!switch.detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=!switch.detached,gamemode=!spectator]"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a[tag=!switch.detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" AÏE ! Il n'y a eu aucun gagnant 💀. Cruelle défaite de tous les joueurs !"}]
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!switch.detached]
execute if score #process_end switch.data matches 1 as @a[tag=!switch.detached] run function switch:modes/block_party/death

execute if score #process_end switch.data matches 100 run function switch:engine/restart

