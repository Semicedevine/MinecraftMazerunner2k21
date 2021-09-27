scoreboard players set @e[type=armor_stand,name=random] maze 0
execute if block ~ ~ ~-2 stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 1
execute if block ~2 ~ ~ stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 2
execute if block ~ ~ ~2 stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 3
execute if block ~-2 ~ ~ stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 4

#Select maze direction (if available)
scoreboard players set #dir maze 0
scoreboard players operation #dir maze = @e[type=armor_stand,name=random,scores={maze=1..},sort=random,limit=1] maze

execute if score #dir maze matches 1 positioned ~ ~ ~-1 run function maze:maze/shrine/shrine
execute if score #dir maze matches 2 positioned ~1 ~ ~ run function maze:maze/shrine/shrine
execute if score #dir maze matches 3 positioned ~ ~ ~1 run function maze:maze/shrine/shrine
execute if score #dir maze matches 4 positioned ~-1 ~ ~ run function maze:maze/shrine/shrine

tag @e[type=armor_stand,tag=rank,distance=..1,limit=1] add structure

scoreboard players add #currentShrines maze 1
execute if score #currentShrines maze < #totalShrines maze at @e[type=armor_stand,tag=rank,limit=1,sort=random,tag=!structure] run function maze:maze/shrine/createshrines