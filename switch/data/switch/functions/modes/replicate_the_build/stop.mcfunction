
tp @e[type=creeper] 0 -10000 0
kill @e[type=arrow]
kill @e[type=creeper]
kill @e[type=item]
kill @e[type=experience_orb]

tag @a remove switch.alive

gamerule doTileDrops true
scoreboard objectives remove switch.rtb.id dummy

scoreboard objectives remove switch.temp.deathCount

