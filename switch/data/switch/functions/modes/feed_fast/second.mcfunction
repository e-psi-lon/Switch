
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #feed_fast_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1
effect give @a[gamemode=!spectator] hunger infinite 255 true

# Summon food
execute if score #feed_fast_seconds switch.data matches 0.. run function switch:modes/feed_fast/xp_bar
execute if score #feed_fast_seconds switch.data matches 0 as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon marker 0 0 0
execute if score #feed_fast_seconds switch.data matches 0 at @e[limit=8] at @a[gamemode=!spectator] run function switch:modes/feed_fast/summon_food
execute if score #feed_fast_seconds switch.data matches 1.. at @a[gamemode=!spectator] run function switch:modes/feed_fast/summon_food
execute if score #feed_fast_seconds switch.data matches 0.. as @e[type=item,nbt={Item:{tag:{switch:{}}}}] run data modify entity @s Glowing set value 1b

execute if score #feed_fast_seconds switch.data matches ..-1 run kill @e[type=item]
execute if score #feed_fast_seconds switch.data matches ..-1 run scoreboard players set @a[gamemode=!spectator] switch.temp.previous_food 20
execute if score #feed_fast_seconds switch.data matches ..-1 run scoreboard players reset @a[gamemode=!spectator] switch.temp.points

