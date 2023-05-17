# 红色
execute positioned 11100 37 11083 run tp @s[distance=..2] 11043 38 11008
execute positioned 11046 37 11007 run tp @s[distance=..2] 11099 38 11086
# 黄色
execute positioned 11099 37 11047 run tp @s[distance=..2] 11003 35 11085
execute positioned 11002 35 11080 run tp @s[distance=..2] 11096 38 11048
# 蓝色
execute positioned 11095 36 11010 run tp @s[distance=..2] 11006 35 11048
execute positioned 11004 34 11051 run tp @s[distance=..2] 11097 38 11008
# 绿色
execute positioned 11084 36 11093 run tp @s[distance=..2] 11003 35 11012
execute positioned 11003 34 11010 run tp @s[distance=..2] 11086 38 11093
# 特效（传送后）
execute as @s run function modules:map/end_portal/special
effect give @s nausea 4 3 true