scoreboard players set @e[type=armor_stand,name=random] maze 0
execute if block ~ ~ ~-2 stone_bricks positioned ~ ~ ~-4 if entity @e[type=armor_stand,tag=rank,limit=1,sort=nearest,tag=!structure,distance=..1] run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 1
execute if block ~2 ~ ~ stone_bricks positioned ~4 ~ ~ if entity @e[type=armor_stand,tag=rank,limit=1,sort=nearest,tag=!structure,distance=..1] run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 2
execute if block ~ ~ ~2 stone_bricks positioned ~ ~ ~4 if entity @e[type=armor_stand,tag=rank,limit=1,sort=nearest,tag=!structure,distance=..1] run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 3
execute if block ~-2 ~ ~ stone_bricks positioned ~-4 ~ ~ if entity @e[type=armor_stand,tag=rank,limit=1,sort=nearest,tag=!structure,distance=..1] run scoreboard players set @e[type=armor_stand,name=random,scores={maze=0},limit=1] maze 4

scoreboard players set #dir maze 0
scoreboard players operation #dir maze = @e[type=armor_stand,name=random,scores={maze=1..},sort=random,limit=1] maze

summon armor_stand ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:true,Tags:["fakeWall","mazeStructure","init"]}
execute as @e[type=armor_stand,tag=init] run scoreboard players operation @s maze = #dir maze

execute as @e[type=armor_stand,tag=init] if score @s maze matches 1 run tp ~ ~ ~-2
execute as @e[type=armor_stand,tag=init] if score @s maze matches 2 run tp ~2 ~ ~
execute as @e[type=armor_stand,tag=init] if score @s maze matches 3 run tp ~ ~ ~2
execute as @e[type=armor_stand,tag=init] if score @s maze matches 4 run tp ~-2 ~ ~

execute as @e[type=armor_stand,tag=init] run scoreboard players set @s lives 1
execute as @e[type=armor_stand,tag=init] at @s run function maze:monsters/fakewall/toggle
tag @e[type=armor_stand,tag=init] remove init

tag @s add structure

scoreboard players add #amount maze 1