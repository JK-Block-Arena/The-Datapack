# 更新显示
scoreboard players set #xp mem 5000
execute if score @s 3_axe_st matches 0 if score @s 3_axe_last matches 0 run scoreboard players operation #xp mem -= @s 3_axe_cd
execute if score @s 3_axe_st matches 0 if score @s 3_axe_last matches 0 run scoreboard players operation #xp mem /= #5 mem
execute if score @s 3_axe_st matches 0 if score @s 3_axe_last matches 1.. run scoreboard players operation #xp mem = @s 3_axe_last
execute if score @s 3_axe_st matches 0 if score @s 3_axe_last matches 1.. run scoreboard players operation #xp mem *= #25 mem
scoreboard players set #level mem 0
function modules:set_xp
