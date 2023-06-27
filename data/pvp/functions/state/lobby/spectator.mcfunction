effect clear @s blindness
# 回主大厅
scoreboard players enable @s back_spawn
execute as @s[scores={back_spawn=1..}] run function debug:jkuse/1_back_spawn
scoreboard players set @s back_spawn 0
execute as @s[team=!creator] unless entity @p[scores={state=1..2},gamemode=adventure] run function debug:jkuse/1_back_spawn
# 切换bossbar
scoreboard players enable @s switch_bossbar
execute as @s[scores={switch_bossbar=1..}] run function debug:jkuse/switch_bossbar
scoreboard players set @s switch_bossbar 0