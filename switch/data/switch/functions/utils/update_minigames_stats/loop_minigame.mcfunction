
# Update the minigame
$data modify storage switch:main input set value {id:"$(id)"}
function switch:utils/update_minigames_stats/update_minigame

# Go next minigame
data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run function switch:utils/update_minigames_stats/loop_minigame with storage switch:main copy[0]

