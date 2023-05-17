# 选择题目
scoreboard players set #random_min mem 1
scoreboard players set #random_max mem 4
function modules:random
scoreboard players operation #9_select mem = #random mem
execute if score #9_select mem matches 1 run function modules:mutation/special/9_select/1
execute if score #9_select mem matches 2 run function modules:mutation/special/9_select/2
execute if score #9_select mem matches 3 run function modules:mutation/special/9_select/3
execute if score #9_select mem matches 4 run function modules:mutation/special/9_select/4
scoreboard players add #select_gain_9 mem 1