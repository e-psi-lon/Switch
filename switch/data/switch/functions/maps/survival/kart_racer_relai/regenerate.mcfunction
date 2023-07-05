
scoreboard players add #rg_kart_racer_relai switch.data 1
execute if score #rg_kart_racer_relai switch.data matches 1 run forceload add 64000 64000 64020 64126
execute if score #rg_kart_racer_relai switch.data matches 1 run forceload add 64020 64000 64040 64126
execute if score #rg_kart_racer_relai switch.data matches 1 run forceload add 64040 64000 64061 64126
execute if score #rg_kart_racer_relai switch.data matches 1 run forceload add 64061 64000 64081 64126
execute if score #rg_kart_racer_relai switch.data matches 1 run forceload add 64081 64000 64101 64126

execute if score #rg_kart_racer_relai switch.data matches 1 run scoreboard players set #rg_kart_racer_relai_y switch.data 0
execute if score #rg_kart_racer_relai switch.data matches 1 run scoreboard players set #rg_kart_racer_relai_mod switch.data 0
execute if score #rg_kart_racer_relai switch.data matches ..270 summon marker run function switch:maps/survival/kart_racer_relai/regeneration_on_marker

execute if score #rg_kart_racer_relai switch.data matches 271.. run kill @e[type=item,x=64050,y=0,z=64063,distance=..1000]
execute if score #rg_kart_racer_relai switch.data matches 271.. run forceload remove 64000 64000 64020 64126
execute if score #rg_kart_racer_relai switch.data matches 271.. run forceload remove 64020 64000 64040 64126
execute if score #rg_kart_racer_relai switch.data matches 271.. run forceload remove 64040 64000 64061 64126
execute if score #rg_kart_racer_relai switch.data matches 271.. run forceload remove 64061 64000 64081 64126
execute if score #rg_kart_racer_relai switch.data matches 271.. run forceload remove 64081 64000 64101 64126
execute if score #rg_kart_racer_relai switch.data matches 271.. run tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" La map '","color":"yellow"},{"text":"kart_racer_relai","color":"gold"},{"text":"' vient de finir de se régénérer en ","color":"yellow"},{"text":"0","color":"gold"},{"text":"m","color":"yellow"},{"text":"13","color":"gold"},{"text":"s","color":"yellow"}]
execute if score #rg_kart_racer_relai switch.data matches 271.. run data modify storage switch:main MessageToLog set value '{"text": "La map `kart_racer_relai` a fini sa régénération !"}'
execute if score #rg_kart_racer_relai switch.data matches 271.. run function switch:engine/log_message/apply
execute if score #rg_kart_racer_relai switch.data matches 271.. run scoreboard players reset #rg_kart_racer_relai switch.data

execute if score #rg_kart_racer_relai switch.data matches 1.. run schedule function switch:maps/survival/kart_racer_relai/regenerate 1t

