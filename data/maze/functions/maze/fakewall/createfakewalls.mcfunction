execute store result score #a maze run data get entity @s Pos[0]
execute store result score #b maze run data get entity @s Pos[0]
scoreboard players operation #a maze += #size maze
scoreboard players operation #b maze -= #size maze

execute store result score #c maze run data get entity @s Pos[2]
execute store result score #d maze run data get entity @s Pos[2]
scoreboard players operation #c maze += #size maze
scoreboard players operation #d maze -= #size maze

execute unless score #a maze >= #endingX maze unless score #b maze <= #startingX maze unless score #c maze >= #endingZ maze unless score #d maze <= #startingZ maze run function maze:maze/fakewall/fakewall

execute if score #amount maze < #fakeWalls maze as @e[type=armor_stand,tag=rank,limit=1,sort=random,tag=!structure] at @s run function maze:maze/fakewall/createfakewalls