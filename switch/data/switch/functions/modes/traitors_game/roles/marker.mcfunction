
scoreboard players operation @s switch.temp.id = #next_player_id switch.data
data modify entity @s data.Name set from block 0 0 0 Items[0].tag.SkullOwner.Name
data modify entity @s Tags set from entity @p[tag=switch.temp] Tags
scoreboard players operation @s switch.temp.role = @p[tag=switch.temp] switch.temp.role
tag @s add switch.temp.player

