#Establish rank
execute if block ~ ~ ~ stone_bricks positioned ~ ~2 ~ run setblock ~ ~ ~ oak_sign{Text1:"[\"\",{\"text\":\"\"},{\"score\":{\"name\":\"#rank\",\"objective\":\"maze\"}}]"}
execute if block ~ ~ ~ stone_bricks positioned ~ ~2 ~ run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,PersistenceRequired:1b,Tags:["rank"]}
execute if block ~ ~ ~ stone_bricks positioned ~ ~2 ~ run scoreboard players operation @e[type=armor_stand,tag=rank,distance=..1,limit=1] maze = #rank maze
execute if block ~ ~ ~ stone_bricks run scoreboard players add #rank maze 1

#Determine available directions
scoreboard players set @e[type=armor_stand,name=random] maze 0
execute if block ~4 ~ ~ stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 1
execute if block ~-4 ~ ~ stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 2
execute if block ~ ~ ~4 stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 3
execute if block ~ ~ ~-4 stone_bricks run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 4

#Select maze direction (if available)
scoreboard players set #random maze 0
scoreboard players operation #random maze = @e[type=armor_stand,name=random,scores={maze=1..},sort=random,limit=1] maze

#Set red_wool if a direction is chosen
execute if score #random maze matches 1.. run setblock ~ ~ ~ red_wool

#Carve out maze in chosen direction (if one is chosen)
execute if score #random maze matches 1 run fill ~2 ~2 ~1 ~2 ~13 ~-1 air
execute if score #random maze matches 1 positioned ~4 ~ ~ run function maze:maze/generate
execute if score #random maze matches 2 run fill ~-2 ~2 ~-1 ~-2 ~13 ~1 air
execute if score #random maze matches 2 positioned ~-4 ~ ~ run function maze:maze/generate
execute if score #random maze matches 3 run fill ~-1 ~2 ~2 ~1 ~13 ~2 air
execute if score #random maze matches 3 positioned ~ ~ ~4 run function maze:maze/generate
execute if score #random maze matches 4 run fill ~-1 ~2 ~-2 ~1 ~13 ~-2 air
execute if score #random maze matches 4 positioned ~ ~ ~-4 run function maze:maze/generate

execute if score #random maze matches 0 if block ~ ~ ~ stone_bricks run function maze:maze/divert

#Backtrack if there are no available directions
execute if score #random maze matches 0 run setblock ~ ~ ~ blue_wool

execute if score #random maze matches 0 if block ~2 ~2 ~ air if block ~4 ~ ~ red_wool positioned ~4 ~ ~ run function maze:maze/generate
execute if score #random maze matches 0 if block ~-2 ~2 ~ air if block ~-4 ~ ~ red_wool positioned ~-4 ~ ~ run function maze:maze/generate
execute if score #random maze matches 0 if block ~ ~2 ~2 air if block ~ ~ ~4 red_wool positioned ~ ~ ~4 run function maze:maze/generate
execute if score #random maze matches 0 if block ~ ~2 ~-2 air if block ~ ~ ~-4 red_wool positioned ~ ~ ~-4 run function maze:maze/generate