function maze:maze/build/build

scoreboard players set #rank maze 1

function maze:maze/generate

scoreboard players set #currentShrines maze 0
execute if score #currentShrines maze < #totalShrines maze at @e[type=armor_stand,tag=rank,limit=1,sort=random,tag=!structure] run function maze:maze/shrine/createshrines

summon armor_stand ~ ~2 ~ {NoGravity:1b,Marker:1b,PersistenceRequired:1b,Tags:["init"]}
execute store result score #startingX maze run data get entity @e[type=armor_stand,tag=init,limit=1] Pos[0]
execute store result score #startingY maze run data get entity @e[type=armor_stand,tag=init,limit=1] Pos[1]
execute store result score #startingZ maze run data get entity @e[type=armor_stand,tag=init,limit=1] Pos[2]

scoreboard players operation #endingX maze = #width maze
scoreboard players operation #endingX maze -= 1 const
scoreboard players operation #endingX maze *= 4 const
scoreboard players operation #endingX maze += #startingX maze
scoreboard players operation #endingZ maze = #length maze
scoreboard players operation #endingZ maze -= 1 const
scoreboard players operation #endingZ maze *= 4 const
scoreboard players operation #endingZ maze += #startingZ maze

scoreboard players operation #ceilingY maze = #startingY maze
scoreboard players add #ceilingY maze 3

execute store result entity @e[type=armor_stand, tag=init, limit=1] Pos[0] double 1 run scoreboard players get #endingX maze
execute store result entity @e[type=armor_stand, tag=init, limit=1] Pos[2] double 1 run scoreboard players get #endingZ maze
kill @e[type=armor_stand,tag=init]

scoreboard players set #amount maze 0
execute if score #amount maze < #fakeWalls maze as @e[type=armor_stand,tag=rank,limit=1,sort=random,tag=!structure] at @s run function maze:maze/fakewall/createfakewalls

function maze:maze/spread/spreaditems
function maze:maze/cleanup/cleanup
function maze:maze/texture/texture