summon item ~ ~ ~ {Age:-32768,Tags:["mazeItem","init"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,tag=init,limit=1] Item set from entity @s Item
tag @e[type=item,tag=init] remove init