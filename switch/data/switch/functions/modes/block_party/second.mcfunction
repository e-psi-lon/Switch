
# Classic timer
scoreboard players add #block_party_seconds switch.data 1

# Moved advancement
execute as @a[tag=!detached,gamemode=adventure] run function switch:modes/block_party/check_movement
scoreboard players add @a[tag=!detached,gamemode=adventure] switch.temp.time_since_movement 1
advancement grant @a[tag=!detached,gamemode=adventure,scores={switch.temp.time_since_movement=30..}] only switch:visible/82

