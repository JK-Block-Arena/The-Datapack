
scoreboard objectives remove Sneaking_map
scoreboard objectives add Sneaking_map minecraft.custom:minecraft.sneak_time "地图检测潜行"

scoreboard objectives remove afkTime
scoreboard objectives add afkTime dummy "未操作时间"

scoreboard objectives remove brRegen
scoreboard objectives add brRegen dummy "静息治疗倒计时"
scoreboard objectives remove brRegenSneak
scoreboard objectives add brRegenSneak minecraft.custom:minecraft.sneak_time "静息治疗潜行计数"

scoreboard objectives remove brRegenBreak0
scoreboard objectives add brRegenBreak0 minecraft.custom:minecraft.damage_taken "打断静息治疗0"
scoreboard objectives remove brRegenBreak1
scoreboard objectives add brRegenBreak1 minecraft.custom:minecraft.damage_dealt "打断静息治疗1"
scoreboard objectives remove brRegenBreak2
scoreboard objectives add brRegenBreak2 minecraft.custom:minecraft.walk_one_cm "打断静息治疗2"
scoreboard objectives remove brRegenBreak3
scoreboard objectives add brRegenBreak3 minecraft.custom:minecraft.sprint_one_cm "打断静息治疗3"
scoreboard objectives remove brRegenBreak4
scoreboard objectives add brRegenBreak4 minecraft.custom:minecraft.crouch_one_cm "打断静息治疗4"
scoreboard objectives remove brRegenBreak5
scoreboard objectives add brRegenBreak5 minecraft.custom:minecraft.walk_on_water_one_cm "打断静息治疗5"
scoreboard objectives remove brRegenBreak6
scoreboard objectives add brRegenBreak6 minecraft.custom:minecraft.jump "打断静息治疗6"
