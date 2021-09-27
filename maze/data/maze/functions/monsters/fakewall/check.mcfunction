scoreboard players set in math 3
scoreboard players set in1 math 22

function maze:rng/range

scoreboard players operation @s look2 = out math
scoreboard players set @s look 0

execute unless entity @a[distance=..6] if predicate maze:0.1chance run function maze:monsters/fakewall/toggle
#execute if entity @a[distance=..6] run say unable to toggle walls, player nearby