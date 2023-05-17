# 仇恨在最近非本队玩家身上
data modify entity @s[team=red] AngryAt set from entity @p[gamemode=adventure,team=!red] UUID
data modify entity @s[team=blue] AngryAt set from entity @p[gamemode=adventure,team=!blue] UUID
data modify entity @s[team=green] AngryAt set from entity @p[gamemode=adventure,team=!green] UUID
data modify entity @s[team=yellow] AngryAt set from entity @p[gamemode=adventure,team=!yellow] UUID
# 清理
execute store result score @s temp run data get entity @s Health 10
scoreboard players remove @s[scores={statPlayerLevel=1}] temp 24
scoreboard players remove @s[scores={statPlayerLevel=2}] temp 26
scoreboard players remove @s[scores={statPlayerLevel=3}] temp 28
scoreboard players remove @s[scores={statPlayerLevel=4}] temp 30
execute store result entity @s Health float 0.1 run scoreboard players get @s temp