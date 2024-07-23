
# Give sword
execute store result score #random switch.data run random value 0..3
# execute if score #random switch.data matches 0 run loot insert 0 0 0 loot stardust:i/original_stardust_sword
# execute if score #random switch.data matches 1 run loot insert 0 0 0 loot stardust:i/legendarium_sword
# execute if score #random switch.data matches 2 run loot insert 0 0 0 loot stardust:i/solarium_sword
# execute if score #random switch.data matches 3 run loot insert 0 0 0 loot stardust:i/darkium_sword
execute if score #random switch.data matches 0 run item replace entity @s hotbar.0 with diamond_sword[unbreakable={show_in_tooltip:false},enchantments={"knockback":3}]
execute if score #random switch.data matches 1 run item replace entity @s hotbar.0 with diamond_sword[unbreakable={show_in_tooltip:false},enchantments={"knockback":3}]
execute if score #random switch.data matches 2 run item replace entity @s hotbar.0 with diamond_sword[unbreakable={show_in_tooltip:false},enchantments={"knockback":3}]
execute if score #random switch.data matches 3 run item replace entity @s hotbar.0 with diamond_sword[unbreakable={show_in_tooltip:false},enchantments={"knockback":3}]

# Give bow
execute store result score #random switch.data run random value 0..2
# execute if score #random switch.data matches 0 run loot insert 0 0 0 loot stardust:i/stardust_bow
# execute if score #random switch.data matches 1 run loot insert 0 0 0 loot stardust:i/awakened_stardust_bow
# execute if score #random switch.data matches 2 run loot insert 0 0 0 loot stardust:i/ultimate_bow
execute if score #random switch.data matches 0 run item replace entity @s hotbar.1 with bow[unbreakable={show_in_tooltip:false},enchantments={"punch":3, "infinity":1}]
execute if score #random switch.data matches 1 run item replace entity @s hotbar.1 with bow[unbreakable={show_in_tooltip:false},enchantments={"punch":3, "infinity":1}]
execute if score #random switch.data matches 2 run item replace entity @s hotbar.1 with bow[unbreakable={show_in_tooltip:false},enchantments={"punch":3, "infinity":1}]

# Give arrows & ender pearls
item replace entity @s hotbar.2 with arrow 64
item replace entity @s hotbar.8 with ender_pearl 3

# Give depending on the upgrades
execute if score @s switch.pitchout.boots matches 1 run item replace entity @s armor.feet with leather_boots[damage=45]
execute if score @s switch.pitchout.boots matches 2 run item replace entity @s armor.feet with leather_boots[damage=35]
execute if score @s switch.pitchout.boots matches 3 run item replace entity @s armor.feet with leather_boots[damage=25]
execute if score @s switch.pitchout.boots matches 4 run item replace entity @s armor.feet with leather_boots[damage=15]
execute if score @s switch.pitchout.boots matches 5 run item replace entity @s armor.feet with leather_boots
execute if score @s switch.pitchout.ender_pearl matches 1 run item replace entity @s hotbar.8 with ender_pearl 4
execute if score @s switch.pitchout.ender_pearl matches 2 run item replace entity @s hotbar.8 with ender_pearl 5

