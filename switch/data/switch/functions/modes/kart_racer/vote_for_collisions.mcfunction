
scoreboard players set @s switch.temp.vote_collisions 1

scoreboard players set #votes switch.data 0
scoreboard players set #votes_max switch.data 0
execute store result score #votes switch.data if entity @a[scores={switch.temp.vote_collisions=1}]
execute store result score #votes_max switch.data if entity @a[gamemode=!spectator]
scoreboard players operation #votes_max switch.data /= #2 switch.data
scoreboard players add #votes_max switch.data 1

tellraw @a [{"selector":"@s","color":"red"},{"text":" a voté pour activer les collisions joueurs ["},{"score":{"name":"#votes","objective":"switch.data"},"color":"aqua"},{"text":"/"},{"score":{"name":"#votes_max","objective":"switch.data"},"color":"aqua"},{"text":"]"}]

execute if score #votes switch.data >= #votes_max switch.data run scoreboard players set @a switch.temp.vote_collisions 1
execute if score #votes switch.data >= #votes_max switch.data run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Collisions entre joueurs activées !\n"}]
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.kart collisionRule always


