scoreboard players set in math 1
scoreboard players set in1 math 100

function maze:rng/range

execute if score out math <= #openWallChance maze run function maze:maze/openwall/destroyrandomwall

scoreboard players remove #width2 maze 1
execute if score #width2 maze matches 1.. positioned ~4 ~ ~ run function maze:maze/openwall/width