summon armor_stand ~ ~ ~ {Tags:["init"]}

execute store result score #a maze run data get entity @e[type=armor_stand,tag=init,limit=1] Pos[0]
execute store result score #b maze run data get entity @e[type=armor_stand,tag=init,limit=1] Pos[2]
execute store result score #c maze run data get entity @e[type=armor_stand,tag=init,limit=1] Pos[0]
execute store result score #d maze run data get entity @e[type=armor_stand,tag=init,limit=1] Pos[2]

scoreboard players add #a maze 4
scoreboard players add #b maze 4
scoreboard players remove #c maze 4
scoreboard players remove #d maze 4

scoreboard players set @e[type=armor_stand,name=random] maze 0
execute if score #a maze <= #endingX maze if block ~2 ~ ~ stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 1
execute if score #c maze >= #startingX maze if block ~-2 ~ ~ stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 2
execute if score #b maze <= #endingZ maze if block ~ ~ ~2 stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 3
execute if score #d maze >= #startingZ maze if block ~ ~ ~-2 stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 4

scoreboard players set #random maze 0
scoreboard players operation #random maze = @e[type=armor_stand,name=random,scores={maze=1..},sort=random,limit=1] maze

kill @e[type=armor_stand,tag=init]

execute if score #random maze matches 1 run fill ~2 ~ ~1 ~2 ~11 ~-1 air replace
execute if score #random maze matches 1 run fill ~2 ~-1 ~1 ~2 ~-1 ~-1 chiseled_nether_bricks replace
execute if score #random maze matches 2 run fill ~-2 ~ ~-1 ~-2 ~11 ~1 air replace
execute if score #random maze matches 2 run fill ~-2 ~-1 ~-1 ~-2 ~-1 ~1 chiseled_nether_bricks replace
execute if score #random maze matches 3 run fill ~-1 ~ ~2 ~1 ~11 ~2 air replace
execute if score #random maze matches 3 run fill ~-1 ~-1 ~2 ~1 ~-1 ~2 chiseled_nether_bricks replace
execute if score #random maze matches 4 run fill ~-1 ~ ~-2 ~1 ~11 ~-2 air replace
execute if score #random maze matches 4 run fill ~-1 ~-1 ~-2 ~1 ~-1 ~-2 chiseled_nether_bricks replace