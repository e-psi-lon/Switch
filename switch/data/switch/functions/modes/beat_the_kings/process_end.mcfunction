
scoreboard players add #process_end switch.data 1
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:modes/beat_the_kings/death/player
execute if score #process_end switch.data matches 100 run function switch:engine/restart

