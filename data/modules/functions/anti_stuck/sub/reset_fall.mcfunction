effect give @s slow_falling 1 0 true
tag @s add reset_fall
schedule function modules:anti_stuck/reset_fall_end 1t replace

# 结束特殊判定
tag @s remove 4_fly