# 积分
execute if score #select_gain_9 mem >= #10 mem as @a at @s if score @s select_gain_9 = #select_gain_9 mem run scoreboard players set @s hidden_answer 1
scoreboard players reset @a select_gain_9
scoreboard players reset #select_gain_9 mem
scoreboard players reset #9_time mem
# 特有计分板
#scoreboard players reset * answer
scoreboard objectives remove select_run
scoreboard objectives remove select_jump
scoreboard objectives remove select_jump_real
# 特有boss条
bossbar set modules:mutation_9 visible false