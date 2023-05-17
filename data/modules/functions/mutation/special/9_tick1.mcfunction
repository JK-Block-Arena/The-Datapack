# 不计入胜负玩家（算数除外）
execute as @a unless score @s state matches 2 run tag @s remove 9_select_player
tag @a[gamemode=!adventure] remove 9_select_player

# 结算时间计时
execute if score #9_time mem matches 1.. run scoreboard players remove #9_time mem 1
execute if score #9_time mem matches 1 if score #9_select mem matches 1 run function modules:mutation/special/9_select/1_check

execute if score #9_time mem matches 20 if score #9_select mem matches 2 run function modules:mutation/special/9_select/2_summon
execute if score #9_time mem matches 1 if score #9_select mem matches 2 run function modules:mutation/special/9_select/2_check

execute if score #9_time mem matches 1 if score #9_select mem matches 3 run function modules:mutation/special/9_select/3_check

execute if score #9_time mem matches 1.. if score #9_select mem matches 4 run function modules:mutation/special/9_select/4_check
execute if score #9_time mem matches 1 if score #9_select mem matches 4 run function modules:mutation/special/9_select/4_end

bossbar set modules:mutation_9 name ["",{"text":"剩余时间：","color":"gold"},"[",{"score":{"name":"#9_time","objective":"mem"},"color":"yellow"},"]"]
execute store result bossbar modules:mutation_9 value run scoreboard players get #9_time mem
execute if score #9_time mem matches 1.. run bossbar set modules:mutation_9 visible true
execute unless score #9_time mem matches 1.. run bossbar set modules:mutation_9 visible false
bossbar set modules:mutation_9 players @a[scores={state=1..2}]

execute if score #9_time mem matches 1 run tag @a remove 9_select_player