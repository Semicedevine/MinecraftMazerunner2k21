kill @e[type=armor_stand,name=random]
scoreboard objectives add maze dummy

function maze:config/settings

summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"random\"}",Marker:1,Invisible:1,NoGravity:1,Invulnerable:1,PersistenceRequired:1}
summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"random\"}",Marker:1,Invisible:1,NoGravity:1,Invulnerable:1,PersistenceRequired:1}
execute at @e[type=armor_stand,name=random] run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"random\"}",Marker:1,Invisible:1,NoGravity:1,Invulnerable:1,PersistenceRequired:1}

scoreboard objectives add const dummy
scoreboard players set 0 const 0
scoreboard players set 1 const 1
scoreboard players set 2 const 2
scoreboard players set 3 const 3
scoreboard players set 4 const 4
scoreboard players set 20 const 20

scoreboard objectives add look dummy
scoreboard objectives add look2 dummy
scoreboard objectives add lives dummy
scoreboard objectives add light dummy
scoreboard objectives add light2 dummy
scoreboard objectives add dead deathCount

#rng
scoreboard objectives add math dummy
scoreboard objectives add constant dummy
scoreboard players set #2 constant 2
scoreboard players set #1000 constant 1000
scoreboard players set #10000 constant 10000
scoreboard players set #lcg constant 1103515245

execute unless score #lcg math matches ..0 unless score #lcg math matches 1.. run function maze:rng/zprivate/uuid_reset

team add monsters
team add humans

team modify monsters friendlyFire false

say "Maze Loaded"