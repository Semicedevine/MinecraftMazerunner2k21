execute store result score #a maze run data get entity @e[type=armor_stand,tag=destroy,limit=1] Pos[0]
execute store result score #b maze run data get entity @e[type=armor_stand,tag=destroy,limit=1] Pos[2]

fill ~ 255 ~ ~ -4 ~ air replace

scoreboard players add #a maze 1
execute if score #a maze > #c maze run scoreboard players add #b maze 1
execute if score #a maze > #c maze run scoreboard players operation #a maze -= #e maze

execute store result entity @e[type=armor_stand,tag=destroy,limit=1] Pos[0] double 1 run scoreboard players get #a maze
execute store result entity @e[type=armor_stand,tag=destroy,limit=1] Pos[2] double 1 run scoreboard players get #b maze

execute if score #b maze <= #d maze run function maze:config/destroy/fill