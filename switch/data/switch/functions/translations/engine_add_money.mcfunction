
# French
execute if score #random switch.data matches 0 run tellraw @s[scores={switch.lang=0}] [{"nbt":"ParalyaSapphires","storage":"switch:main","interpret":true},{"text":" +"},{"score":{"name":"#add","objective":"switch.money"}},{"text":" Saphirs"},{"text":" vous apportant à un total de ","color":"dark_blue"},{"score":{"name":"@s","objective":"switch.money"}},{"text":" Saphirs"}]
execute if score #random switch.data matches 1 run tellraw @s[scores={switch.lang=0}] [{"nbt":"ParalyaSapphires","storage":"switch:main","interpret":true},{"text":" +"},{"score":{"name":"#add","objective":"switch.money"}},{"text":" Saphirs"},{"text":" , vous avez donc maintenant un total de ","color":"dark_blue"},{"score":{"name":"@s","objective":"switch.money"}},{"text":" Saphirs"}]
execute if score #random switch.data matches 2 run tellraw @s[scores={switch.lang=0}] [{"nbt":"ParalyaSapphires","storage":"switch:main","interpret":true},{"text":" +"},{"score":{"name":"#add","objective":"switch.money"}},{"text":" Saphirs"},{"text":" car vous êtes le meilleur, votre moula actuelle est donc de ","color":"dark_blue"},{"score":{"name":"@s","objective":"switch.money"}},{"text":" Saphirs"}]
execute if score #random switch.data matches 3 run tellraw @s[scores={switch.lang=0}] [{"nbt":"ParalyaSapphires","storage":"switch:main","interpret":true},{"text":" Vous êtes apporté à un total de ","color":"dark_blue"},{"score":{"name":"@s","objective":"switch.money"}},{"text":" Saphirs"},{"text":" (","color":"dark_blue"},{"text":"+"},{"score":{"name":"#add","objective":"switch.money"}},{"text":" Saphirs"},{"text":")","color":"dark_blue"}]
execute if score #random switch.data matches 4 run tellraw @s[scores={switch.lang=0}] [{"nbt":"ParalyaSapphires","storage":"switch:main","interpret":true},{"text":" Vous avez maintenant un total de ","color":"dark_blue"},{"score":{"name":"@s","objective":"switch.money"}},{"text":" Saphirs"},{"text":" (","color":"dark_blue"},{"text":"+"},{"score":{"name":"#add","objective":"switch.money"}},{"text":" Saphirs"},{"text":")","color":"dark_blue"}]
execute if score #random switch.data matches 5 run tellraw @s[scores={switch.lang=0}] [{"nbt":"ParalyaSapphires","storage":"switch:main","interpret":true},{"text":" Car vous êtes le meilleur, votre moula actuelle est de ","color":"dark_blue"},{"score":{"name":"@s","objective":"switch.money"}},{"text":" Saphirs"},{"text":" (","color":"dark_blue"},{"text":"+"},{"score":{"name":"#add","objective":"switch.money"}},{"text":" Saphirs"},{"text":")","color":"dark_blue"}]

