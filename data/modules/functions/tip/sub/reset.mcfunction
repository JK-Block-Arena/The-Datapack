scoreboard players reset * tip_cd
# 新手教程
scoreboard players reset * tip_0_tutorial
scoreboard players reset * tip_0_jump
scoreboard players reset * tip_0_skill
# 立即显示的提示
scoreboard players reset * tip_1_respawn_class
scoreboard players reset * tip_1_afk
scoreboard players reset * tip_1_train
scoreboard players reset * tip_1_regen
scoreboard players reset * tip_1_waterkill
scoreboard players reset * tip_1_regen_effect
# 延迟触发的提示
scoreboard players reset * tip_2_killregen
scoreboard players reset * tip_2_mutation
scoreboard players reset * tip_2_reset
# 循环显示的提示
scoreboard players reset * tip_cycle_times
scoreboard players reset * tip_cycle_head
scoreboard players reset * tip_minor_head
# 重置
function class:modules/tip/reset
execute as @a run function modules:tip/player_enter