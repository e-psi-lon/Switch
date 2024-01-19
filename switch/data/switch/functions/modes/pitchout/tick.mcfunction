
scoreboard players add #pitchout_ticks switch.data 1

execute as @e[type=item,tag=!switch.checked] run function switch:modes/pitchout/no_drop

execute as @a[scores={switch.alive=1..,switch.temp.cooldown=1..},predicate=switch:in_water] if data storage switch:main {map:"pitchout_1"} run function switch:modes/pitchout/map_1/teleport_players
execute as @a[scores={switch.alive=1..,switch.temp.cooldown=1..},predicate=switch:in_water] if data storage switch:main {map:"pitchout_halloween"} run function switch:modes/pitchout/map_halloween/teleport_players
execute as @a[scores={switch.alive=1..},predicate=switch:in_water,sort=random] run function switch:modes/pitchout/death
execute at @a[scores={switch.alive=4}] run particle dust 0 0 .75 1 ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[scores={switch.alive=3},name="Stoupy51"] run particle dust 0 0 .75 1 ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[scores={switch.alive=3},name=!"Stoupy51"] run particle dust 0 .75 0 1 ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[scores={switch.alive=2}] run particle dust .75 .75 0 1 ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[scores={switch.alive=1}] run particle dust .75 0 0 1 ~ ~2.4 ~ .1 .1 .1 0 1

scoreboard players remove @a[scores={switch.temp.cooldown=1..}] switch.temp.cooldown 1
item replace entity @a[scores={switch.temp.cooldown=0}] armor.chest with air

scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[scores={switch.alive=1..}]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/pitchout/process_end
execute if score #pitchout_seconds switch.data matches 600.. run function switch:modes/pitchout/process_end

