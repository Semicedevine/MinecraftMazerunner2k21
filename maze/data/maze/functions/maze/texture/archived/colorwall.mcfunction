execute store result entity @s Pos[0] double 1 run scoreboard players get #thisX maze
execute store result entity @s Pos[2] double 1 run scoreboard players get #thisZ maze

execute at @s run fill ~ ~ ~ ~ ~4 ~ nether_bricks replace stone_bricks

#THIS FUNCTION ALSO CREATES CLONE OF MAZE BENEATH MAZE
#execute at @s run clone ~ ~-1 ~ ~ ~4 ~ ~ ~-10 ~ replace force

scoreboard players add #thisX maze 1

execute if score #thisX maze > #targetX maze run function maze:maze/texture/nextrow

execute if score #thisZ maze > #targetZ maze run kill @e[type=armor_stand,tag=texture]
execute unless score #thisZ maze > #targetZ maze run function maze:maze/texture/colorwall