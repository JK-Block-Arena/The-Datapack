# 技能持续时间减少
scoreboard players remove @s[scores={statPlayerLevel=1}] 4_water_last 35
scoreboard players remove @s[scores={statPlayerLevel=2}] 4_water_last 45
scoreboard players remove @s[scores={statPlayerLevel=3}] 4_water_last 55
scoreboard players remove @s[scores={statPlayerLevel=4}] 4_water_last 65

# 结束提示
scoreboard players set @s[scores={4_water_last=..-1}] 4_water_last 0
execute if score @s[tag=4_in_water,scores={4_water_last=..0}] 4_water_st matches 1.. run title @s actionbar {"color":"gold","text":"⚠ 已触发下一次水生技能","bold":true}
execute if score @s[tag=4_in_water,scores={4_water_last=..0}] 4_water_st matches 0 run title @s actionbar [{"color":"red","text":"✖ "},{"text":"水生技能已完全耗尽","bold":true}]

# 更新显示
function class:4_oceancat/water/update_xpbar
