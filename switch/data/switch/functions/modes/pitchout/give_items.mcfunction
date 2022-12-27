
tag @s add switch.temp

scoreboard players set #modulo_rand switch.data 4
function switch:math/get_random/
execute if score #random switch.data matches 0 run loot spawn 0 0 0 loot stardust:i/original_stardust_sword
execute if score #random switch.data matches 1 run loot spawn 0 0 0 loot stardust:i/legendarium_sword
execute if score #random switch.data matches 2 run loot spawn 0 0 0 loot stardust:i/solarium_sword
execute if score #random switch.data matches 3 run loot spawn 0 0 0 loot stardust:i/darkium_sword

scoreboard players set #modulo_rand switch.data 3
function switch:math/get_random/
execute if score #random switch.data matches 0 run loot spawn 0 0 0 loot stardust:i/stardust_bow
execute if score #random switch.data matches 1 run loot spawn 0 0 0 loot stardust:i/awakened_stardust_bow
execute if score #random switch.data matches 2 run loot spawn 0 0 0 loot stardust:i/ultimate_bow

item replace entity @s hotbar.2 with ender_pearl 3
item replace entity @s hotbar.3 with arrow

attribute @s generic.attack_speed base set 1024
xp set @s 0 levels
xp set @s 0 points

execute as @e[type=item,tag=!switch.done,nbt=!{Item:{id:"minecraft:bow"}}] run data remove entity @s Item.tag.stardust
execute as @e[type=item,tag=!switch.done,nbt=!{Item:{id:"minecraft:bow"}}] run data modify entity @s Item.tag.Enchantments set value [{id:"minecraft:knockback",lvl:3}]
execute as @e[type=item,tag=!switch.done,nbt={Item:{id:"minecraft:bow"}}] run data modify entity @s Item.tag.Enchantments set value [{id:"minecraft:infinity",lvl:1s},{id:"minecraft:punch",lvl:2s}]
execute as @e[type=item,tag=!switch.done] run data modify entity @s Item.tag.Unbreakable set value 1b
execute as @e[type=item,tag=!switch.done] run data modify entity @s Owner set from entity @p[tag=switch.temp] UUID
execute as @e[type=item,tag=!switch.done] run data modify entity @s PickupDelay set value 0s
tp @e[type=item,tag=!switch.done] @s
execute as @e[type=item,tag=!switch.done] run tag @s add switch.done

tag @s remove switch.temp

