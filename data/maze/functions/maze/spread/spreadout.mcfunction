#startingX, startingY, startingZ, endingX, endingZ required from maze/maze

scoreboard players operation in math = 0 const
scoreboard players operation in1 math = #width maze
scoreboard players operation in1 math -= 1 const

function maze:rng/range
scoreboard players operation #a maze = out math
scoreboard players operation #a maze *= 4 const
scoreboard players operation #a maze += #startingX maze

scoreboard players operation in math = 0 const
scoreboard players operation in1 math = #length maze
scoreboard players operation in1 math -= 1 const

function maze:rng/range
scoreboard players operation #b maze = out math
scoreboard players operation #b maze *= 4 const
scoreboard players operation #b maze += #startingZ maze

scoreboard players set in math -1
scoreboard players set in1 math 1

function maze:rng/range

#scoreboard players operation #a maze += out math

scoreboard players set in math -1
scoreboard players set in1 math 1

function maze:rng/range

#scoreboard players operation #b maze += out math

execute store result entity @s Pos[0] double 1 run scoreboard players get #a maze
execute store result entity @s Pos[1] double 1 run scoreboard players get #startingY maze
execute store result entity @s Pos[2] double 1 run scoreboard players get #b maze