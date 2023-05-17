# 清理
execute store result score @s temp run data get entity @s Health 10
scoreboard players remove @s[scores={statPlayerLevel=1}] temp 36
scoreboard players remove @s[scores={statPlayerLevel=2}] temp 40
scoreboard players remove @s[scores={statPlayerLevel=3}] temp 44
scoreboard players remove @s[scores={statPlayerLevel=4}] temp 28
execute store result entity @s Health float 0.1 run scoreboard players get @s temp