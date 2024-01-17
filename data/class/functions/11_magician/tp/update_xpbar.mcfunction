# 更新显示
scoreboard players set #level mem 0

scoreboard players operation #xp mem = @s 11_tp_wait
execute as @s[scores={11_tp_wait=1..}] run scoreboard players operation #xp mem *= #50 mem

execute as @s[scores={11_tp_last_wait=1..}] run scoreboard players operation #xp mem = @s 11_tp_last_wait
execute as @s[scores={11_tp_last_wait=1..}] run scoreboard players operation #xp mem *= #30 mem

execute as @s[scores={11_tp_last=1..}] run scoreboard players operation #xp mem = @s 11_tp_last
execute as @s[scores={11_tp_last=1..}] run scoreboard players operation #xp mem *= #20 mem

function modules:set_xp