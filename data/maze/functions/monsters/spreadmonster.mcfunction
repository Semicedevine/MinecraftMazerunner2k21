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

#execute unless entity @e[type=armor_stand,tag=spreadMonster] run summon armor_stand ~ ~ ~ {Tags:["spreadMonster"]}

execute store result entity @s Pos[0] double 1 run scoreboard players get #a maze
execute store result entity @s Pos[1] double 1 run scoreboard players get #startingY maze
execute store result entity @s Pos[2] double 1 run scoreboard players get #b maze

execute as @s at @s if entity @a[distance=..20] run function maze:monsters/spreadmonster

#execute at @e[type=armor_stand,tag=spreadMonster,limit=1] unless entity @a[distance=..10] run tp @s @e[type=armor_stand,tag=spreadMonster,limit=1]
#execute at @e[type=armor_stand,tag=spreadMonster,limit=1] unless entity @a[distance=..10] run kill @e[type=armor_stand,tag=spreadMonster,limit=1]
#execute at @e[type=armor_stand,tag=spreadMonster,limit=1] if entity @a[distance=..10] as @s run function maze:monsters/spreadmonster