scoreboard players add @s lives 1
scoreboard players operation @s lives %= 2 const

execute if score @s lives matches 0 if score @s maze matches 1 run fill ~-1 ~11 ~ ~1 ~ ~ air replace
execute if score @s lives matches 0 if score @s maze matches 2 run fill ~ ~11 ~-1 ~ ~ ~1 air replace
execute if score @s lives matches 0 if score @s maze matches 3 run fill ~-1 ~11 ~ ~1 ~ ~ air replace
execute if score @s lives matches 0 if score @s maze matches 4 run fill ~ ~11 ~-1 ~ ~ ~1 air replace

execute if score @s lives matches 1 if score @s maze matches 1 run fill ~-1 ~11 ~ ~1 ~ ~ nether_bricks replace
execute if score @s lives matches 1 if score @s maze matches 2 run fill ~ ~11 ~-1 ~ ~ ~1 nether_bricks replace
execute if score @s lives matches 1 if score @s maze matches 3 run fill ~-1 ~11 ~ ~1 ~ ~ nether_bricks replace
execute if score @s lives matches 1 if score @s maze matches 4 run fill ~ ~11 ~-1 ~ ~ ~1 nether_bricks replace

#execute if score @s maze matches 1 run say 1
#execute if score @s maze matches 2 run say 2
#execute if score @s maze matches 3 run say 3
#execute if score @s maze matches 4 run say 4