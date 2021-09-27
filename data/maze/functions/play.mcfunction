execute at @e[type=armor_stand,tag=lobby] as @a[distance=..5] run tag @s add play
execute as @e[type=armor_stand,tag=play] at @s run function maze:game/run