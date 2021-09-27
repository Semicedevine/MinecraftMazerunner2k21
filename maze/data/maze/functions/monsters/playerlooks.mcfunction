execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,type=undergarden:forgotten_guardian] run scoreboard players add @s maze 1
execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,tag=statue] run data modify entity @s NoAI set value true
execute if predicate maze:maintorch run function maze:monsters/lookstatues
execute if predicate maze:offtorch unless predicate maze:maintorch run function maze:monsters/lookstatues

#playsound weeping_angels:angel_seen player @p ~ ~ ~ 0.1 1
#execute at @s run particle flame ~ ~ ~ 0 0 0 1 10 normal
#run function maze:monsters/teleportguardian
#execute run particle crit ~ ~ ~ 0 0 0 0 1 normal

#execute if score @s look matches ..4 if block ~ ~ ~ campfire run scoreboard players set @s light2 1

scoreboard players add @s look 1
execute if score @s look matches ..20 if block ~ ~ ~ air positioned ^ ^ ^0.5 run function maze:monsters/playerlooks