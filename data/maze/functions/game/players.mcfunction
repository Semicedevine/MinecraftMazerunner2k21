execute as @a[scores={music=1}] at @s run playsound undergarden:ambient.spires_ambience player @s
execute as @a[scores={music=960..}] run scoreboard players set @s music 0
execute as @a run scoreboard players add @s music 1

execute as @a[scores={dead=1..}] run gamemode spectator @s
execute as @e[type=player,tag=justDied] run spectate @a[sort=random,limit=1,scores={lives=1..}]
execute as @e[type=player,tag=justDied] run tag @s remove justDied
execute as @a[scores={dead=1..}] run tag @s add justDied
execute as @a[scores={dead=1..}] run scoreboard players remove @s lives 1
execute as @a[scores={dead=1..}] run scoreboard players remove @s dead 1

execute as @a run scoreboard players enable @s spectate
execute as @a[scores={spectate=1..}] run spectate @a[sort=random,limit=1,scores={lives=1..}]
execute as @a[scores={spectate=1..}] run scoreboard players set @s spectate 0

execute as @a run scoreboard players enable @s free
execute as @a[scores={free=1..}] run spectate
execute as @a[scores={free=1..}] run scoreboard players set @s free 0

execute unless entity @a[scores={lives=1..}] run tp @a ~ ~ ~
execute unless entity @a[scores={lives=1..}] run gamemode adventure @a
execute unless entity @a[scores={lives=1..}] run title @a subtitle {"text":"All players dead, better luck next time...","italic":true}
execute unless entity @a[scores={lives=1..}] run title @a title {"text":"Game Over","color":"red","bold":true}
execute unless entity @a[scores={lives=1..}] run scoreboard players set #gameRunning maze 0

execute as @a if score @s lastSaturation < @s saturation run effect give @s bad_omen 1 1 false
execute as @a run scoreboard players operation @s lastSaturation = @s saturation