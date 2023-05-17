# 主动、被动刷新快捷栏
scoreboard players add @s[gamemode=!creative] refresh_inv_cd 1
execute if score $info_refresh_inv debug matches 1 as @s[tag=refresh_inventory,gamemode=!creative] run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 2
execute as @s[tag=refresh_inventory,gamemode=!creative] run function class:modules/inventory/run
execute if score @s refresh_inv_cd matches 30.. run function class:modules/inventory/run
tag @s remove refresh_inventory