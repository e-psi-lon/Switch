
## Python script that generates the "_load.mcfunction" and "update_percentages.mcfunction" files
## It also update names and description of advancements in data/switch/advancements/visible/*.json files
## Additionally, it will create hidden advancements for each advancement in data/switch/advancements/visible/*.json files

# Stop if the execution is not in the same folder as the script
import os
if os.getcwd() != os.path.dirname(os.path.realpath(__file__)):
	print("Please execute this script in the same folder as the script")
	exit()

## Setups
LOAD_FILE = "_load.mcfunction"
UPDATE_PERCENTAGES_FILE = "update_percentages.mcfunction"
VISIBLE_ADV_FOLDER = "../../advancements/visible/"
colors = {
	"jump":"blue",
	"easy":"green",
	"medium":"yellow",
	"hard":"red"
}
google_sheet = """
jump_green	Stoupy	jump	The Green Jump	Finir le jump vert pour la première fois
jump_white	Stoupy	jump	The White Jump	Finir le jump blanc pour la première fois
jump_blue	Stoupy	jump	The Blue Jump	Finir le jump bleu pour la première fois
jump_yellow	ArtiGrrr	jump	The Yellow Jump	Finir le jump jaune pour la première fois
jump_red	Stoupy	jump	The Red Jump	Finir le jump rouge pour la première fois
jump_brown	OfChara	jump	The Brown Jump	Finir le jump marron pour la première fois
jump_purple	AirDox	jump	The Purple Jump	Finir le jump violet pour la première fois
jump_dripstone	AirDox	jump	The Dripstone Jump	Finir le jump dripstone pour la première fois
jump_bricks	Thitanas	jump	The Bricks Jump	Finir le jump des briques pour la première fois
jump_pink	OfChara	jump	The Pink Jump	Finir le jump rose pour la première fois
jump_black	Stoupy	jump	The Black Jump	Finir le jump noir pour la première fois
1	Stoupy	easy	Bénévolat	Aider à la construction d'une map ou la création d'un mini-jeu
2	Stoupy	easy	Fidèle	Jouez un total de 100 parties sur le Switch
3	Stoupy	easy	La moula	Ayez au moins 400 Saphirs dans votre banque
4	Lawtank	easy	First Victor	Gagnez votre première partie dans n'importe quel mini-jeu
5	GoldVision	hard	Gros Diabète	Gagner une partie de Traitors Game en étant Gros Traitre
6	Fhara	medium	Gay Jumper	Terminer le parcours du Gay Shooter
7	TreekoZ	hard	Pitch Slayer	Remporter un Pitchout avec 3 vies
8	Poppiz	easy	Fast Food	Atteignez au moins 50 points en Feed Fast
9	TreekoZ	hard	Bagarreur	Tuez deux personnes dans un délai de 10 secondes en Castagne
10	Stoupy	medium	Contre Courant	Réussissez à faire voter au moins 8 personnes un jeu non populaire (Feed Fast, Panic Chase, etc.)
11	Lawtank	easy	Berger	Gagnez une partie de SheepWars sans utiliser aucun mouton (y compris le mouton d'abordage)
12	OfChara	hard	Sans Faute	Gagnez une partie de Spectres Game sans perdre aucun membre de votre équipe.
13	Axaltau	easy	Pacifiste	Survivez 100 secondes en PitchOut sans mettre aucun coup
14	Lawtank	hard	The Last King	Soyez le dernier survivant en Protect The King
15	Lawtank	medium	Tomahawk	Tuez un joueur en lançant votre couteau en Murder Mystery
16	Lawtank	hard	Héro Humanitaire	Tuez au moins 8 zombies en une partie d'Infected
17	Lawtank	hard	Vive la chair	Infectez 5 survivants dans une partie d'Infected
18	OfChara	hard	Roi fantôme	Tuez 3 personnes en tant que spectre en Spectres Games
19	Manu	medium	Wattouat	Mourir à cause d'un moutron foudroyant en SheepWars
20	OfChara	medium	Fusée	Dépassez 5 joueurs dans le dernier tour en Kart Racer
21	OfChara	medium	Plongeur Expert	Complétez 3 dés à coudre dans les modes de jeu du style
22	OfChara	hard	Homophobe	Mettre au moins 42 flèches en Gay Shooter
23	Lawtank	medium	Pélican	Soyez celui ayant le plus de kills en Cigogne (égalité autorisée)
24	Fhara	hard	Feeling The Music	Survivez 20 manches en Block Party
25	OfChara	hard	Ocelot	Ne pas descendre en dessous de la moitié de vie en Creeper Apocalypse
26	Marcus	medium	Suicidaire	Soyez la cible de 8 wardens en Warden Escape
27	Megamat	hard	Sam Flynn	Éliminer 3 joueurs avec sa traînée en Moutron
28	Megamat	medium	D&Cube	Faites au minimum 50 points en Build Battle
29	Marcus	medium	Embrouilleur	Tapez chaque joueur de la partie en Castagne
30	Lawtank	hard	Légende	Gagnez 5 mini-jeux d'affilée
31	Xiaojuun	medium	Interville	Mourir en block party à cause d'une vache folle
32	Enlaniel	medium	Reste dans ta tombe	Tuez deux fois le ninja dans une partie de Traitors Game
33	Megamat	medium	Rush Thief	Sécurisez le drapeau ennemi en Capture/Rush The Flag
34	Megamat	easy	Monopoly	Ramasser 20 lingots d'or en une partie en Murder Mystery
35	Xiaojuun	easy	Daltonien	Meurs à la première manche en Block Party
36	Megamat	easy	Contre son camp	Marcher sur sa propre mine pendant une partie de Landing Mine
37	Megamat	medium	Oppenheimer	Survivre plus d'une minute en Bombardement
38	Xiaojuun	medium	Regarde ma queue	Avoir une trainée de 15 secondes en moutron
39	ArtiGrrr	hard	Précision Artistique	Finir une partie de Snowball Painter avec exactement 51 points
40	Marcus	medium	Harcelé	Mourir 3 fois par la même personne en Pitchout
41	ArtiGrrr	hard	Vengeur	Tuez son assassin en temps que Ninja dans une partie de Traitors Game
42	ArtiGrrr	hard	Xenophobe	Eliminer tous les joueurs d'une même couleur en Layers 4 Teams
43	ArtiGrrr	medium	Avide	Détruisez 5 blocs d'obsidienne en une partie de Rush The Point
44	Xiaojuun	medium	C'est tout naturel	Poussez un joueur vers un dé à coudre en Simultaneous Jump
45	Lawtank	easy	Humm Charal !	Tuez 10 moutons en une partie de SheepWars
46	Stoupy	easy	Automutilation	Se tuer soi-même avec un mouton en SheepWars
47	luigimario12	easy	Il a rien compris lui	Courir 500 blocs en une partie de Pitchout
48	luigimario12	hard	Donald Trump	Faire au maximum 5 coups en une partie de MiniGolf
49	luigimario12	medium	Damidot	Recevoir une note Legendary en Build Battle
50	Stoupy et Lawtank	hard	Zom 100	Terminer le secret de la map Old Japan Apocalypse en Infected
51	Stoupy	hard	Pharaon	Terminer le secret de la map Ancienne Egypte en Infected
52	Stoupy et Lawtank	hard	The Volcano Core	Terminer le secret de la map Lost Graveyard Remastered en Infected
53	Stoupy	hard	Storm Area	Terminer le secret de la map Area51 en Infected
54	Stoupy	hard	Secret Slayer	Terminer les secrets de toutes les maps dans le mode de jeu Infected
55	Thitanas	medium	Stomp	Terminer une partie de Rush The Point en atteignant 5000 points
56	Stoupy	easy	Jugeote	Noter les étoiles de 20 mini-jeux différents
57	Goldvision	hard	Survivor	Gagner une partie d'Infecté sans prendre aucun coup en tant qu'humain
58	Stoupy	medium	Harceleur	Eliminer 3 fois la même personne en Pitchout
59	Stoupy	medium	La plèbe a travaillé pour moi	Remporter une partie de PitchCreep sans tirer une seule flèche
60	Redemoles	hard	Multigamer	Gagner une partie de chaque mini-jeu au moins une fois
61	luigimario12	easy	Héro	Tuez le meurtrier en Murder Mystery en tant qu'innocent
62	OfChara	hard	Chaud les fesses	Remporter une partie de Panic Chase en ayant au maximum 3 coeurs
63	OfChara	easy	Raciste	Tirer sur 3 moutons noirs en une partie de Shoot Da'Sheep
64	Goldvision	easy	Rater son moment de gloire	Mourir sur un cactus, d'une tnt ou de suffocation dans une partie de Murder Mystery
65	Shazin	hard	Régicide	Gagner une partie de Protect The King sans perdre aucun membre de votre royaume
66	OfChara	medium	Révolution	Tuer un Roi dans une partie de Beat The Kings
67	luigimario12	medium	Tonerre de Zeus	Eliminer 10 joueurs dans une partie de Thunder Spear
68	OfChara	hard	Collatéral	Tuer deux joueurs en Quake avec un seul tir
69	OfChara	easy	Porc-épic	Se prendre 10 flèches en une partie de Gay Shooter
70	Oraclette	easy	Electro-choc	Mourir du rayon d'un Warden en Warden Escape
71	Shazin	medium	Merci Gertrude	A partir de la 10ème manche en Block Party, en survivre une grâce à Gertrude
72	luigimario12	easy	C'est donc ça, de se vider...	Lancer 42 boules de neige en une partie de Warden Escape
73	OfChara	hard	Parade Parfaite	Réussir à parer une flèche en lançant son couteau en Murder Mystery
74	OfChara	hard	I am Legend	Gagner une partie d'Infecté en étant le dernier humain (si il y a plus de 10 joueurs)
75	OfChara	medium	Tout ça pour ça...	Survivre 42 secondes puis mourir en tombant dans l'eau en Bombardement
76	OfChara	hard	Injustice	Finir le jump en Gay Shooter mais mourir de la main d'un Shooter
77	Stoupy	easy	Pour l'équipe !	Tirer sur la base de bonus dans une partie de Laser Game
78	TreekoZ	easy	Banger sucré au sucre	Préparez un gâteau en une partie de Cooking Festival
79	Thakeax	easy	Le boulet	Mourir du premier coup de canon en Bombardement
80	ArtiGrrr	medium	Ooopsy	Se faire tuer par un autre meutrier en tant que meurtrier en Murder Mystery
81	ArtiGrrr	easy	Reviens par ici	Replacer le drapeau de son équipe en Capture/Rush The Flag
82	Stoupy	hard	Bien placé	Survivre 30 secondes sans bouger en Block Party
""".split("\n")


#############################################
## "_load.mcfunction"
# Prepare file_content
file_content = """
## This file is autogenerated by the "automatic_advancements.py" script. Do not edit it but the script instead.

# Setup storages
execute unless data storage switch:advancements all run data modify storage switch:advancements all set value []
"""

# For each advancement, generate the append line
for line in google_sheet:
	line = line.split("\t")
	if len(line) < 3:
		continue
	id = line[0]
	try:
		id = int(id)
	except ValueError:
		id = f'"{id}"'
	file_content += f"""execute unless data storage switch:advancements all[{{id:{id}}}] run data modify storage switch:advancements all append value {{id:{id},percent:{{int:0,digits:0}},players:[],total:0}}\n"""

# Next
file_content += """

# Update storages
"""

# For each advancement, generate the merge line
for line in google_sheet:
	line = line.split("\t")
	if len(line) < 3:
		continue
	id = line[0]
	author = line[1]
	color = colors[line[2]]
	name = line[3]
	description = line[4]
	try:
		id = int(id)
	except ValueError:
		id = f'"{id}"'
	file_content += f"""data modify storage switch:advancements all[{{id:{id}}}] merge value {{color:"{color}",auteur:"{author}",name:"{name}",description:"{description}"}}\n"""

with open(LOAD_FILE, "w", encoding = "utf-8") as f:
	f.write(file_content + "\n")
	pass


#############################################
## "update_percentages.mcfunction"
# Prepare file
file_content = """
## This file is autogenerated by the "automatic_advancements.py" script. Do not edit it but the script instead.
# Update percentage
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot switch:get_username
data modify storage switch:main input set value {id:"",username:""}
data modify storage switch:main input.username set from block 0 0 0 Items[0].tag.SkullOwner.Name

## For each advancement, check if the player has the advancement
scoreboard players set @s switch.advancements 0
___LINES___
setblock 0 0 0 air
"""
# For each advancement, generate the check line #execute if entity @s[advancements={switch:visible/jump_green=true}] run function switch:advancements/_pre_macro {id:"jump_green"}
to_lines = ""
for line in google_sheet:
	line = line.split("\t")
	if len(line) < 3:
		continue
	id = line[0]
	to_lines += f"""execute if entity @s[advancements={{switch:visible/{id}=true}}] run function switch:advancements/_pre_macro {{id:"{id}"}}\n"""

file_content = file_content.replace("___LINES___", to_lines)

# Write file
with open(UPDATE_PERCENTAGES_FILE, "w", encoding = "utf-8") as f:
	f.write(file_content + "\n")
	pass


#############################################
## Generate a hidden advancement for each advancement
# Get all .json files path in the previous directory
paths = []
for root, dirs, files in os.walk(VISIBLE_ADV_FOLDER):
	for file in files:
		if file.endswith(".json") and "categories" not in root:
			paths.append(file.replace(".json",""))

# For each path, create a hidden advancement
for p in paths:
	with open(VISIBLE_ADV_FOLDER + f"categories/ends/{p}.json", "w", encoding = "utf-8") as f:
		f.write("""{
	"criteria": {"requirement": {"trigger": "minecraft:tick"}},
	"requirements": [["requirement"]],
	"parent": "switch:visible/__ADV_ID__"
}
""".replace("__ADV_ID__", p))
		pass
	pass


#############################################
"""
{
	"display": {
		"icon": {"item": "minecraft:white_concrete"},
		"title": {"text": "The White Jump", "color": "yellow"},
		"description": {"text": "Finir le jump blanc pour la première fois", "color": "aqua"},
		"frame": "task",
		"show_toast": true,
		"announce_to_chat": true,
		"hidden": false
	},
	"criteria": {"requirement": {"trigger": "minecraft:impossible"}},
	"requirements": [["requirement"]],
	"rewards": {"function": "switch:advancements/jumps/white"},
	"parent": "switch:visible/jump_green"
}
"""
## Update name, description, and difficulty of each advancement
for line in google_sheet:
	line = line.split("\t")
	if len(line) < 3:
		continue
	id = line[0]
	difficulty = line[2]
	name = line[3]
	description = line[4]
	
	# Get file_content
	with open(VISIBLE_ADV_FOLDER + f"{id}.json", "r", encoding = "utf-8") as f:
		file_content = f.read().split("\n")
		pass

	# For each line,
	for i, line in enumerate(file_content):
		if "title" in line:
			file_content[i] = '\t\t"title": {"text": "' + name + '", "color": "yellow"},'
		elif "description" in line:
			file_content[i] = '\t\t"description": {"text": "' + description + '", "color": "aqua"},'
		elif "rewards" in line:
			if difficulty == "jump":
				file_content[i] = '\t"rewards": {"function": "switch:advancements/jumps/' + id.replace("jump_", "") + '"},'
			else:
				file_content[i] = '\t"rewards": {"function": "switch:advancements/' + difficulty + '"},'
		pass

	# Write file
	with open(VISIBLE_ADV_FOLDER + f"{id}.json", "w", encoding = "utf-8") as f:
		f.write("\n".join(file_content))
	pass

