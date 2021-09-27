playsound entity.cat.death ambient @a ~ ~ ~ 3 1
execute as @a[distance=..9] run function maze:monsters/markplayer
scoreboard players set @s maze -50