scoreboard players add #match_mode mem 1
execute if score #match_mode mem matches 2.. run scoreboard players reset #match_mode mem

execute if score #match_mode mem matches 1 run tellraw @a {"text": "\n友谊赛模式已开启！\n","color": "green","bold":true}
execute if score #match_mode mem matches 1 as @a[distance=1..] run function debug:jkuse/1_back_spawn
execute if score #match_mode mem matches 1 run tag @e[tag=enable_class] remove banned_class
execute if score #match_mode mem matches 1 run fill 9 236 19 7 238 19 minecraft:white_stained_glass
execute if score #match_mode mem matches 1 run fill -2 235 9 -2 237 7 minecraft:white_stained_glass
execute if score #match_mode mem matches 1 run fill 7 236 -5 9 238 -5 minecraft:white_stained_glass
execute if score #match_mode mem matches 1 run fill 15 235 1 17 236 -1 minecraft:white_stained_glass replace air
execute if score #match_mode mem matches 1 run scoreboard objectives setdisplay sidebar.team.white teamKill
execute if score #match_mode mem matches 1 run scoreboard players set $balance_team debug 1

execute unless score #match_mode mem matches 1 run tellraw @a {"text": "\n友谊赛模式已关闭！\n","color": "red","bold":true}
execute unless score #match_mode mem matches 1 unless score #class_switch mem matches 1 run function pvp:class/ban
execute unless score #match_mode mem matches 1 if score #class_switch mem matches 1 run tag @e[tag=enable_class] remove banned_class
execute unless score #match_mode mem matches 1 run tag @e[limit=1,tag=class8] add banned_class
execute unless score #match_mode mem matches 1 run tp @a @s
execute unless score #match_mode mem matches 1 run fill 9 236 19 7 238 19 air
execute unless score #match_mode mem matches 1 run fill -2 235 9 -2 237 7 air
execute unless score #match_mode mem matches 1 run fill 7 236 -5 9 238 -5 air
execute unless score #match_mode mem matches 1 run fill 15 235 1 17 236 -1 air replace white_stained_glass
execute unless score #match_mode mem matches 1 run fill 0 237 0 16 237 16 air
execute unless score #match_mode mem matches 1 run scoreboard objectives setdisplay sidebar.team.white
execute unless score #match_mode mem matches 1 run scoreboard players set $balance_team debug 0

scoreboard players reset #match_time mem
scoreboard players reset #match_type mem
scoreboard players reset #count teamKill
tag @e[tag=enable_class] remove match_v1_red
tag @e[tag=enable_class] remove match_v1_blue