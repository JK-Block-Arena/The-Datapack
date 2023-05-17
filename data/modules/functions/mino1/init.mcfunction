# 瞬时伤害检测
scoreboard objectives remove mino_type_now
scoreboard objectives add mino_type_now dummy "当前伤害种类"
scoreboard objectives remove mino_source_now
scoreboard objectives add mino_source_now dummy "当前伤害来源"

# 特殊状态检测
scoreboard objectives remove mino_type_effect_instant
scoreboard objectives add mino_type_effect_instant dummy "瞬间伤害效果种类"
scoreboard objectives remove mino_source_effect_instant
scoreboard objectives add mino_source_effect_instant dummy "瞬间伤害效果来源"

# 换位检测
scoreboard objectives remove mino_time_00080
scoreboard objectives add mino_time_00080 dummy "换位仇恨倒计时"
scoreboard objectives remove mino_source_00080
scoreboard objectives add mino_source_00080 dummy "换位来源"

scoreboard objectives remove aecUUID
scoreboard objectives add aecUUID dummy "上个药水云UUID"
