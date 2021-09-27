scoreboard players set @s maze 0
effect give @s invisibility 1 1 true
playsound entity.enderman.teleport ambient @a ~ ~1 ~ 1 0.9
particle minecraft:warped_spore ~ ~1 ~ 0 0 0 0.1 100 normal
function maze:monsters/spreadmonster

#/particle minecraft:campfire_signal_smoke ~2 ~1 ~ 0 0 0 0.1 100 normal

#particle minecraft:spit ~2 ~1 ~ 0 0 0 0.3 1000 normal