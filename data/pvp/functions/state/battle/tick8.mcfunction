# 自杀
scoreboard players enable @s suicide

scoreboard players set @s[scores={suicide=1..,suicide_time=0}] suicide_time 12
tag @s[scores={suicide_time=12}] add suicide
tellraw @s[tag=suicide] {"text": " ※  将于 5 秒后自杀...再次输入可取消。","color": "gold"}

tellraw @s[tag=!suicide,scores={suicide=1..,suicide_time=1..}] {"text": " ※  自杀已取消！","color": "green"}
scoreboard players set @s[tag=!suicide,scores={suicide=1..,suicide_time=1..}] suicide_time 0

tag @s remove suicide
scoreboard players set @s suicide 0

scoreboard players remove @s[scores={suicide_time=1..}] suicide_time 1
execute as @s[scores={suicide_time=1}] run function debug:jkuse/kill_noob