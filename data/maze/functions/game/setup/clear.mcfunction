scoreboard players operation #length2 maze = #length maze

execute positioned ~ ~2 ~ run function maze:game/setup/length

#ALL ITEMS FROM PREVIOUS GAMES WILL BE DELETED***
scoreboard players set #gameRunning maze 0
tp @e[tag=mazeMob] ~ ~-255 ~
kill @e[tag=mazeItem]
kill @e[tag=mazeMob]
kill @e[tag=mazeStructure]

#DELETE ALL ITEMS TO AVOID EXTRANEOUS
kill @e[type=item]