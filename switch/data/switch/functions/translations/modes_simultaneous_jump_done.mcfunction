
# French
execute if score #points switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" valide son saut et fait "},{"score":{"name":"#points","objective":"switch.data"},"color":"aqua"},{"text":" point !"}]
execute if score #points switch.data matches 2.. run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" valide son saut et fait "},{"score":{"name":"#points","objective":"switch.data"},"color":"aqua"},{"text":" points !"}]

