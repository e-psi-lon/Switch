
# French
tellraw @s[scores={switch.lang=0}] [{"text":"[Boutique Spleef]","color":"yellow"}]
execute if score @s switch.trigger.shop matches 301 if score #success switch.data matches 1.. run tellraw @s[scores={switch.lang=0}] [{"text":"Votre achat pour les blocs de neige a été effectué !","color":"green"}]
execute if score @s switch.trigger.shop matches 301 if score #success switch.data matches 0 run tellraw @s[scores={switch.lang=0}] [{"text":"Vous n'avez pas assez d'argent pour acheter des blocs de neige supplémentaires !","color":"red"}]
execute if score @s switch.trigger.shop matches 302 if score #success switch.data matches 1.. run tellraw @s[scores={switch.lang=0}] [{"text":"Votre achat pour la poudreuse a été effectué !","color":"green"}]
execute if score @s switch.trigger.shop matches 302 if score #success switch.data matches 0 run tellraw @s[scores={switch.lang=0}] [{"text":"Vous n'avez pas assez d'argent pour acheter de la poudreuse supplémentaire !","color":"red"}]
execute if score @s switch.spleef.snow_block matches 0 run tellraw @s[scores={switch.lang=0}] [{"text":"Blocs de neige","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 301"},"hoverEvent":{"action":"show_text","contents":[{"text":"4 -> 6 blocs de neige\n","color":"green"},{"text":"Acheter pour 50 Saphirs","color":"yellow"}]}}]
execute if score @s switch.spleef.snow_block matches 1 run tellraw @s[scores={switch.lang=0}] [{"text":"Blocs de neige","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮","color":"yellow"},{"text":"✮✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 301"},"hoverEvent":{"action":"show_text","contents":[{"text":"6 -> 8 blocs de neige\n","color":"green"},{"text":"Acheter pour 100 Saphirs","color":"yellow"}]}}]
execute if score @s switch.spleef.snow_block matches 2 run tellraw @s[scores={switch.lang=0}] [{"text":"Blocs de neige","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮","color":"yellow"},{"text":"✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 301"},"hoverEvent":{"action":"show_text","contents":[{"text":"8 -> 10 blocs de neige\n","color":"green"},{"text":"Acheter pour 150 Saphirs","color":"yellow"}]}}]
execute if score @s switch.spleef.snow_block matches 3 run tellraw @s[scores={switch.lang=0}] [{"text":"Blocs de neige","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮","color":"yellow"},{"text":"✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 301"},"hoverEvent":{"action":"show_text","contents":[{"text":"10 -> 12 blocs de neige\n","color":"green"},{"text":"Acheter pour 200 Saphirs","color":"yellow"}]}}]
execute if score @s switch.spleef.snow_block matches 4 run tellraw @s[scores={switch.lang=0}] [{"text":"Blocs de neige","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮","color":"yellow"},{"text":"✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 301"},"hoverEvent":{"action":"show_text","contents":[{"text":"12 -> 16 blocs de neige\n","color":"green"},{"text":"Acheter pour 250 Saphirs","color":"yellow"}]}}]
execute if score @s switch.spleef.snow_block matches 5 run tellraw @s[scores={switch.lang=0}] [{"text":"Blocs de neige","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮✮","color":"yellow"},{"text":" ","color":"gray"},{"text":"[+]","color":"gray"}]
execute if score @s switch.spleef.powder_snow matches 0 run tellraw @s[scores={switch.lang=0}] [{"text":"Poudreuse","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 302"},"hoverEvent":{"action":"show_text","contents":[{"text":"1 -> 2 poudreuses\n","color":"green"},{"text":"Acheter pour 50 Saphirs","color":"yellow"}]}}]
execute if score @s switch.spleef.powder_snow matches 1 run tellraw @s[scores={switch.lang=0}] [{"text":"Poudreuse","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮","color":"yellow"},{"text":"✮✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 302"},"hoverEvent":{"action":"show_text","contents":[{"text":"2 -> 3 poudreuses\n","color":"green"},{"text":"Acheter pour 100 Saphirs","color":"yellow"}]}}]
execute if score @s switch.spleef.powder_snow matches 2 run tellraw @s[scores={switch.lang=0}] [{"text":"Poudreuse","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮","color":"yellow"},{"text":"✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 302"},"hoverEvent":{"action":"show_text","contents":[{"text":"3 -> 4 poudreuses\n","color":"green"},{"text":"Acheter pour 150 Saphirs","color":"yellow"}]}}]
execute if score @s switch.spleef.powder_snow matches 3 run tellraw @s[scores={switch.lang=0}] [{"text":"Poudreuse","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮","color":"yellow"},{"text":"✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 302"},"hoverEvent":{"action":"show_text","contents":[{"text":"4 -> 5 poudreuses\n","color":"green"},{"text":"Acheter pour 200 Saphirs","color":"yellow"}]}}]
execute if score @s switch.spleef.powder_snow matches 4 run tellraw @s[scores={switch.lang=0}] [{"text":"Poudreuse","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮","color":"yellow"},{"text":"✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 302"},"hoverEvent":{"action":"show_text","contents":[{"text":"5 -> 6 poudreuses\n","color":"green"},{"text":"Acheter pour 250 Saphirs","color":"yellow"}]}}]
execute if score @s switch.spleef.powder_snow matches 5 run tellraw @s[scores={switch.lang=0}] [{"text":"Poudreuse","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮✮","color":"yellow"},{"text":" ","color":"gray"},{"text":"[+]","color":"gray"}]

