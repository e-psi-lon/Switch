
## Storage Format: all.player = {total_played:[{name:"Stoupy51",value:0}],total_wins:[],total_kills:[],total_deaths:[],total_money:[]}

# Copy the played and wins arrays to the temp arrays
data modify storage switch:temp copy_played set from storage switch:temp played
data modify storage switch:temp copy_wins set from storage switch:temp wins
data modify storage switch:temp copy_kills set from storage switch:temp kills
data modify storage switch:temp copy_deaths set from storage switch:temp deaths
data modify storage switch:temp copy_money set from storage switch:temp money

# Find the index of the highest value in the played and wins arrays
scoreboard players set #current_index switch.data 0
scoreboard players set #max_value_played switch.data 0
scoreboard players set #max_value_wins switch.data 0
scoreboard players set #max_value_kills switch.data 0
scoreboard players set #max_value_deaths switch.data 0
scoreboard players set #max_value_money switch.data 0
scoreboard players set #max_index_played switch.data 0
scoreboard players set #max_index_wins switch.data 0
scoreboard players set #max_index_kills switch.data 0
scoreboard players set #max_index_deaths switch.data 0
scoreboard players set #max_index_money switch.data 0
execute if data storage switch:temp copy_played[0] run function switch:stats/get_max_from_player_arrays

# Add the highest value to the new arrays
data modify storage switch:temp indexes set value {played:0,wins:0,kills:0,deaths:0,money:0}
execute store result storage switch:temp indexes.played int 1 run scoreboard players get #max_index_played switch.data
execute store result storage switch:temp indexes.wins int 1 run scoreboard players get #max_index_wins switch.data
execute store result storage switch:temp indexes.kills int 1 run scoreboard players get #max_index_kills switch.data
execute store result storage switch:temp indexes.deaths int 1 run scoreboard players get #max_index_deaths switch.data
execute store result storage switch:temp indexes.money int 1 run scoreboard players get #max_index_money switch.data
function switch:stats/macro_add_to_new_player_arrays with storage switch:temp indexes

# Loop through the rest of the values
execute if data storage switch:temp played[0] run function switch:stats/loop_player_stats

