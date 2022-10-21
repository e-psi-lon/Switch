
##Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team join switch.no_pvp @a
tag @a add switch.playing

kill @e[type=item]
kill @e[type=arrow]

effect give @a saturation 99999 255 true
effect give @a regeneration 5 255 true
difficulty normal
time set 18000
weather clear

##Téléportation des joueurs + give d'items
data modify storage switch:main maps_to_choose set value ["kart_racer_1"]
function switch:engine/maps/load
execute as @a at @s run function switch:modes/kart_racer/give_items

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Mario Kart, tenez-vous prêt car vous avez un temps de préparation de 10 secondes !"}]

scoreboard players set #kart_racer_seconds switch.data -10
scoreboard players set #kart_racer_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0

##TODO :
#Ajouter un système de préparation
#Système de checkpoint
#Système de respawn
#Système de tours
#Système de victoire

