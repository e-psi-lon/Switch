
## This file is auto-generated by the script in the same folder, do not edit this file
execute if predicate switch:chance/0.5 run scoreboard players add @s switch.music.progress 1
data modify storage switch:temp input set value {tick:0,name:"stereo_madness"}
scoreboard players operation #temp switch.data = @s switch.music.progress
scoreboard players remove #temp switch.data 40
execute store result storage switch:temp input.tick int 1 run scoreboard players get #temp switch.data
function switch:music/tick_macro with storage switch:temp input

# Stop if the music is over
execute if score #temp switch.data >= #stereo_madness switch.music.progress run scoreboard players set @s switch.music.current -1
execute if score #temp switch.data >= #stereo_madness switch.music.progress run scoreboard players set @s switch.music.progress 0
