# 尖刺生成
execute as @e[tag=8_fangs_marker] at @s run function class:8_jiazi/fangs/fang_ing
# 画地为牢
execute as @e[tag=8_fangs_center] at @s run function class:8_jiazi/wave/circle
# 手持版
execute as @e[tag=8_pierce,tag=!fang_ed] at @s run function class:8_jiazi/pierce/tp
# 已生成
execute as @e[tag=fang_ed] at @s run function class:8_jiazi/fangs/fang_ed