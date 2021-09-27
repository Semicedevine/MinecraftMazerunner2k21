summon armor_stand ~ ~ ~ {Tags:["texture"],Marker:1b}

scoreboard players operation #thisX maze = #startingX maze
scoreboard players remove #thisX maze 2
scoreboard players operation #thisZ maze = #startingZ maze
scoreboard players remove #thisZ maze 2

scoreboard players operation #targetX maze = #endingX maze
scoreboard players add #targetX maze 2
scoreboard players operation #targetZ maze = #endingZ maze
scoreboard players add #targetZ maze 2

execute store result entity @e[type=armor_stand,tag=texture,limit=1] Pos[1] double 1 run scoreboard players get #startingY maze

execute as @e[type=armor_stand,tag=texture] at @s run function maze:maze/texture/colorwall