# 1：友谊赛1v1地图
execute if score $map_v1 mem matches 1 run tag @e[tag=map_marker,x=20056,y=100,z=20053,distance=..300] add select_point_v1
# 2：新1v1地图
execute if score $map_v1 mem matches 2 run tag @e[tag=map_marker,x=20056,y=100,z=20053,distance=..300] add select_point_v1

# 选择 40 格范围
execute as @s[team=red_v1] as @e[tag=select_point_v1] at @s unless entity @e[team=!red_v1,distance=..40,type=#modules:living] run tag @s add random_point_v1
execute as @s[team=blue_v1] as @e[tag=select_point_v1] at @s unless entity @e[team=!blue_v1,distance=..40,type=#modules:living] run tag @s add random_point_v1

# 若失败则选择 20 格范围
execute unless entity @e[tag=random_point_v1] as @s[team=red_v1] as @e[tag=select_point_v1] at @s unless entity @e[team=!red_v1,distance=..20,type=#modules:living] run tag @s add random_point_v1
execute unless entity @e[tag=random_point_v1] as @s[team=blue_v1] as @e[tag=select_point_v1] at @s unless entity @e[team=!blue_v1,distance=..20,type=#modules:living] run tag @s add random_point_v1

# 若失败则全选
execute unless entity @e[tag=random_point_v1] run tag @e[tag=select_point_v1] add random_point_v1

# 传送
tp @s @e[limit=1,sort=random,tag=random_point_v1]
function modules:anti_stuck/sub/player

# 清理 Tag
tag @e[tag=map_marker] remove select_point_v1
tag @e[tag=map_marker] remove random_point_v1