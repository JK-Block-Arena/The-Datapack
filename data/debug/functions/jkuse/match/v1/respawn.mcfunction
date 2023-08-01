scoreboard players reset #match_time_can mem
scoreboard players set #match_time mem 183

# 加标签，禁止再次使用
# 使用了物品栏中的屏障屏蔽
execute as @p[team=red_v1,scores={class=1}] run tag @e[tag=class1] add match_v1_red
execute as @p[team=red_v1,scores={class=2}] run tag @e[tag=class2] add match_v1_red
execute as @p[team=red_v1,scores={class=3,class_type=0}] run tag @e[tag=class3] add match_v1_red
execute as @p[team=red_v1,scores={class=4}] run tag @e[tag=class4] add match_v1_red
execute as @p[team=red_v1,scores={class=5}] run tag @e[tag=class5] add match_v1_red
execute as @p[team=red_v1,scores={class=6}] run tag @e[tag=class6] add match_v1_red
execute as @p[team=red_v1,scores={class=7}] run tag @e[tag=class7] add match_v1_red
execute as @p[team=red_v1,scores={class=3,class_type=1}] run tag @e[tag=class8] add match_v1_red
execute as @p[team=red_v1,scores={class=9}] run tag @e[tag=class9] add match_v1_red
execute as @p[team=red_v1,scores={class=10}] run tag @e[tag=class10] add match_v1_red

execute as @p[team=blue_v1,scores={class=1}] run tag @e[tag=class1] add match_v1_blue
execute as @p[team=blue_v1,scores={class=2}] run tag @e[tag=class2] add match_v1_blue
execute as @p[team=blue_v1,scores={class=3,class_type=0}] run tag @e[tag=class3] add match_v1_blue
execute as @p[team=blue_v1,scores={class=4}] run tag @e[tag=class4] add match_v1_blue
execute as @p[team=blue_v1,scores={class=5}] run tag @e[tag=class5] add match_v1_blue
execute as @p[team=blue_v1,scores={class=6}] run tag @e[tag=class6] add match_v1_blue
execute as @p[team=blue_v1,scores={class=7}] run tag @e[tag=class7] add match_v1_blue
execute as @p[team=blue_v1,scores={class=3,class_type=1}] run tag @e[tag=class8] add match_v1_blue
execute as @p[team=blue_v1,scores={class=9}] run tag @e[tag=class9] add match_v1_blue
execute as @p[team=blue_v1,scores={class=10}] run tag @e[tag=class10] add match_v1_blue

execute as @a[gamemode=spectator] run tp @s @r[gamemode=adventure]