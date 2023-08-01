# 防止奇怪方式进入战场
execute as @s[team=!lobby,team=!red,team=!blue,team=!green,team=!yellow,team=!red_v1,team=!blue_v1] run function debug:jkuse/1_back_spawn
# 自杀重置
scoreboard players reset @s suicide

# 强制重新分队
execute if score $balance_team debug matches 0 if score $team_diff mem matches 2.. if score #red mem = #max mem as @s[scores={respawn_time=15},team=red] run function pvp:state/respawn/auto_team
execute if score $balance_team debug matches 0 if score $team_diff mem matches 2.. if score #blue mem = #max mem as @s[scores={respawn_time=15},team=blue] run function pvp:state/respawn/auto_team
execute if score $balance_team debug matches 0 if score $team_diff mem matches 2.. if score #green mem = #max mem as @s[scores={respawn_time=15},team=green] run function pvp:state/respawn/auto_team
execute if score $balance_team debug matches 0 if score $team_diff mem matches 2.. if score #yellow mem = #max mem as @s[scores={respawn_time=15},team=yellow] run function pvp:state/respawn/auto_team

# 状态效果
effect give @s instant_health 1 9 true
effect give @s resistance 1 9 true
effect give @s invisibility 1 9 true
effect give @s blindness 10 9 true
effect give @s night_vision 10 9 true
effect give @s weakness 1 9 true
effect give @s slow_falling 1 9 true

# 重生等待
execute unless score #match_mode mem matches 1 run scoreboard players remove @s respawn_time 1
execute if score #match_mode mem matches 1 run function debug:jkuse/match/class/diff

# 设置生命值
attribute @s[scores={respawn_time=22}] minecraft:generic.max_health base set 01
attribute @s[scores={respawn_time=18}] minecraft:generic.max_health base set 02
attribute @s[scores={respawn_time=17}] minecraft:generic.max_health base set 03
attribute @s[scores={respawn_time=16}] minecraft:generic.max_health base set 04
attribute @s[scores={respawn_time=15}] minecraft:generic.max_health base set 05
attribute @s[scores={respawn_time=14}] minecraft:generic.max_health base set 06
attribute @s[scores={respawn_time=13}] minecraft:generic.max_health base set 07
attribute @s[scores={respawn_time=12}] minecraft:generic.max_health base set 08
attribute @s[scores={respawn_time=11}] minecraft:generic.max_health base set 09
attribute @s[scores={respawn_time=10}] minecraft:generic.max_health base set 10
attribute @s[scores={respawn_time=09}] minecraft:generic.max_health base set 11
attribute @s[scores={respawn_time=08}] minecraft:generic.max_health base set 12
attribute @s[scores={respawn_time=07}] minecraft:generic.max_health base set 13
attribute @s[scores={respawn_time=06}] minecraft:generic.max_health base set 14
attribute @s[scores={respawn_time=05}] minecraft:generic.max_health base set 15
attribute @s[scores={respawn_time=04}] minecraft:generic.max_health base set 16
attribute @s[scores={respawn_time=03}] minecraft:generic.max_health base set 17
attribute @s[scores={respawn_time=02}] minecraft:generic.max_health base set 18
attribute @s[scores={respawn_time=01}] minecraft:generic.max_health base set 19

# 显示 Title
execute if score $mutation_anim mem matches 0 run title @s times 0 10 4
execute if score $mutation_anim mem matches 0 run title @s[scores={respawn_time=1..}] title {"text":"复活中...","color":"yellow"}

# 复活完成与在异常状态下回到大厅
execute as @s[scores={respawn_time=..0}] run function pvp:state/battle/enter
execute as @s[team=lobby] run function pvp:state/lobby/enter
execute if score #match_mode mem matches 1 if score #match_type mem matches 1 run schedule function debug:jkuse/match/v1/back 4t append

# 特效
execute at @s run playsound minecraft:block.note_block.hat player @s[scores={respawn_time=..21}] ~ ~ ~ 0.2 0
playsound minecraft:block.beacon.power_select player @s[scores={respawn_time=21}] 0 1000000 0 1000000 0
playsound minecraft:block.beacon.power_select player @s[scores={respawn_time=21}] 0 1000000 0 1000000 0
playsound minecraft:block.portal.ambient player @s[scores={respawn_time=20}] ~ ~-20 ~ 1.8 0.55
playsound minecraft:block.portal.trigger player @s[scores={respawn_time=14}] 0 1000000 0 1 0.7 0.3
effect give @s[scores={respawn_time=9}] minecraft:nausea 7 0 true
execute at @s run playsound minecraft:entity.enderman.teleport player @s[scores={respawn_time=0}] 0 1000000 0 1000000 0.8

# 检查、刷新物品栏
execute as @s[scores={state=1}] run function pvp:state/respawn/tick1
execute as @s[scores={state=1}] run function pvp:state/respawn/refresh_inventory