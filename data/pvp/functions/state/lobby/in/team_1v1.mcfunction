execute unless entity @p[team=blue_v1] run team join blue_v1 @s
execute unless entity @p[team=red_v1] run team join red_v1 @s

execute if entity @p[team=red_v1,distance=.1..] if entity @p[team=blue_v1,distance=.1..] run tag @s add 1v1_full
tellraw @s[tag=1v1_full] {"text": " ❇  1v1人数已满，无法再加入了！","color": "dark_red"}
tp @s[tag=1v1_full] 3 235 8 -90 2