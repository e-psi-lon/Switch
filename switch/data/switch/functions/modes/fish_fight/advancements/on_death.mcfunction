
data modify storage switch:temp input set value {my_id:0,attacker_id:0}
execute store result storage switch:temp input.my_id int 1 run scoreboard players get @s switch.id
execute on attacker store result storage switch:temp input.attacker_id int 1 run scoreboard players get @s switch.id
function switch:modes/fish_fight/advancements/death_macro with storage switch:temp input

