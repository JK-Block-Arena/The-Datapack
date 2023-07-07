# 更新显示
scoreboard players set #xp mem 10000
scoreboard players operation #xp mem -= @s 3_dash_cd
scoreboard players operation #xp mem /= #10 mem
scoreboard players operation #level mem = @s 3_dash_st
function modules:set_xp
