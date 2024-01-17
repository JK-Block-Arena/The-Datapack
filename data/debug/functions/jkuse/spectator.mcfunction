effect clear @s blindness
# 回主大厅
scoreboard players enable @s lobby
execute unless score #match_mode mem matches 1 as @s[scores={lobby=1..}] run function debug:jkuse/1_back_spawn
scoreboard players set @s lobby 0
execute unless score #match_mode mem matches 1 as @s[team=!creator] unless entity @p[scores={state=1..2},gamemode=adventure] run function debug:jkuse/1_back_spawn
# 切换bossbar
scoreboard players enable @s switch_bossbar
execute unless score #match_mode mem matches 1 as @s[scores={switch_bossbar=1..}] run function debug:jkuse/switch_bossbar
scoreboard players set @s switch_bossbar 0
# 防止进虚空
execute unless entity @e[type=minecraft:marker,distance=..100] run tp @s[team=!creator] @p[gamemode=adventure]