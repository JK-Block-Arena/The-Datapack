# 确认传送门编号
# 训练场
execute as @s[x=8,y=236,z=-4,distance=..10] run scoreboard players set #portal mem 1
# 战场
execute as @s[x=8,y=236,z=21,distance=..10] run scoreboard players set #portal mem 2
# 离开训练场
execute as @s[x=1043,y=98,z=1085,distance=..20] run scoreboard players set #portal mem 3

# 回到主城
execute as @s[x=-5,y=13,z=9,distance=..8] run scoreboard players set #portal mem 100
# 创作者大厅
execute as @s[x=12,y=12,z=17,distance=..5] run scoreboard players set #portal mem 101
# 锻造&尾迹大厅
execute as @s[x=3,y=12,z=17,distance=..5] run scoreboard players set #portal mem 102
# 赞助者大厅
execute as @s[x=12,y=12,z=2,distance=..5] run scoreboard players set #portal mem 103
# 1v1
execute as @s[x=3,y=12,z=2,distance=..5] run scoreboard players set #portal mem 104

# 触发
execute if score #portal mem matches 1 run function pvp:state/lobby/in/enter_train
execute if score #portal mem matches 2 store result score #player_all mem if entity @a[scores={state=1..2,team=1..4}]
execute if score #portal mem matches 2 if score #player_all mem matches ..15 run function pvp:state/lobby/in/prepared
execute if score #portal mem matches 2 if score #player_all mem matches 16.. run function pvp:state/lobby/back
execute if score #portal mem matches 3 run function pvp:state/train/leave
execute if score #portal mem matches 100 run tp @s 1.5 235.5 8.5 270 0
execute if score #portal mem matches 101 run tp @s -878.5 47.0 7.5 90 0
execute if score #portal mem matches 102 run tp @s 28.5 11 9.5 270 0
execute if score #portal mem matches 103 run function pvp:state/lobby/in/donator_hall
execute if score #portal mem matches 104 run function pvp:state/lobby/in/prepared_v1

# 特效
execute at @s run playsound minecraft:block.portal.travel block @s ~ ~ ~ 0.3
effect give @s blindness 1 0 true