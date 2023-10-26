
# Show Current theme
title @a[tag=!switch.detached] actionbar [{"text":"Thème : ","color":"aqua"},{"nbt":"current_theme","storage":"switch:main","color":"yellow"}]

# Avoid build changes during rating time
execute at @e[tag=switch.marker_temp,limit=1] run place template switch:temp ~5 ~ ~5

## Rating
# Equipment
execute as @a[tag=!switch.detached] if data entity @s Inventory[7] run function switch:modes/build_battle/rating_time/set_inventory
execute as @a[tag=!switch.detached] unless data entity @s Inventory[6] run function switch:modes/build_battle/rating_time/set_inventory

## Timer
# Decrease remaining time
scoreboard players remove #remaining_time switch.data 1

# XP Bar
function switch:modes/build_battle/xp_bar_rating

# If the timer is equal to 0,
execute if score #remaining_time switch.data matches 0 run function switch:modes/build_battle/rating_time/time_up

