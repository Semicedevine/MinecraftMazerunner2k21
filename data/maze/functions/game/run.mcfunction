execute as @a[tag=play] run scoreboard players set @s lives 1
execute as @a[tag=!play] run scoreboard players set @s lives 0
execute as @a[tag=play] run effect give @s instant_health 1 3 true
execute as @a[tag=play] run effect give @s saturation 1 3 true
execute as @a[tag=play] run gamemode adventure
execute as @a[tag=play] run clear @s
execute as @a[tag=play] run give @s torch{alternate:1b,display:{Name:'{"text":"Torch","color":"red","italic":false}',Lore:['{"text":"It\'s just a torch...","color":"dark_gray"}']}} 1
execute as @a[tag=play] run tp @s @e[type=armor_stand,tag=play,limit=1]
execute as @a[tag=play] run scoreboard players set @s light 50000
execute as @a[tag=play] run give @s cooked_beef{display:{Name:'{"text":"Steak","color":"yellow","italic":false}'}} 6
execute as @a[tag=play] run give @s bread{display:{Name:'{"text":"Bread","color":"yellow","italic":false}'}} 12
tag @a[tag=play] remove play

execute positioned ~ ~-2 ~ run function maze:game/create

scoreboard players set #gameRunning maze 1