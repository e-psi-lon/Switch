
# French
tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes l'"},{"text":"inspecteur","color":"green"},{"text":" ! Vous sacrifiez 2 coeurs pour obtenir une information sur un traitre dans la partie au bout d'1m30 après l'annonce des rôles (et 3m00) ! Sauvez les innocents et tuez les traitres, tel est votre mission !"}]
tellraw @a[scores={switch.lang=0,switch.temp.role=2}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes "},{"text":"innocent","color":"green"},{"text":" ! Vous devez trouver tous les traitres et leur faire cracher leur entrailles pour gagner la partie !"}]
tellraw @a[scores={switch.lang=0,switch.temp.role=3}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes le "},{"text":"ninja","color":"green"},{"text":" ! La discrétion est votre atout (ou pas...), vous bénéficiez d'un effet permanent de 15% de vitesse. Lors de votre mort, vous aurez une seconde vie où vous serez limité à 5 coeurs maximum. Servez donc votre peuple et défendez-le des traitres !"}]
execute if score #next_player_id switch.data matches ..4 run tellraw @a[scores={switch.lang=0,switch.temp.role=5}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes un "},{"text":"traitre","color":"red"},{"text":" ! Votre objectif est d'exterminer tous les innocents afin de contrôler le serveur ! Pour cela, il vous est donné une potion de rage dans votre inventaire, seul les traitre la possède donc faites attention !"}]
execute if score #next_player_id switch.data matches 5.. run tellraw @a[scores={switch.lang=0,switch.temp.role=5}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes un "},{"text":"traitre","color":"red"},{"text":" ! Votre objectif est d'exterminer tous les innocents afin de contrôler le serveur ! Pour cela, il vous est donné une potion de rage dans votre inventaire, seul les traitre la possède donc faites attention !\nVoici la liste de vos alliés : "},{"selector":"@a[scores={switch.temp.role=5..6},sort=random]"}]
tellraw @a[scores={switch.lang=0,switch.temp.role=6}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes le "},{"text":"gros traitre","color":"red"},{"text":" ! Après avoir mangé un peu trop de BigMac, vous décidez de contrôler le monde, votre objectif est donc de tuer TOUT le monde afin de contrôler la chaîne de production de BigMac ! Pour cela, il vous est donné une potion de rage dans votre inventaire ainsi que 5 coeurs supplémentaires, seul les traitre la possède donc faites attention !\nVoici la liste des traitres que vous devez berner : "},{"selector":"@a[scores={switch.temp.role=5},sort=random]"}]
tellraw @a[scores={switch.lang=0,switch.temp.role=2..}] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" L'inspecteur est "},{"selector":"@a[scores={switch.temp.role=1}]","color":"green"},{"text":", donc ne l'accusez pas si vous êtes innocent !"}]
tellraw @a[scores={switch.lang=0,switch.temp.role=7}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes "},{"text":"Floupy","color":"yellow"},{"text":" ! Vous avez le pouvoir de voler le rôle du premier joueur que vous tuez. Si vous tuez le Ninja, vous l'empêchez d'utiliser sa deuxième vie et vous lui voler son nombre de vie actuel. Vous devez gagner dans le camp dans lequel vous passez."}]

# English
tellraw @a[scores={switch.lang=1,switch.temp.role=1}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":"You're the"},{"text":"inspector","color":"green"},{"text":"! You sacrifice 2 hearts to get information about a traitor in the game after 1m30 after the roles are announced (and 3m00)! Save the innocents and kill the traitors - that's your mission!"}]
tellraw @a[scores={switch.lang=1,switch.temp.role=2}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":"You are"},{"text":"innocent","color":"green"},{"text":"! You must find all the traitors and make them spit out their entrails to win the game!"}]
tellraw @a[scores={switch.lang=1,switch.temp.role=3}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":"You're the"},{"text":"ninja","color":"green"},{"text":"! Stealth is your trump card (or not...), and you benefit from a permanent 15% speed effect. When you die, you'll have a second life where you'll be limited to a maximum of 5 hearts. So serve your people and defend them from traitors!"}]
execute if score #next_player_id switch.data matches ..4 run tellraw @a[scores={switch.lang=1,switch.temp.role=5}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":"You're a "},{"text":"traitor","color":"red"},{"text":"! Your goal is to exterminate all innocents in order to control the server! To do this, you've been given a rage potion in your inventory, but only traitors have it, so be careful!"}]
execute if score #next_player_id switch.data matches 5.. run tellraw @a[scores={switch.lang=1,switch.temp.role=5}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":"You're a "},{"text":"traitor","color":"red"},{"text":"! Your goal is to exterminate all innocents in order to control the server! To do this, you're given a rage potion in your inventory, but only traitors have it, so be careful! Here's the list of your allies:"},{"selector":"@a[scores={switch.temp.role=5..6},sort=random]"}]
tellraw @a[scores={switch.lang=1,switch.temp.role=6}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":"You're the"},{"text":"big traitor","color":"red"},{"text":"! After eating a few too many BigMacs, you've decided to take control of the world, so your goal is to kill EVERYONE in order to control the BigMac production line! To do this, you've been given a rage potion in your inventory and 5 extra hearts, but only the traitors have it, so be careful! Here's the list of traitors you have to fool: "},{"selector":"@a[scores={switch.temp.role=5},sort=random]"}]
tellraw @a[scores={switch.lang=1,switch.temp.role=2..}] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":"The inspector is"},{"selector":"@a[scores={switch.temp.role=1}]","color":"green"},{"text":", so don't blame him if you're innocent!"}]
tellraw @a[scores={switch.lang=1,switch.temp.role=7}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":"You are"},{"text":"Floupy","color":"yellow"},{"text":"! You have the power to steal the role of the first player you kill. If you kill the ninja, you prevent him from using his second life and rob him of his current life count. You must win on the side you switch to."}]

