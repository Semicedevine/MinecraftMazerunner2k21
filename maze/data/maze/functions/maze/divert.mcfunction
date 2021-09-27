scoreboard players set #dir maze 0
execute positioned ~ ~2 ~ run scoreboard players operation #thisRank maze = @e[type=armor_stand,tag=rank,distance=..1,limit=1] maze
#execute store success score public maze run data get entity @e[type=armor_stand,tag=rank,distance=..1,limit=1]
#scoreboard players operation #thisRank maze = #rank maze
scoreboard players operation #newRank maze = #thisRank maze

execute positioned ~4 ~2 ~ if block ~ ~ ~ oak_sign run scoreboard players operation #newRank maze = @e[type=armor_stand,tag=rank,distance=..1,limit=1] maze
execute if score #newRank maze < #thisRank maze run scoreboard players set #dir maze 1
execute if score #newRank maze < #thisRank maze run scoreboard players operation #thisRank maze = #newRank maze

execute positioned ~-4 ~2 ~ if block ~ ~ ~ oak_sign run scoreboard players operation #newRank maze = @e[type=armor_stand,tag=rank,distance=..1,limit=1] maze
execute if score #newRank maze < #thisRank maze run scoreboard players set #dir maze 2
execute if score #newRank maze < #thisRank maze run scoreboard players operation #thisRank maze = #newRank maze

execute positioned ~ ~2 ~4 if block ~ ~ ~ oak_sign run scoreboard players operation #newRank maze = @e[type=armor_stand,tag=rank,distance=..1,limit=1] maze
execute if score #newRank maze < #thisRank maze run scoreboard players set #dir maze 3
execute if score #newRank maze < #thisRank maze run scoreboard players operation #thisRank maze = #newRank maze

execute positioned ~ ~2 ~-4 if block ~ ~ ~ oak_sign run scoreboard players operation #newRank maze = @e[type=armor_stand,tag=rank,distance=..1,limit=1] maze
execute if score #newRank maze < #thisRank maze run scoreboard players set #dir maze 4
execute if score #newRank maze < #thisRank maze run scoreboard players operation #thisRank maze = #newRank maze

execute if score #dir maze matches 0 run say "maze:maze/divert - ERROR: DIR COULD NOT BE DETERMINED BY RANK"

execute if score #dir maze matches 1 run fill ~2 ~2 ~1 ~1 ~13 ~-1 air
execute if score #dir maze matches 2 run fill ~-2 ~2 ~-1 ~-1 ~13 ~1 air
execute if score #dir maze matches 3 run fill ~-1 ~2 ~2 ~1 ~13 ~1 air
execute if score #dir maze matches 4 run fill ~-1 ~2 ~-2 ~1 ~13 ~-1 air