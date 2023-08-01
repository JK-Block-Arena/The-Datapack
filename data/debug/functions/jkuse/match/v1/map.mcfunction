scoreboard players add $map_v1 mem 1
execute if score $map_v1 mem matches 3.. run scoreboard players set $map_v1 mem 1
# 1v1地图
execute if score $map_v1 mem matches 1 run forceload add 20014 20095 20098 20011
execute if score $map_v1 mem matches 2 run forceload add 100031 100036 100107 100112
tellraw @a {"text": "※  已切换1v1地图！","color": "light_purple"}