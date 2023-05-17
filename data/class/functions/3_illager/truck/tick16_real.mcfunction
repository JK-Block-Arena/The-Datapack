# 清理
execute store result score @s temp run data get entity @s Health 10
scoreboard players remove @s[scores={statPlayerLevel=1}] temp 28
scoreboard players remove @s[scores={statPlayerLevel=2}] temp 31
scoreboard players remove @s[scores={statPlayerLevel=3}] temp 33
scoreboard players remove @s[scores={statPlayerLevel=4}] temp 36
execute store result entity @s Health float 0.1 run scoreboard players get @s temp