#Determine available directions
scoreboard players set @e[type=armor_stand,name=random] maze 0
execute if block ~1 ~ ~ stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 1
execute if block ~-1 ~ ~ stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 2
execute if block ~ ~ ~1 stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 3
execute if block ~ ~ ~-1 stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 4

#Select maze direction (if available)
scoreboard players set #random maze 0
scoreboard players operation #random maze = @e[type=armor_stand,name=random,scores={maze=1..},sort=random,limit=1] maze

execute if score #random maze matches 1 run tp ~1 ~ ~
execute if score #random maze matches 2 run tp ~-1 ~ ~
execute if score #random maze matches 3 run tp ~ ~ ~1
execute if score #random maze matches 4 run tp ~ ~ ~-1

execute if score #random maze matches 0 run say "maze:maze/maze/spread/offsetfromwall - item trapped in the wall"
#execute unless score #random maze matches 0 run say "maze:maze/maze/spread/offsetfromwall - successfully offset"