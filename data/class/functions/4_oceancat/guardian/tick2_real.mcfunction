# 标记会造成触发的实体
tag @e[type=#modules:living,type=!player] add guardian_trigger
tag @a[gamemode=adventure] add guardian_trigger

# 触发
execute as @s[team=lobby] if entity @e[team=!lobby,tag=guardian_trigger,distance=..4] run function class:4_oceancat/guardian/trigger
execute as @s[team=red] if entity @e[team=!red,tag=guardian_trigger,distance=..4] run function class:4_oceancat/guardian/trigger
execute as @s[team=blue] if entity @e[team=!blue,tag=guardian_trigger,distance=..4] run function class:4_oceancat/guardian/trigger
execute as @s[team=green] if entity @e[team=!green,tag=guardian_trigger,distance=..4] run function class:4_oceancat/guardian/trigger
execute as @s[team=yellow] if entity @e[team=!yellow,tag=guardian_trigger,distance=..4] run function class:4_oceancat/guardian/trigger

# 看向最近的玩家
execute facing entity @p[gamemode=adventure] eyes run tp @s ~ ~ ~ ~ ~

tag @e remove guardian_trigger