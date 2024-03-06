
# French
tellraw @s[scores={switch.lang=0}] ["\n",{"nbt":"ParalyaMusic","storage":"switch:main","interpret":true},{"text":" [🔀]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 2"},"hoverEvent":{"action":"show_text","value":{"text":"Randomize","color":"gray"}}},{"text":" [⏮]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 3"},"hoverEvent":{"action":"show_text","value":{"text":"Previous","color":"gray"}}},{"text":" [⏯]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 4"},"hoverEvent":{"action":"show_text","value":{"text":"Play/Pause","color":"gray"}}},{"text":" [⏭]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 5"},"hoverEvent":{"action":"show_text","value":{"text":"Next","color":"gray"}}},{"text":" [🔁]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 6"},"hoverEvent":{"action":"show_text","value":{"text":"Repeat","color":"gray"}}}]
tellraw @s[scores={switch.lang=0}] ""
execute if score @s switch.music.current matches 100 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Bossfight - The Maze Of Mayonnaise (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 100"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m47s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 100 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Bossfight - The Maze Of Mayonnaise","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 100"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m47s)","color":"gray"}}}]
execute if score @s switch.music.current matches 101 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Different Heaven - Nekozilla (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 101"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m11s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 101 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Different Heaven - Nekozilla","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 101"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m11s)","color":"gray"}}}]
execute if score @s switch.music.current matches 102 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Dimrain47 - At The Speed Of Light (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 102"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 4m24s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 102 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Dimrain47 - At The Speed Of Light","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 102"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 4m24s)","color":"gray"}}}]
execute if score @s switch.music.current matches 103 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Disfigure - Blank (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 103"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m46s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 103 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Disfigure - Blank","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 103"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m46s)","color":"gray"}}}]
execute if score @s switch.music.current matches 104 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ F777 - Ludicrous Speed (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 104"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m33s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 104 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ F777 - Ludicrous Speed","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 104"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m33s)","color":"gray"}}}]
execute if score @s switch.music.current matches 105 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Forever Bound - Stereo Madness (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 105"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m30s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 105 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Forever Bound - Stereo Madness","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 105"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m30s)","color":"gray"}}}]
execute if score @s switch.music.current matches 106 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ MDK - Fingerdash (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 106"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m03s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 106 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ MDK - Fingerdash","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 106"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m03s)","color":"gray"}}}]
execute if score @s switch.music.current matches 107 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Ocular Nebula - Stay Inside Me (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 107"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m42s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 107 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Ocular Nebula - Stay Inside Me","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 107"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m42s)","color":"gray"}}}]
execute if score @s switch.music.current matches 108 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Rick Astley - Never Gonna Give You Up (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 108"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m24s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 108 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Rick Astley - Never Gonna Give You Up","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 108"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m24s)","color":"gray"}}}]
execute if score @s switch.music.current matches 109 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Terraria - Overworld Day (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 109"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 6m38s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 109 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Terraria - Overworld Day","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 109"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 6m38s)","color":"gray"}}}]
execute if score @s switch.music.current matches 110 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Tetris - Main Theme (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 110"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 26s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 110 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Tetris - Main Theme","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 110"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 26s)","color":"gray"}}}]
execute if score @s switch.music.current matches 111 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ TheFatRat - Mayday (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 111"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 4m00s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 111 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ TheFatRat - Mayday","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 111"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 4m00s)","color":"gray"}}}]
execute if score @s switch.music.current matches 112 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ TheFatRat - Monody (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 112"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m35s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 112 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ TheFatRat - Monody","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 112"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m35s)","color":"gray"}}}]
execute if score @s switch.music.current matches 113 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ TheFatRat - Never Be Alone (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 113"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 3m43s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 113 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ TheFatRat - Never Be Alone","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 113"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 3m43s)","color":"gray"}}}]
execute if score @s switch.music.current matches 114 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Tobu - Hope (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 114"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 3m53s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 114 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Tobu - Hope","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 114"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 3m53s)","color":"gray"}}}]
execute if score @s switch.music.current matches 115 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Toru Kitajima - Unravel (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 115"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 3m37s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 115 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ Toru Kitajima - Unravel","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 115"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 3m37s)","color":"gray"}}}]

# English
tellraw @s[scores={switch.lang=1}] [{"nbt":"ParalyaMusic","storage":"switch:main","interpret":true},{"text":"[🔀]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 2"}, "hoverEvent":{"action":"show_text","value":{"text":"Randomize","color":"gray"}}},{"text":"[⏮]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 3"}, "hoverEvent":{"action":"show_text","value":{"text":"Previous","color":"gray"}}},{"text":"[⏯]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 4"}, "hoverEvent":{"action":"show_text","value":{"text":"Play/Pause","color":"gray"}}},{"text":"[⏭]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 5"}, "hoverEvent":{"action":"show_text","value":{"text":"Next","color":"gray"}}},{"text":"[🔁]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 6"}, "hoverEvent":{"action":"show_text","value":{"text":"Repeat","color":"gray"}}}]
tellraw @s[scores={switch.lang=1}] ""
execute if score @s switch.music.current matches 100 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Bossfight - The Maze Of Mayonnaise (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 100"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m47s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 100 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Bossfight - The Maze Of Mayonnaise","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 100"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m47s)","color":"gray"}}}]
execute if score @s switch.music.current matches 101 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Different Heaven - Nekozilla (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 101"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m11s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 101 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Different Heaven - Nekozilla","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 101"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m11s)","color":"gray"}}}]
execute if score @s switch.music.current matches 102 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Dimrain47 - At The Speed Of Light (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 102"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 4m24s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 102 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Dimrain47 - At The Speed Of Light","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 102"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 4m24s)","color":"gray"}}}]
execute if score @s switch.music.current matches 103 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Disfigure - Blank (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 103"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m46s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 103 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Disfigure - Blank","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 103"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m46s)","color":"gray"}}}]
execute if score @s switch.music.current matches 104 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ F777 - Ludicrous Speed (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 104"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m33s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 104 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ F777 - Ludicrous Speed","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 104"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m33s)","color":"gray"}}}]
execute if score @s switch.music.current matches 105 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Forever Bound - Stereo Madness (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 105"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m30s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 105 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Forever Bound - Stereo Madness","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 105"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m30s)","color":"gray"}}}]
execute if score @s switch.music.current matches 106 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ MDK - Fingerdash (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 106"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m03s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 106 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ MDK - Fingerdash","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 106"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m03s)","color":"gray"}}}]
execute if score @s switch.music.current matches 107 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Ocular Nebula - Stay Inside Me (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 107"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m42s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 107 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Ocular Nebula - Stay Inside Me","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 107"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m42s)","color":"gray"}}}]
execute if score @s switch.music.current matches 108 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Rick Astley - Never Gonna Give You Up (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 108"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m24s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 108 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Rick Astley - Never Gonna Give You Up","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 108"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m24s)","color":"gray"}}}]
execute if score @s switch.music.current matches 109 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Terraria - Overworld Day (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 109"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 6m38s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 109 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Terraria - Overworld Day","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 109"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 6m38s)","color":"gray"}}}]
execute if score @s switch.music.current matches 110 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Tetris - Main Theme (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 110"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 26s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 110 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Tetris - Main Theme","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 110"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 26s)","color":"gray"}}}]
execute if score @s switch.music.current matches 111 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ TheFatRat - Mayday (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 111"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 4m00s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 111 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ TheFatRat - Mayday","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 111"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 4m00s)","color":"gray"}}}]
execute if score @s switch.music.current matches 112 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ TheFatRat - Monody (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 112"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m35s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 112 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ TheFatRat - Monody","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 112"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m35s)","color":"gray"}}}]
execute if score @s switch.music.current matches 113 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ TheFatRat - Never Be Alone (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 113"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 3m43s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 113 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ TheFatRat - Never Be Alone","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 113"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 3m43s)","color":"gray"}}}]
execute if score @s switch.music.current matches 114 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Tobu - Hope (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 114"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 3m53s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 114 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Tobu - Hope","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 114"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 3m53s)","color":"gray"}}}]
execute if score @s switch.music.current matches 115 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Toru Kitajima - Unravel (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 115"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 3m37s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 115 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ Toru Kitajima - Unravel","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 115"}, "hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 3m37s)","color":"gray"}}}]

