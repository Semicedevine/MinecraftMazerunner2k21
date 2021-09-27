fill ~-2 ~-2 ~-2 ~2 ~12 ~2 stone replace
fill ~-2 ~-2 ~-2 ~2 ~12 ~2 air replace

scoreboard players remove #width2 maze 1
execute if score #width2 maze matches 1.. positioned ~4 ~ ~ run function maze:game/setup/width