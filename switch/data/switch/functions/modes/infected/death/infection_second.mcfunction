
damage @s 0.00001
playsound entity.zombie.hurt ambient @a[distance=..16]
particle lava ~ ~1 ~ 0.35 0.5 0.35 0 5 force @a[distance=..100]
scoreboard players add @s switch.temp.infection 1
execute if score @s switch.temp.infection matches 11.. run function switch:modes/infected/death/zombie_transform

