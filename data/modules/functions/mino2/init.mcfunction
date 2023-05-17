
# 实际击杀检测
scoreboard objectives remove mino_type_real
scoreboard objectives add mino_type_real dummy "追踪伤害种类"
scoreboard objectives remove mino_source_real
scoreboard objectives add mino_source_real dummy "追踪伤害来源"

# 致命伤
scoreboard objectives remove mino_type_last
scoreboard objectives add mino_type_last dummy "最终伤害种类"
scoreboard objectives remove mino_source_last
scoreboard objectives add mino_source_last dummy "最终伤害来源"

# 仇恨计时
scoreboard objectives remove mino_forgive_timer
scoreboard objectives add mino_forgive_timer dummy "仇恨计时"
