
# 尝试传送
summon marker ~ ~ ~ {Tags:["tp_test"]}
scoreboard players operation @e[tag=tp_test,limit=1] statPlayerLevel = @s statPlayerLevel

# 自动纠正位置
execute as @e[tag=tp_test] at @s run function modules:anti_stuck/sub/player

# 确认传送点是否安全
execute as @e[tag=tp_test] at @s if block ~ ~ ~ #modules:air if block ~ ~1 ~ #modules:air run tag @s add tp_success
kill @e[tag=tp_test,tag=!tp_success]

# 传送
execute if entity @e[tag=tp_test] run function class:5_knight/star_tp/tp_success
execute unless entity @e[tag=tp_test] run function class:5_knight/star_tp/tp_fail
kill @e[tag=tp_test]
