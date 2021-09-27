execute if score #dir maze matches 1 run setblock ~ ~-2 ~ dropper[facing=south]
execute if score #dir maze matches 2 run setblock ~ ~-2 ~ dropper[facing=west]
execute if score #dir maze matches 3 run setblock ~ ~-2 ~ dropper[facing=north]
execute if score #dir maze matches 4 run setblock ~ ~-2 ~ dropper[facing=east]

execute if score #dir maze matches 1 run setblock ~1 ~ ~ oak_sign[rotation=0]{Text1:'{"text":"Click to","clickEvent":{"action":"run_command","value":"function maze:game/check/checkkey"}}',Text2:'{"text":"Toggle"}',Text3:'{"text":"Dropper"}'}
execute if score #dir maze matches 2 run setblock ~ ~ ~1 oak_sign[rotation=4]{Text1:'{"text":"Click to","clickEvent":{"action":"run_command","value":"function maze:game/check/checkkey"}}',Text2:'{"text":"Toggle"}',Text3:'{"text":"Dropper"}'}
execute if score #dir maze matches 3 run setblock ~-1 ~ ~ oak_sign[rotation=8]{Text1:'{"text":"Click to","clickEvent":{"action":"run_command","value":"function maze:game/check/checkkey"}}',Text2:'{"text":"Toggle"}',Text3:'{"text":"Dropper"}'}
execute if score #dir maze matches 4 run setblock ~ ~ ~-1 oak_sign[rotation=12]{Text1:'{"text":"Click to","clickEvent":{"action":"run_command","value":"function maze:game/check/checkkey"}}',Text2:'{"text":"Toggle"}',Text3:'{"text":"Dropper"}'}

clone ~ ~-2 ~ ~ ~-2 ~ ~ ~ ~ replace normal

scoreboard players set in math 1
scoreboard players set in1 math 7

function maze:rng/range

#Possible Key Combinations for Dropper
execute if score out math matches 1 run data merge block ~ ~-2 ~ {Items:[{Slot:0b,id:"minecraft:iron_ingot",Count:1b},{Slot:1b,id:"minecraft:iron_bars",Count:1b},{Slot:2b,id:"minecraft:iron_ingot",Count:1b},{Slot:3b,id:"minecraft:clay_ball",Count:1b},{Slot:4b,id:"lock_and_key:key",Count:1b},{Slot:5b,id:"minecraft:clay_ball",Count:1b},{Slot:6b,id:"minecraft:clay_ball",Count:1b},{Slot:7b,id:"minecraft:stone_brick_wall",Count:1b},{Slot:8b,id:"minecraft:clay_ball",Count:1b}]}
execute if score out math matches 2 run data merge block ~ ~-2 ~ {Items:[{Slot:0b,id:"minecraft:clay_ball",Count:1b},{Slot:1b,id:"minecraft:emerald",Count:1b},{Slot:2b,id:"minecraft:clay_ball",Count:1b},{Slot:3b,id:"minecraft:emerald",Count:1b},{Slot:4b,id:"lock_and_key:key",Count:1b},{Slot:5b,id:"minecraft:emerald",Count:1b},{Slot:6b,id:"minecraft:clay_ball",Count:1b},{Slot:7b,id:"minecraft:emerald",Count:1b},{Slot:8b,id:"minecraft:clay_ball",Count:1b}]}
execute if score out math matches 3 run data merge block ~ ~-2 ~ {Items:[{Slot:0b,id:"minecraft:stone_brick_wall",Count:1b},{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:2b,id:"minecraft:stone",Count:1b},{Slot:3b,id:"minecraft:clay_ball",Count:1b},{Slot:4b,id:"lock_and_key:key",Count:1b},{Slot:5b,id:"minecraft:iron_ingot",Count:1b},{Slot:6b,id:"minecraft:stick",Count:1b},{Slot:7b,id:"minecraft:clay_ball",Count:1b},{Slot:8b,id:"minecraft:stone_brick_wall",Count:1b}]}
execute if score out math matches 4 run data merge block ~ ~-2 ~ {Items:[{Slot:0b,id:"minecraft:clay_ball",Count:1b},{Slot:1b,id:"minecraft:redstone",Count:1b},{Slot:2b,id:"minecraft:stick",Count:1b},{Slot:3b,id:"minecraft:redstone",Count:1b},{Slot:4b,id:"lock_and_key:key",Count:1b},{Slot:5b,id:"minecraft:diamond",Count:1b},{Slot:6b,id:"minecraft:stick",Count:1b},{Slot:7b,id:"minecraft:diamond",Count:1b},{Slot:8b,id:"minecraft:clay_ball",Count:1b}]}
execute if score out math matches 5 run data merge block ~ ~-2 ~ {Items:[{Slot:0b,id:"minecraft:stone_brick_wall",Count:1b},{Slot:1b,id:"minecraft:stone",Count:1b},{Slot:2b,id:"minecraft:stone_brick_wall",Count:1b},{Slot:3b,id:"minecraft:stone_brick_wall",Count:1b},{Slot:4b,id:"lock_and_key:key",Count:1b},{Slot:5b,id:"minecraft:stone_brick_wall",Count:1b},{Slot:6b,id:"minecraft:clay_ball",Count:1b},{Slot:7b,id:"minecraft:hopper",Count:1b},{Slot:8b,id:"minecraft:clay_ball",Count:1b}]}
execute if score out math matches 6 run data merge block ~ ~-2 ~ {Items:[{Slot:0b,id:"minecraft:prismarine_shard",Count:1b},{Slot:1b,id:"minecraft:prismarine_shard",Count:1b},{Slot:2b,id:"minecraft:clay_ball",Count:1b},{Slot:3b,id:"minecraft:prismarine_shard",Count:1b},{Slot:4b,id:"lock_and_key:key",Count:1b},{Slot:5b,id:"minecraft:stone_stairs",Count:1b},{Slot:6b,id:"minecraft:clay_ball",Count:1b},{Slot:7b,id:"minecraft:stone_stairs",Count:1b},{Slot:8b,id:"minecraft:stone_stairs",Count:1b}]}
execute if score out math matches 7 run data merge block ~ ~-2 ~ {Items:[{Slot:0b,id:"minecraft:prismarine_shard",Count:1b},{Slot:1b,id:"minecraft:redstone",Count:1b},{Slot:2b,id:"minecraft:clay_ball",Count:1b},{Slot:3b,id:"minecraft:clay_ball",Count:1b},{Slot:4b,id:"lock_and_key:key",Count:1b},{Slot:5b,id:"minecraft:iron_ingot",Count:1b},{Slot:6b,id:"minecraft:lapis_lazuli",Count:1b},{Slot:7b,id:"minecraft:emerald",Count:1b},{Slot:8b,id:"minecraft:clay_ball",Count:1b}]}

#execute if score out math matches 3 run data merge block ~ ~-2 ~ {Items:[{Slot:0b,id:"minecraft:stick",Count:1b},{Slot:1b,id:"minecraft:clay_ball",Count:1b},{Slot:2b,id:"minecraft:clay_ball",Count:1b},{Slot:3b,id:"minecraft:diamond",Count:1b},{Slot:4b,id:"lock_and_key:key",Count:1b},{Slot:5b,id:"minecraft:stick",Count:1b},{Slot:6b,id:"minecraft:stick",Count:1b},{Slot:7b,id:"minecraft:clay_ball",Count:1b},{Slot:8b,id:"minecraft:clay_ball",Count:1b}]}
#Itemframe wall above dropper
execute if score #dir maze matches 1 run summon item_frame ~-1 ~3 ~ {Tags:["init","0"], Facing:3b}
execute if score #dir maze matches 1 run summon item_frame ~ ~3 ~ {Tags:["init","1"], Facing:3b}
execute if score #dir maze matches 1 run summon item_frame ~1 ~3 ~ {Tags:["init","2"], Facing:3b}
execute if score #dir maze matches 1 run summon item_frame ~-1 ~2 ~ {Tags:["init","3"], Facing:3b}
execute if score #dir maze matches 1 run summon item_frame ~ ~2 ~ {Tags:["init","4"], Facing:3b}
execute if score #dir maze matches 1 run summon item_frame ~1 ~2 ~ {Tags:["init","5"], Facing:3b}
execute if score #dir maze matches 1 run summon item_frame ~-1 ~1 ~ {Tags:["init","6"], Facing:3b}
execute if score #dir maze matches 1 run summon item_frame ~ ~1 ~ {Tags:["init", "7"], Facing:3b}
execute if score #dir maze matches 1 run summon item_frame ~1 ~1 ~ {Tags:["init","8"], Facing:3b}

execute if score #dir maze matches 2 run summon item_frame ~ ~3 ~-1 {Tags:["init","0"], Facing:4b}
execute if score #dir maze matches 2 run summon item_frame ~ ~3 ~ {Tags:["init","1"], Facing:4b}
execute if score #dir maze matches 2 run summon item_frame ~ ~3 ~1 {Tags:["init","2"], Facing:4b}
execute if score #dir maze matches 2 run summon item_frame ~ ~2 ~-1 {Tags:["init","3"], Facing:4b}
execute if score #dir maze matches 2 run summon item_frame ~ ~2 ~ {Tags:["init","4"], Facing:4b}
execute if score #dir maze matches 2 run summon item_frame ~ ~2 ~1 {Tags:["init","5"], Facing:4b}
execute if score #dir maze matches 2 run summon item_frame ~ ~1 ~-1 {Tags:["init","6"], Facing:4b}
execute if score #dir maze matches 2 run summon item_frame ~ ~1 ~ {Tags:["init", "7"], Facing:4b}
execute if score #dir maze matches 2 run summon item_frame ~ ~1 ~1 {Tags:["init","8"], Facing:4b}

execute if score #dir maze matches 3 run summon item_frame ~1 ~3 ~ {Tags:["init","0"], Facing:2b}
execute if score #dir maze matches 3 run summon item_frame ~ ~3 ~ {Tags:["init","1"], Facing:2b}
execute if score #dir maze matches 3 run summon item_frame ~-1 ~3 ~ {Tags:["init","2"], Facing:2b}
execute if score #dir maze matches 3 run summon item_frame ~1 ~2 ~ {Tags:["init","3"], Facing:2b}
execute if score #dir maze matches 3 run summon item_frame ~ ~2 ~ {Tags:["init","4"], Facing:2b}
execute if score #dir maze matches 3 run summon item_frame ~-1 ~2 ~ {Tags:["init","5"], Facing:2b}
execute if score #dir maze matches 3 run summon item_frame ~1 ~1 ~ {Tags:["init","6"], Facing:2b}
execute if score #dir maze matches 3 run summon item_frame ~ ~1 ~ {Tags:["init","7"], Facing:2b}
execute if score #dir maze matches 3 run summon item_frame ~-1 ~1 ~ {Tags:["init","8"], Facing:2b}

execute if score #dir maze matches 4 run summon item_frame ~ ~3 ~1 {Tags:["init","0"], Facing:5b}
execute if score #dir maze matches 4 run summon item_frame ~ ~3 ~ {Tags:["init","1"], Facing:5b}
execute if score #dir maze matches 4 run summon item_frame ~ ~3 ~-1 {Tags:["init","2"], Facing:5b}
execute if score #dir maze matches 4 run summon item_frame ~ ~2 ~1 {Tags:["init","3"], Facing:5b}
execute if score #dir maze matches 4 run summon item_frame ~ ~2 ~ {Tags:["init","4"], Facing:5b}
execute if score #dir maze matches 4 run summon item_frame ~ ~2 ~-1 {Tags:["init","5"], Facing:5b}
execute if score #dir maze matches 4 run summon item_frame ~ ~1 ~1 {Tags:["init","6"], Facing:5b}
execute if score #dir maze matches 4 run summon item_frame ~ ~1 ~ {Tags:["init","7"], Facing:5b}
execute if score #dir maze matches 4 run summon item_frame ~ ~1 ~-1 {Tags:["init","8"], Facing:5b}

data modify entity @e[type=item_frame,tag=init,tag=0,limit=1] Item set from block ~ ~-2 ~ Items[0]
data modify entity @e[type=item_frame,tag=init,tag=1,limit=1] Item set from block ~ ~-2 ~ Items[1]
data modify entity @e[type=item_frame,tag=init,tag=2,limit=1] Item set from block ~ ~-2 ~ Items[2]
data modify entity @e[type=item_frame,tag=init,tag=3,limit=1] Item set from block ~ ~-2 ~ Items[3]
data modify entity @e[type=item_frame,tag=init,tag=4,limit=1] Item set from block ~ ~-2 ~ Items[4]
data modify entity @e[type=item_frame,tag=init,tag=5,limit=1] Item set from block ~ ~-2 ~ Items[5]
data modify entity @e[type=item_frame,tag=init,tag=6,limit=1] Item set from block ~ ~-2 ~ Items[6]
data modify entity @e[type=item_frame,tag=init,tag=7,limit=1] Item set from block ~ ~-2 ~ Items[7]
data modify entity @e[type=item_frame,tag=init,tag=8,limit=1] Item set from block ~ ~-2 ~ Items[8]

tag @e[type=item_frame,tag=init,nbt={Item:{id:"minecraft:clay_ball",Count:1b}}] add empty
execute as @e[type=item_frame,tag=init,nbt={Item:{id:"minecraft:clay_ball",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:air",Count:1b}}

execute if entity @e[type=item_frame,tag=init,tag=8,tag=empty,limit=1] run data remove block ~ ~-2 ~ Items[8]
execute if entity @e[type=item_frame,tag=init,tag=7,tag=empty,limit=1] run data remove block ~ ~-2 ~ Items[7]
execute if entity @e[type=item_frame,tag=init,tag=6,tag=empty,limit=1] run data remove block ~ ~-2 ~ Items[6]
execute if entity @e[type=item_frame,tag=init,tag=5,tag=empty,limit=1] run data remove block ~ ~-2 ~ Items[5]
execute if entity @e[type=item_frame,tag=init,tag=4,tag=empty,limit=1] run data remove block ~ ~-2 ~ Items[4]
execute if entity @e[type=item_frame,tag=init,tag=3,tag=empty,limit=1] run data remove block ~ ~-2 ~ Items[3]
execute if entity @e[type=item_frame,tag=init,tag=2,tag=empty,limit=1] run data remove block ~ ~-2 ~ Items[2]
execute if entity @e[type=item_frame,tag=init,tag=1,tag=empty,limit=1] run data remove block ~ ~-2 ~ Items[1]
execute if entity @e[type=item_frame,tag=init,tag=0,tag=empty,limit=1] run data remove block ~ ~-2 ~ Items[0]

execute as @e[type=item_frame,tag=init] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item_frame,tag=init] at @s run function maze:maze/shrine/createitemcopy
tag @e[type=item_frame,tag=init] add mazeItem
tag @e[type=item_frame,tag=init] remove init