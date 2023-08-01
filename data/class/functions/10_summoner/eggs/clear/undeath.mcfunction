# 清理
kill @s[nbt={IsBaby:true}]
execute store result score @s temp run data get entity @s Health 10
scoreboard players remove @s[scores={statPlayerLevel=1}] temp 14
scoreboard players remove @s[scores={statPlayerLevel=2}] temp 16
scoreboard players remove @s[scores={statPlayerLevel=3}] temp 18
scoreboard players remove @s[scores={statPlayerLevel=4}] temp 20
execute store result entity @s Health float 0.1 run scoreboard players get @s temp