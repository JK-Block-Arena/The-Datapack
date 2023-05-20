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
# 粒子切换
execute as @s[x=3,y=12,z=17,distance=..5] run scoreboard players set #portal mem 102
# 赞助者大厅
execute as @s[x=12,y=12,z=2,distance=..5] run scoreboard players set #portal mem 103
# 1v1战场准备、进入与离开
execute as @s[x=3,y=12,z=2,distance=..5] run scoreboard players set #portal mem 104
execute as @s[x=2,y=12,z=-27,distance=..5] run scoreboard players set #portal mem 105
execute as @s[x=2,y=12,z=-10,distance=..5] run scoreboard players set #portal mem 100

# 触发
execute if score #portal mem matches 1 run function pvp:state/lobby/in/enter_train
execute if score #portal mem matches 2 run function pvp:state/lobby/in/prepared
execute if score #portal mem matches 3 run function pvp:state/train/leave
execute if score #portal mem matches 100 run tp @s 1.5 235.5 8.5 270 0
execute if score #portal mem matches 101 run tp @s -99.5 237.5 8.5 90 0
execute if score #portal mem matches 102 run tp @s 1.5 235.5 8.5 270 0
execute if score #portal mem matches 103 run tp @s -887.5 38.5 8.5 90 0
execute if score #portal mem matches 104 run tp @s 2.5 11.5 -11.5 180 0
execute if score #portal mem matches 105 run function pvp:state/battle/enter_v1
# 特效
execute at @s run playsound minecraft:block.portal.travel block @s ~ ~ ~ 0.3
effect give @s blindness 1 0 true