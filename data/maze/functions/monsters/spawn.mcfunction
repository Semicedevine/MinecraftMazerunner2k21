summon geode:coalgeode ~ ~ ~ {Tags:["mazeMob","statue"],Silent:true,Attributes:[{Base: 0.4d, Name: "minecraft:generic.movement_speed"},{Name:generic.follow_range,Base:40},{Name:generic.attack_damage,Base:4}]}
summon geode:redstonegeode ~ ~ ~ {Tags:["mazeMob","statue"],Silent:true,Attributes:[{Base: 0.4d, Name: "minecraft:generic.movement_speed"},{Name:generic.follow_range,Base:40},{Name:generic.attack_damage,Base:4}]}
#summon geode:emeraldgeode ~ ~ ~ {Tags:["mazeMob","statue"],Silent:true,Attributes:[{Base: 0.4d, Name: "minecraft:generic.movement_speed"},{Name:generic.follow_range,Base:40},{Name:generic.attack_damage,Base:4}]}

summon undergarden:nargoyle ~ ~ ~ {Tags:["mazeMob"],Attributes:[{Name:generic.movement_speed,Base:0.06}]}
#summon undergarden:nargoyle ~ ~ ~ {Tags:["mazeMob"],Attributes:[{Name:generic.movement_speed,Base:0.11}]}
#summon undergarden:nargoyle ~ ~ ~ {Tags:["mazeMob"],Attributes:[{Name:generic.movement_speed,Base:0.11}]}
#scale set pehkui:base 2 @e[type=undergarden:nargoyle,tag=mazeMob]

summon undergarden:rotwalker ~ ~ ~ {Tags:["mazeMob"],Attributes:[{Name:generic.movement_speed,Base:0.23}]}
#summon undergarden:rotwalker ~ ~ ~ {Tags:["mazeMob"],Attributes:[{Name:generic.movement_speed,Base:0.3}]}
scale set pehkui:base 1.5 @e[type=undergarden:rotwalker,tag=mazeMob]

summon undergarden:rotbeast ~ ~ ~ {Tags:["mazeMob"],Attributes:[{Base: 0.2d, Name: "minecraft:generic.movement_speed"}]}

summon undergarden:forgotten_guardian ~ ~ ~ {Tags:["mazeMob"],Attributes:[{Name:generic.movement_speed,Base:0}]}

summon undergarden:muncher ~ ~ ~ {Tags:["mazeMob"],Attributes:[{Name:generic.follow_range,Base:3}]}

summon undergarden:scintling ~ ~ ~ {Tags:["mazeMob"],Attributes:[{Base: 0.05d, Name: "minecraft:generic.movement_speed"}]}

summon mowziesmobs:lantern ~ ~13 ~ {Tags:["mazeMob"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:80,ShowParticles:0b}]}
summon mowziesmobs:lantern ~ ~13 ~ {Tags:["mazeMob"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:80,ShowParticles:0b}]}

summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:20,Tags:["mazeMob"],Passengers:[{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["mazeMob","creeper"]}]}
summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:20,Tags:["mazeMob"],Passengers:[{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["mazeMob","creeper"]}]}
#summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:20,Tags:["mazeMob"],Passengers:[{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["mazeMob","creeper"]}]}

summon eyesinthedarkness:eyes ~ ~ ~ {Tags:["mazeMob"],Attributes:[{Base: 2d, Name: "minecraft:generic.movement_speed"}]}
summon eyesinthedarkness:eyes ~ ~ ~ {Tags:["mazeMob"],Attributes:[{Base: 2d, Name: "minecraft:generic.movement_speed"}]}
#summon eyesinthedarkness:eyes ~ ~ ~ {Tags:["mazeMob"],Attributes:[{Base: 2d, Name: "minecraft:generic.movement_speed"}]}

#summon cat ~ ~ ~ {Tags:["mazeMob","cat"]}

#summon froglins:froglin ~ ~ ~ {Tags:["mazeMob"],Attributes:[{Name:generic.follow_range,Base:14},{Name:generic.movement_speed,Base:0.24},{Base: 0.4d, Name: "forge:entity_gravity"}]}
#scale set pehkui:base 2 @e[type=froglins:froglin,tag=mazeMob]

execute as @a run team join humans
execute as @e[tag=mazeMob] run team join monsters

execute as @e[tag=mazeMob,type=!eyesinthedarkness:eyes] run data merge entity @s {Invulnerable:1b}
execute as @e[tag=mazeMob] run data merge entity @s {PersistenceRequired:1b}
execute as @e[tag=mazeMob] run data merge entity @s {DeathLootTable:"empty"}
execute as @e[tag=mazeMob] run function maze:monsters/spreadmonster