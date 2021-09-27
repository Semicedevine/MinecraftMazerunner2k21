scoreboard players set in math 1
scoreboard players set in1 math 3

function maze:rng/range

summon item ~ ~ ~ {Tags:["mazeItem","food","init"],Item:{id:"minecraft:stone",Count:1b}}

execute if score out math matches 1 run data merge entity @e[type=item,tag=init,limit=1] {Item:{id:"minecraft:cooked_beef",Count:1b,tag:{display:{Name:'{"text":"Steak","color":"yellow","italic":false}'}}}}
execute if score out math matches 2 run data merge entity @e[type=item,tag=init,limit=1] {Item:{id:"minecraft:bread",Count:1b,tag:{display:{Name:'{"text":"Bread","color":"yellow","italic":false}'}}}}
execute if score out math matches 3 run data merge entity @e[type=item,tag=init,limit=1] {Item:{id:"minecraft:baked_potato",Count:1b,tag:{display:{Name:'{"text":"Potato","color":"yellow","italic":false}'}}}}
execute if score out math matches 4 run data merge entity @e[type=item,tag=init,limit=1] {Item:{id:"minecraft:carrot",Count:1b,tag:{display:{Name:'{"text":"Carrot","color":"yellow","italic":false}'}}}}

execute as @e[type=item,tag=init,limit=1] run function maze:monsters/spreadmonster

data modify entity @e[type=item,tag=init,limit=1] Item.tag.display.Lore set value ['{"text":"food...","color":"gray"}']
tag @e[type=item,tag=init] remove init