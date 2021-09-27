#SET SIZE WITH #destroy maze VARIABLE

summon armor_stand ~ 255 ~ {Tags:["destroy","PersistenceRequired:1b","Marker:1b"]}

execute store result score #a maze run data get entity @s Pos[0]
execute store result score #b maze run data get entity @s Pos[2]
execute store result score #c maze run data get entity @s Pos[0]
execute store result score #d maze run data get entity @s Pos[2]

scoreboard players operation #a maze -= #destroy maze
scoreboard players operation #b maze -= #destroy maze
scoreboard players operation #c maze += #destroy maze
scoreboard players operation #d maze += #destroy maze
scoreboard players operation #e maze = #destroy maze
scoreboard players operation #e maze *= 2 const
scoreboard players operation #e maze += 1 const

execute store result entity @e[type=armor_stand,tag=destroy,limit=1] Pos[0] double 1 run scoreboard players get #a maze
execute store result entity @e[type=armor_stand,tag=destroy,limit=1] Pos[2] double 1 run scoreboard players get #b maze

execute if score #b maze <= #d maze run function maze:config/destroy/fill