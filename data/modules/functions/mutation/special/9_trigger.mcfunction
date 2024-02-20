# 选择题目
execute store result score #random mem run random value 3..8
#scoreboard players set #random mem 8
scoreboard players operation #9_select mem = #random mem
tag @a[scores={state=2,team=1..4},gamemode=adventure] add 9_select_player
execute if score $map mem matches 3 if score #9_select mem matches 7 run function modules:mutation/special/9_trigger
execute if score $map mem matches 100 if score #9_select mem matches 7 run function modules:mutation/special/9_trigger
#execute if score #9_select mem matches 1 run function modules:mutation/special/9_select/1
#execute if score #9_select mem matches 2 run function modules:mutation/special/9_select/2
execute if score #9_select mem matches 3 run function modules:mutation/special/9_select/3
execute if score #9_select mem matches 4 run function modules:mutation/special/9_select/4
execute if score #9_select mem matches 5 run function modules:mutation/special/9_select/5
execute if score #9_select mem matches 6 run function modules:mutation/special/9_select/6
execute if score #9_select mem matches 7 run function modules:mutation/special/9_select/7
execute if score #9_select mem matches 8 run function modules:mutation/special/9_select/8
scoreboard players add #select_gain_9 mem 1