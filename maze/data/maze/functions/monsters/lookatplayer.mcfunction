execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,type=player] run function maze:monsters/confuseplayer
scoreboard players remove @s look 1
execute if score @s look matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function maze:monsters/lookatplayer