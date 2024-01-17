execute as @e[tag=8_fangs_marker_2] at @s run function class:8_jiazi/fangs/victim

# 防止盔甲架一直存在
scoreboard players set @e[tag=8_fangs_marker,tag=!8_fangs_count] mem 100
tag @e[tag=8_fangs_marker] add 8_fangs_count
scoreboard players remove @e[tag=8_fangs_count] mem 1
kill @e[tag=8_fangs_count,scores={mem=..0}]