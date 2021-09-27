fill ~-2 ~ ~-2 ~2 ~12 ~2 nether_bricks replace stone_bricks
fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 nether_bricks replace black_wool

scoreboard players remove #width2 maze 1
execute if score #width2 maze matches 1.. positioned ~4 ~ ~ run function maze:maze/texture/width