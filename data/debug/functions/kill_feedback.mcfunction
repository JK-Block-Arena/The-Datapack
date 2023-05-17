
# 模拟击杀数据
scoreboard players set #death_type mem 2
tag @s add murder
scoreboard players add @s killCombo 1
scoreboard players set @s killComboReset 12

# 触发击杀 subtitle
function modules:kill_count/combo_feedback
# 显示击杀信息
function modules:kill_count/death_info

# 清理
tag @a remove murder
gamerule sendCommandFeedback false
schedule function debug:reset_gamerule 1t replace