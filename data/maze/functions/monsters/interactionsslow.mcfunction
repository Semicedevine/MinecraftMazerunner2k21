#effect give @a[scores={lives=1..}] blindness 10 1 true
function maze:monsters/fillquotas

execute if score #fakeWallsEnabled maze matches 1 as @e[type=armor_stand,tag=fakeWall] at @s if score @s look < @s look2 run scoreboard players add @s look 1
execute if score #fakeWallsEnabled maze matches 1 as @e[type=armor_stand,tag=fakeWall] at @s if score @s look >= @s look2 run function maze:monsters/fakewall/check

execute as @e[type=mowziesmobs:lantern] store result score @s maze run data get entity @s Pos[1]
execute as @e[type=mowziesmobs:lantern] if score @s maze >= #ceilingY maze at @s run tp ~ ~-0.5 ~