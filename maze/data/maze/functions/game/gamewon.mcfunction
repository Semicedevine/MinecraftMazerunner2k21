title @a subtitle {"text":"Get out while you still can...","italic":true}
title @a title {"text":"Exit Unlocked","color":"blue","bold":true}

summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,PersistenceRequired:1b,Tags:["init"]}
execute store result entity @e[type=armor_stand,tag=init,limit=1] Pos[0] double 1 run scoreboard players get #startingX maze
execute store result entity @e[type=armor_stand,tag=init,limit=1] Pos[1] double 1 run scoreboard players get #startingY maze
execute store result entity @e[type=armor_stand,tag=init,limit=1] Pos[2] double 1 run scoreboard players get #startingZ maze

execute at @e[type=armor_stand,tag=init,limit=1] run fill ~-2 ~2 ~1 ~-2 ~ ~-1 air replace
kill @e[type=armor_stand,tag=init]
scoreboard players set #gameRunning maze 0
effect clear @a blindness