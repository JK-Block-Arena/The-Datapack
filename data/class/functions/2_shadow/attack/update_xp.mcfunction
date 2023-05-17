# 同步经验条
scoreboard players operation #xp mem = @s 2_attack_time
scoreboard players operation #xp mem *= #10 mem
execute if score @s statPlayerLevel matches 1 run scoreboard players operation #xp mem /= #40 mem
execute if score @s statPlayerLevel matches 2 run scoreboard players operation #xp mem /= #35 mem
execute if score @s statPlayerLevel matches 3 run scoreboard players operation #xp mem /= #30 mem
execute if score @s statPlayerLevel matches 4 run scoreboard players operation #xp mem /= #25 mem
execute if score @s 2_attack_stack matches ..0 run scoreboard players set #xp mem 0

scoreboard players operation #level mem = @s 2_attack_stack
function modules:set_xp
