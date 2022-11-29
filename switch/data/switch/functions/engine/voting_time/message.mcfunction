
data modify storage switch:main msg_votes set value [" vote", " vote", " vote", " vote", " vote"]
execute if score #vote_game_1 switch.data matches 2.. run data modify storage switch:main msg_votes[0] set value " votes"
execute if score #vote_game_2 switch.data matches 2.. run data modify storage switch:main msg_votes[1] set value " votes"
execute if score #vote_game_3 switch.data matches 2.. run data modify storage switch:main msg_votes[2] set value " votes"
execute if score #vote_game_4 switch.data matches 2.. run data modify storage switch:main msg_votes[3] set value " votes"
execute if score #vote_game_5 switch.data matches 2.. run data modify storage switch:main msg_votes[4] set value " votes"

tellraw @s ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Veuillez voter pour le prochain mini-jeu parmi les suivants :"},"\n",{"text":"[","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 1"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[0].Lore","storage":"switch:main","interpret":true}]}},{"nbt":"selections[0].Name","storage":"switch:main","interpret":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 1"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[0].Lore","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 1"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[0].Lore","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_1","objective":"switch.data"},"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 1"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[0].Lore","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[0]","storage":"switch:main","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 1"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[0].Lore","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 2"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[1].Lore","storage":"switch:main","interpret":true}]}},{"nbt":"selections[1].Name","storage":"switch:main","interpret":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 2"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[1].Lore","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 2"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[1].Lore","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_2","objective":"switch.data"},"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 2"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[1].Lore","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[1]","storage":"switch:main","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 2"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[1].Lore","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 3"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[2].Lore","storage":"switch:main","interpret":true}]}},{"nbt":"selections[2].Name","storage":"switch:main","interpret":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 3"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[2].Lore","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 3"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[2].Lore","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_3","objective":"switch.data"},"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 3"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[2].Lore","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[2]","storage":"switch:main","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 3"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[2].Lore","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 4"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[3].Lore","storage":"switch:main","interpret":true}]}},{"nbt":"selections[3].Name","storage":"switch:main","interpret":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 4"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[3].Lore","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 4"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[3].Lore","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_4","objective":"switch.data"},"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 4"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[3].Lore","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[3]","storage":"switch:main","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 4"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[3].Lore","storage":"switch:main","interpret":true}]}},"\n",{"text":"[","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 5"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[4].Lore","storage":"switch:main","interpret":true}]}},{"nbt":"selections[4].Name","storage":"switch:main","interpret":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 5"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[4].Lore","storage":"switch:main","interpret":true}]}},{"text":"] ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 5"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[4].Lore","storage":"switch:main","interpret":true}]}},{"score":{"name":"#vote_game_5","objective":"switch.data"},"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 5"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[4].Lore","storage":"switch:main","interpret":true}]}},{"nbt":"msg_votes[4]","storage":"switch:main","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.game_vote set 5"},"hoverEvent":{"action":"show_text","value":[{"nbt":"selections[4].Lore","storage":"switch:main","interpret":true}]}}]

