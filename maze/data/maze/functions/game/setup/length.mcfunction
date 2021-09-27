scoreboard players operation #width2 maze = #width maze
function maze:game/setup/width

scoreboard players remove #length2 maze 1
execute if score #length2 maze matches 1.. positioned ~ ~ ~4 run function maze:game/setup/length