scoreboard objectives add tip_cd dummy "提示间隔"

# 教程
scoreboard objectives add tip_0_tutorial dummy "教程步骤"
scoreboard objectives add tip_0_jump dummy "提示：疾跑跳"
scoreboard objectives add tip_0_skill dummy "提示：技能"
# 立即显示的提示
scoreboard objectives add tip_1_respawn_class dummy "提示：在复活时切换职业"
scoreboard objectives add tip_1_train dummy "提示：训练场"
scoreboard objectives add tip_1_regen dummy "提示：静息治疗"
scoreboard objectives add tip_1_waterkill dummy "提示：遇水即化"
scoreboard objectives add tip_1_afk dummy "提示：暂离游戏"
scoreboard objectives add tip_1_regen_effect dummy "提示：治疗异常状态"
# 延迟触发的提示
scoreboard objectives add tip_2_killregen dummy "提示：击杀治疗"
scoreboard objectives add tip_2_reset dummy "提示：循环重置"
scoreboard objectives add tip_2_mutation dummy "提示：突变"
# 循环显示的提示
scoreboard objectives add tip_cycle_times dummy "提示：完成循环次数"
scoreboard objectives add tip_cycle_head dummy "提示：当前循环位置"
scoreboard objectives add tip_minor_head dummy "提示：当前次要循环位置"

# 触发提示的判据
scoreboard objectives add tip_battle_delay dummy "提示战斗延迟"
scoreboard objectives add tip_walk custom:walk_one_cm "行走距离"
scoreboard objectives add tip_run custom:sprint_one_cm "疾跑距离"