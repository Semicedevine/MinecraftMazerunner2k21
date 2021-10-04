execute as @a[distance=..5] run function maze:monsters/markplayer
execute as @a[distance=..2.5] run effect give @s instant_damage
particle minecraft:explosion ~ ~ ~ 2 2 2 1 100
playsound entity.generic.explode ambient @a ~ ~ ~ 1 1
kill @s