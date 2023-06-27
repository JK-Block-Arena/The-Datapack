scoreboard players set #random_min mem 1
scoreboard players set #random_max mem 9
function modules:random
execute if score $mutation mem matches 10 run scoreboard players operation #random mem = #99 mem
execute if score #random mem = @s class run function modules:mutation/special/2_random_loop
execute if score #random mem = #8 mem run function modules:mutation/special/2_random_loop

execute if entity @e[limit=1,tag=class1,tag=banned_class] if score #random mem = #1 mem run function modules:mutation/special/2_random_loop
execute if entity @e[limit=1,tag=class2,tag=banned_class] if score #random mem = #2 mem run function modules:mutation/special/2_random_loop
execute if entity @e[limit=1,tag=class3,tag=banned_class] if score #random mem = #3 mem run function modules:mutation/special/2_random_loop
execute if entity @e[limit=1,tag=class4,tag=banned_class] if score #random mem = #4 mem run function modules:mutation/special/2_random_loop
execute if entity @e[limit=1,tag=class5,tag=banned_class] if score #random mem = #5 mem run function modules:mutation/special/2_random_loop
execute if entity @e[limit=1,tag=class6,tag=banned_class] if score #random mem = #6 mem run function modules:mutation/special/2_random_loop
execute if entity @e[limit=1,tag=class7,tag=banned_class] if score #random mem = #7 mem run function modules:mutation/special/2_random_loop
#execute if entity @e[limit=1,tag=class8,tag=banned_class] if score #random mem = #8 mem run function modules:mutation/special/2_random_loop
execute if entity @e[limit=1,tag=class9,tag=banned_class] if score #random mem = #9 mem run function modules:mutation/special/2_random_loop
execute if entity @e[limit=1,tag=class10,tag=banned_class] if score #random mem = #10 mem run function modules:mutation/special/2_random_loop

#tag @s[scores={class=2}] add class2p
tag @s[scores={class=99}] add class99p

# 在白天不选择暗影
#execute if score $is_day mem matches 1 if score #random mem matches 2 run scoreboard players operation #random mem = @s class
# 在晚上不选择耀骑士
#execute if score $is_day mem matches 0 if score #random mem matches 5 run scoreboard players operation #random mem = @s class