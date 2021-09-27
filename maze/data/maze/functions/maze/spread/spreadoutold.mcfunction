#startingX, startingY, startingZ, endingX, endingZ required

scoreboard players operation in math = #startingX maze
scoreboard players operation in math -= 1 const
scoreboard players operation in1 math = #endingX maze
scoreboard players operation in1 math += 1 const

function maze:rng/range
scoreboard players operation #a maze = out math

scoreboard players operation in math = #startingZ maze
scoreboard players operation in math -= 1 const
scoreboard players operation in1 math = #endingZ maze
scoreboard players operation in1 math += 1 const

function maze:rng/range
scoreboard players operation #b maze = out math

#scoreboard players operation #c maze = #startingY maze
#scoreboard players operation #c maze += 2 const

execute store result entity @s Pos[0] double 1 run scoreboard players get #a maze
execute store result entity @s Pos[1] double 1 run scoreboard players get #startingY maze
execute store result entity @s Pos[2] double 1 run scoreboard players get #b maze

#execute at @s if block ~ ~ ~ stone_bricks run function maze:maze/spread/offsetfromwall