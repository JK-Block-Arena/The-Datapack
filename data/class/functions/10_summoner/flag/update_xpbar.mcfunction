# 更新显示
scoreboard players operation #xp mem = @s 10_flag_cd
execute if score $is_day mem matches 0 run scoreboard players operation #xp mem /= #12 mem
execute if score $is_day mem matches 1 run scoreboard players operation #xp mem /= #18 mem
scoreboard players set #level mem 0
function modules:set_xp