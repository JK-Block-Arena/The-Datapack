## 木头人不许动
# 生成标记检测位置
execute as @a[tag=9_select_player] at @s run summon marker ~ ~ ~ {Tags:["9_wood_marker"]}
execute as @e[tag=9_wood_marker] at @s run scoreboard players operation @s player_id = @p[tag=9_select_player,distance=...5] player_id