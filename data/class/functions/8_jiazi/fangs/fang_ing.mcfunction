# as tag为8_fangs_marker的实体
# 落地后{盔甲架}成为状态1，记录落地位置{标记}为状态2
tag @s[tag=!8_fangs_marker_1,nbt={OnGround:true}] add 8_fangs_marker_1
execute at @s[tag=8_fangs_marker_1] run summon evoker_fangs ~ ~ ~
execute at @s[tag=8_fangs_marker_1] run summon marker ~ ~ ~ {Tags:["8_fangs_marker","8_fangs_marker_2"]}
# 状态2存活时间
scoreboard players set @s[tag=8_fangs_marker_2,tag=!fang_ed] 8_fangs_life 12
# 标记它们已生成，后续清除实体
tag @s[tag=8_fangs_marker_1] add fang_ed
tag @s[tag=8_fangs_marker_2] add fang_ed
# 盔甲架不能生成在奇怪的地方
execute if block ~ ~-.1 ~ #modules:bubble_and_harmful run kill @s
