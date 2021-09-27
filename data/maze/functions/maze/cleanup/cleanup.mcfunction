kill @e[type=armor_stand,tag=rank]

scoreboard players operation #length2 maze = #length maze
execute positioned ~ ~2 ~ run function maze:maze/cleanup/length