scoreboard objectives remove state
scoreboard objectives add state dummy "玩家状态"

scoreboard objectives remove respawn_time
scoreboard objectives add respawn_time dummy "复活等待"

scoreboard objectives remove team_prefer
scoreboard objectives add team_prefer dummy "队伍意向"

scoreboard objectives remove lobby
scoreboard objectives add lobby trigger "返回大厅"

scoreboard objectives remove ignore_tips
scoreboard objectives add ignore_tips trigger "小知识开关"

scoreboard objectives remove suicide
scoreboard objectives add suicide trigger "自杀"
scoreboard objectives remove suicide_time
scoreboard objectives add suicide_time dummy "自杀倒计时"

scoreboard objectives remove switch_bossbar
scoreboard objectives add switch_bossbar trigger "切换boss条"

scoreboard objectives remove key_use
scoreboard objectives add key_use minecraft.used:carrot_on_a_stick "检测右键"
