
execute as @a[tag=!detached] at @s run playsound entity.wither.spawn ambient @s ~ ~ ~ 0.25
tellraw @a[tag=!detached,team=switch.temp.visible] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes "},{"text":"visible","color":"green"},{"text":" ! Vous devez trouver tous les spectres et leur faire cracher leur entrailles pour gagner la partie !"}]
tellraw @a[tag=!detached,team=switch.temp.spectre] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes un "},{"text":"spectre","color":"yellow"},{"text":" ! Votre objectif est d'exterminer tous les visibles afin de contrôler le serveur ! Pour cela, vous êtes invisible permanent !"}]

tellraw @a[scores={switch.temp.spectror=1}] ["",{"text":"-------------------------","color":"gray"},{"text":"\n"},{"text":"\u25ba","color":"gray"},{"text":" SpectrorsGame ","bold":true,"color":"red"},{"text":":","bold":true,"color":"gray"},{"text":" Tu es un Spectror !\nTu dois gagner seul. Pour ce faire, il faudra que tu veilles à trahir au bon moment tes compères spectres.","color":"#C991F0"},{"text":"\n"},{"text":"-------------------------","color":"gray"}]

## mettre le score switch.alive des spectror à 3
scoreboard players set @a[scores={switch.temp.spectror=1}] switch.alive 3
