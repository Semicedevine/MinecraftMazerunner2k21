setblock ~ ~ ~ air replace

scoreboard players remove #width2 maze 1
execute if score #width2 maze matches 1.. positioned ~4 ~ ~ run function maze:maze/cleanup/width