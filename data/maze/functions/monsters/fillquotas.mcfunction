execute store result score #a maze if entity @e[type=creeper,tag=mazeMob]
execute store result score #b maze if entity @e[type=eyesinthedarkness:eyes,tag=mazeMob]

#tellraw @p ["",{"text":"","color":"gold"},{"score":{"name":"#b","objective":"maze"}}]

execute if score #a maze < #creepers maze run summon creeper ~ ~255 ~ {DeathLootTable:"empty",PersistenceRequired:1b,ExplosionRadius:1b,Fuse:20,Tags:["mazeMob","init"],Passengers:[{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["mazeMob","creeper"]}]}
execute if score #b maze < #eyes maze run summon eyesinthedarkness:eyes ~ ~255 ~ {Tags:["mazeMob","init"],PersistenceRequired:1b,Attributes:[{Base: 2d, Name: "minecraft:generic.movement_speed"}]}

execute as @e[tag=init] run function maze:monsters/spreadmonster
tag @e[tag=init] remove init

#execute store result score #a maze if entity @e[type=item,tag=food]
#execute if score #a maze < #food maze run function maze:monsters/spawnfood