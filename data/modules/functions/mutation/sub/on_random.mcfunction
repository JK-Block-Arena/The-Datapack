# 随机选择一个不重复的突变
function modules:mutation/random_mutation_loop
scoreboard players operation $mutation_new mem = #random mem
scoreboard players set $mutation_anim mem 1

tag @a[scores={tip_2_mutation=..1,state=0..2}] add tip_2_mutation
function modules:mutation/on_disabled