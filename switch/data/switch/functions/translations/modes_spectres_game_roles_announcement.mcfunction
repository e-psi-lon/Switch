
# French
tellraw @a[scores={switch.lang=0},tag=!detached,team=switch.temp.visible] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes "},{"text":"visible","color":"green"},{"text":" ! Vous devez trouver tous les spectres et leur faire cracher leur entrailles pour gagner la partie !"}]
tellraw @a[scores={switch.lang=0},tag=!detached,team=switch.temp.spectre] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes un "},{"text":"spectre","color":"yellow"},{"text":" ! Votre objectif est d'exterminer tous les visibles afin de contrôler le serveur ! Pour cela, vous êtes invisible permanent !"}]
tellraw @a[scores={switch.lang=0,switch.temp.spectror=1}] ["",{"text":"-------------------------","color":"gray"},{"text":"\n"},{"text":"\u25ba","color":"gray"},{"text":" SpectrorsGame ","bold":true,"color":"red"},{"text":":","bold":true,"color":"gray"},{"text":" Tu es un Spectror !\nTu dois gagner seul. Pour ce faire, il faudra que tu veilles à trahir au bon moment tes compères spectres.","color":"#C991F0"},{"text":"\n"},{"text":"-------------------------","color":"gray"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached,team=switch.temp.visible] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":"You are"},{"text":"visible","color":"green"},{"text":"! You must find all the spectres and make them spit out their entrails to win the game!"}]
tellraw @a[scores={switch.lang=1},tag=!detached,team=switch.temp.spectre] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":"You're a"},{"text":"spectre","color":"yellow"},{"text":"! Your goal is to exterminate all the visible ones in order to control the server! To achieve this, you must be permanently invisible!"}]
tellraw @a[scores={switch.lang=1,switch.temp.spectror=1}] ["",{"text":"-------------------------","color":"gray"},{"text":"\n"},{"text":"\u25ba","color":"gray"},{"text":"SpectrorsGame","bold":true,"color":"red"},{"text":":","bold":true,"color":"gray"},{"text":"You're a Spectror!\nYou must win alone. To do so, you'll need to betray your fellow spectres at the right moment.","color":"#C991F0"},{"text":"\n"},{"text":"-------------------------","color":"gray"}]

