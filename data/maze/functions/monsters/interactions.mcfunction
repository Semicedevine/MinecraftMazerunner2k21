#execute as @e[type=weeping_angels:weeping_angel] unless predicate maze:playersprinting run data merge entity @s {Attributes:[{Base: 0.0d, Name: "minecraft:generic.movement_speed"}]}
#execute as @e[type=weeping_angels:weeping_angel] if predicate maze:playersprinting run data merge entity @s {Attributes:[{Base: 0.8d, Name: "minecraft:generic.movement_speed"}]}
#execute as @e[type=weeping_angels:weeping_angel] if predicate maze:playersprinting run say "Weq"
#execute as @a at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=!player] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] as @e[type=undergarden:forgotten_guardian,sort=nearest,limit=1] at @s run function maze:monsters/teleportguardian
#execute as @a[advancements={maze:hitbycreeper=true}] run function maze:monsters/markplayer
#execute as @a[advancements={maze:hitbycreeper=true}] run advancement revoke @s only maze:hitbycreeper

scoreboard players add ticks maze 1
execute if score ticks maze >= 20 const run function maze:monsters/interactionsslow
execute if score ticks maze >= 20 const run scoreboard players set ticks maze 0

execute as @e[type=undergarden:nargoyle,tag=mazeMob] unless predicate maze:playernotsprinting run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:24}]}
execute as @e[type=undergarden:nargoyle,tag=mazeMob] unless predicate maze:playerbadomen if predicate maze:playernotsprinting run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:8}]}
execute as @e[type=undergarden:nargoyle,tag=mazeMob] at @s if predicate maze:0.005chance run playsound undergarden:entity.nargoyle_hurt ambient @a ~ ~ ~ 0.5 0.7
execute as @e[type=undergarden:nargoyle,tag=mazeMob] if predicate maze:playersprinting run scoreboard players add @s maze 1
execute as @e[type=undergarden:nargoyle,tag=mazeMob] at @s if score @s maze >= 20 const run playsound undergarden:entity.nargoyle_attack ambient @a ~ ~ ~ 0.5 1
execute as @e[type=undergarden:nargoyle,tag=mazeMob] if score @s maze >= 20 const run scoreboard players set @s maze 0

execute as @e[type=undergarden:rotwalker,tag=mazeMob] unless predicate maze:playernotsprinting run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:20}]}
execute as @e[type=undergarden:rotwalker,tag=mazeMob] unless predicate maze:playerbadomen run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:20}]}
execute as @e[type=undergarden:rotwalker,tag=mazeMob] unless predicate maze:playersneaking run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:12}]}
execute as @e[type=undergarden:rotwalker,tag=mazeMob] unless predicate maze:playerbadomen if predicate maze:playersneaking run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:4}]}

execute as @e[type=undergarden:rotbeast,tag=mazeMob] unless predicate maze:playerbadomen if predicate maze:playernotsprinting run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:6}]}
execute as @e[type=undergarden:rotbeast,tag=mazeMob] unless predicate maze:playernotsprinting run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:10}]}
execute as @e[type=undergarden:rotbeast,tag=mazeMob] unless predicate maze:playerbadomen if predicate maze:playersneaking run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:4}]}
execute as @e[type=undergarden:rotbeast,tag=mazeMob] if predicate maze:player run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:10}]}
execute as @e[type=undergarden:rotbeast,tag=mazeMob] if predicate maze:player run scoreboard players add @s maze 1
#execute as @e[type=undergarden:rotbeast,tag=mazeMob] unless predicate maze:player run scoreboard players set @s maze 0
execute as @e[type=undergarden:rotbeast,tag=mazeMob,scores={maze=1}] at @s run playsound undergarden:entity.rotbeast_living ambient @a ~ ~ ~ 1 1.8
execute as @e[type=undergarden:rotbeast,tag=mazeMob,scores={maze=60}] at @s run playsound undergarden:entity.rotbeast_death ambient @a ~ ~ ~ 2 0.6
execute as @e[type=undergarden:rotbeast,tag=mazeMob,scores={maze=..59}] run data merge entity @s {Attributes:[{Name:generic.movement_speed,Base:0.19}]}
execute as @e[type=undergarden:rotbeast,tag=mazeMob,scores={maze=60..}] run data merge entity @s {Attributes:[{Name:generic.movement_speed,Base:0.4}]}
execute as @e[type=undergarden:rotbeast,tag=mazeMob,scores={maze=120..}] run scoreboard players set @s maze -40

execute as @e[type=froglins:froglin,tag=mazeMob] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:14}]}
execute as @e[type=froglins:froglin,tag=mazeMob] if predicate maze:player unless predicate maze:playermaintorch unless predicate maze:playerofftorch run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0}]}
execute as @e[type=froglins:froglin,tag=mazeMob,tag=!clone] if predicate maze:player run scoreboard players add @s maze 1
#execute as @e[type=froglins:froglin,tag=mazeMob,tag=!clone] if score @s maze matches 40 store result score @s look run execute if entity @e[type=cat,tag=ghost,distance=..6]
execute as @e[type=froglins:froglin,tag=mazeMob,tag=!clone] if score @s maze matches 20 unless score @s look matches 1.. at @s run summon cat ~ ~ ~ {Tags:["mazeMob","ghost"],DeathLootTable:"empty",Silent:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute as @e[type=froglins:froglin,tag=mazeMob,tag=!clone] if score @s maze matches 60.. run scoreboard players set @s maze 0

execute as @e[type=cat,tag=ghost] run scoreboard players add @s maze 1
execute as @e[type=cat,tag=ghost] if score @s maze matches 10 at @s run summon froglins:froglin ~ ~ ~ {Tags:["mazeMob","clone","init"],DeathLootTable:"empty",Invulnerable:1b,Attributes:[{Name:generic.follow_range,Base:14},{Name:generic.movement_speed,Base:0.24},{Base: 0.4d, Name: "forge:entity_gravity"}]}
execute as @e[type=froglins:froglin, tag=init] run team join monsters
tag @e[type=froglins:froglin, tag=init] remove init
execute as @e[type=cat,tag=ghost] if score @s maze matches 10 run tp 0 255 0
execute as @e[type=cat,tag=ghost] if score @s maze matches 10 run kill @s

execute as @e[type=froglins:froglin,tag=mazeMob,tag=clone] run scoreboard players add @s maze 1
execute as @e[type=froglins:froglin,tag=mazeMob,tag=clone] if score @s maze matches 120.. at @s unless entity @a[distance=..6] run tag @s add dead
execute as @e[type=froglins:froglin,tag=mazeMob,tag=clone,tag=dead] run tp 0 255 0
execute as @e[type=froglins:froglin,tag=mazeMob,tag=clone,tag=dead] run kill @s

execute as @e[type=undergarden:forgotten_guardian,tag=mazeMob,scores={maze=100..}] at @s run function maze:monsters/teleportguardian

execute as @e[type=cat,tag=cat] at @s if predicate maze:sprinting unless score @s maze < 0 const run function maze:monsters/scaredcat
execute as @e[type=cat,tag=cat,scores={maze=..0}] run scoreboard players add @s maze 1

execute as @e[tag=mazeMob, tag=statue] run data modify entity @s NoAI set value false
execute as @e[tag=mazeMob, tag=statue] unless predicate maze:playerbadomen if predicate maze:playernotsprinting run data modify entity @s NoAI set value true
execute as @e[tag=mazeMob, tag=statue] if score @s maze matches 1.. run scoreboard players remove @s maze 1
execute as @e[tag=mazeMob, tag=statue] if score @s look matches 1.. run scoreboard players remove @s look 1
execute as @e[tag=mazeMob, tag=statue] if predicate maze:playerbadomen if predicate maze:0.5chance at @s run playsound weeping_angels:stone_scrap ambient @a ~ ~ ~ 0.2 1
execute as @e[tag=mazeMob, tag=statue] if predicate maze:playersprinting unless predicate maze:playerbadomen if predicate maze:0.5chance at @s run playsound weeping_angels:stone_scrap ambient @a ~ ~ ~ 0.2 1

execute as @e[type=mowziesmobs:lantern, tag=mazeMob] at @s if entity @a[distance=..6] run scoreboard players set @s look 12
execute as @e[type=mowziesmobs:lantern, tag=mazeMob] at @s if entity @a[distance=..6] facing entity @a[sort=nearest] eyes run function maze:monsters/lookatplayer

execute as @e[type=armor_stand,tag=creeper,tag=mazeMob] unless predicate maze:creepervehicle at @s run function maze:monsters/creepplosion

execute as @a if predicate maze:poison run function maze:monsters/markplayer

execute as @a run scoreboard players set @s look 0
execute as @a at @s anchored eyes run function maze:monsters/playerlooks
#execute as @a[scores={light2=1,light=..5000}] run scoreboard players add @s light 25
#execute as @a[scores={light2=1}] run scoreboard players set @s light2 0
#
#execute as @a if predicate maze:maintorch run scoreboard players remove @s light 1
#execute as @a if predicate maze:offtorch run scoreboard players remove @s light 1
#
#execute as @a if predicate maze:maintorch run title @s actionbar ["",{"text":"Torch: ","color":"dark_red"},{"score":{"name":"@s","objective":"light"},"color":"dark_red"}]
#execute as @a if predicate maze:offtorch run title @s actionbar ["",{"text":"Torch: ","color":"dark_red"},{"score":{"name":"@s","objective":"light"},"color":"dark_red"}]
#
#execute as @a if predicate maze:maintorch if score @s light matches ..0 run replaceitem entity @s weapon.mainhand undergarden:shard_torch
#execute as @a if predicate maze:offtorch if score @s light matches ..0 run replaceitem entity @s weapon.offhand undergarden:shard_torch

#execute as @e[type=item,nbt={Item:{id:"minecraft:torch",tag:{alternate:1b}}}] at @s run give @a torch{alternate:2b,display:{Name:'{"text":"Torch","color":"red","italic":false}',Lore:['{"text":"It\'s just a torch...","color":"dark_gray"}']}} 1
#execute as @e[type=item,nbt={Item:{id:"minecraft:torch",tag:{alternate:2b}}}] at @s run give @a torch{alternate:1b,display:{Name:'{"text":"Torch","color":"red","italic":false}',Lore:['{"text":"It\'s just a torch...","color":"dark_gray"}']}} 1
#execute as @e[type=item,nbt={Item:{id:"minecraft:torch",tag:{alternate:1b}}}] run kill @s
#execute as @e[type=item,nbt={Item:{id:"minecraft:torch",tag:{altercate:2b}}}] run kill @s
#execute as @e[type=item,nbt={Item:{id:"minecraft:torch"}},tag=!dead] at @s run function maze:monsters/restricttorch
#execute as @e[type=item,nbt={Item:{id:"minecraft:torch"}},tag=!dead] run tag @s add dead