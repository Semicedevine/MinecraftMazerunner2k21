#Unfortunately we have to run it four times instead since there's no way to check for a dropper
#execute if block ~-1 ~ ~ dropper positioned ~1 ~ ~ run function maze:game/check/checkdropper
#execute if block ~ ~ ~-1 dropper positioned ~ ~ ~1 run function maze:game/check/checkdropper
#execute if block ~1 ~ ~ dropper positioned ~-1 ~ ~ run function maze:game/check/checkdropper
#execute if block ~ ~ ~1 dropper positioned ~ ~ ~-1 run function maze:game/check/checkdropper

#setblock ^1 ^ ^ orange_wool replace

scoreboard players set #a maze 0

execute positioned ~1 ~ ~ unless block ~ ~ ~ air run function maze:game/check/checkdropper
execute positioned ~ ~ ~1 unless block ~ ~ ~ air run function maze:game/check/checkdropper
execute positioned ~-1 ~ ~ unless block ~ ~ ~ air run function maze:game/check/checkdropper
execute positioned ~ ~ ~-1 unless block ~ ~ ~ air run function maze:game/check/checkdropper
#execute positioned ~ ~ ~ unless block ~ ~ ~ air run function maze:game/check/checkdropper

#execute positioned ~ ~ ~ run setblock ~ ~-1 ~ blue_wool

execute if score #a maze matches 0 run tellraw @p "Authentication failed"
execute if score #a maze matches 1 run tellraw @p "Station disabled"
execute if score #a maze matches 1 run scoreboard players remove #currentShrines maze 1
execute if score #a maze matches 1 run function maze:game/updatesign

execute if score #a maze matches 1 run setblock ~ ~ ~ air replace

#execute if score #a maze matches 1 positioned ~1 ~ ~ if block ~ ~ ~ oak_sign run setblock ~ ~ ~ air replace
#execute if score #a maze matches 1 positioned ~ ~ ~1 if block ~ ~ ~ oak_sign run setblock ~ ~ ~ air replace
#execute if score #a maze matches 1 positioned ~-1 ~ ~ if block ~ ~ ~ oak_sign run setblock ~ ~ ~ air replace
#execute if score #a maze matches 1 positioned ~ ~ ~-1 if block ~ ~ ~ oak_sign run setblock ~ ~ ~ air replace

execute if score #currentShrines maze matches 0 run function maze:game/gamewon