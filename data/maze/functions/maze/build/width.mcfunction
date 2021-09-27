fill ~-2 ~-1 ~-2 ~2 ~12 ~2 stone_bricks hollow
#fill ~-1 ~ ~-1 ~1 ~3 ~1 air
#fill ~-2 ~4 ~-2 ~2 ~4 ~2 barrier
fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 black_wool replace
setblock ~ ~-2 ~ stone_bricks

scoreboard players remove #width2 maze 1
execute if score #width2 maze matches 1.. positioned ~4 ~ ~ run function maze:maze/build/width