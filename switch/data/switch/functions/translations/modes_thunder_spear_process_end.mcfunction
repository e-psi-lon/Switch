
# French
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=!detached,tag=switch.winner]","color":"yellow"},{"text":" avec un total de "},{"score":{"name":"#max","objective":"switch.data"},"color":"yellow"},{"text":" kills !"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une égalité entre "},{"selector":"@a[tag=!detached,tag=switch.winner]","color":"yellow"},{"text":" avec un total de "},{"score":{"name":"#max","objective":"switch.data"},"color":"yellow"},{"text":" kills !"}]

