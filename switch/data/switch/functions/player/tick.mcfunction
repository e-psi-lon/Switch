
function switch:player/trigger/

execute if entity @s[tag=!switch.detached] unless score @s switch.reconnect = #score switch.reconnect run function switch:player/joined
scoreboard players operation @s switch.last_total_games = total_games switch.last_total_games

execute unless score @s switch.id matches 1.. run function switch:player/set_id

