
# Money to add
scoreboard players set #add switch.money 10
execute if score #add_override switch.money matches 1.. run scoreboard players operation #add switch.money = #add_override switch.money
execute if score #add_override switch.money matches 1.. run scoreboard players reset #add_override switch.money

# Money bonus multiplier
scoreboard players operation #bonus switch.money = #add switch.money
scoreboard players operation #bonus switch.money *= @s switch.money_bonus
scoreboard players operation #bonus switch.money /= #100 switch.data
scoreboard players operation #add switch.money += #bonus switch.money

# Apply money
scoreboard players operation @s switch.money += #add switch.money

# Messages
execute store result score #random switch.data run random value 0..5
function switch:translations/engine_add_money

playsound entity.player.levelup ambient @s ^ ^ ^ .2

execute if score @s switch.money matches 400.. run advancement grant @s only switch:visible/3

