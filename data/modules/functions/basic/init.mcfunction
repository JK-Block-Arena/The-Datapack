
# 离开游戏检测
scoreboard objectives remove leave_game
scoreboard objectives add leave_game minecraft.custom:leave_game "离开游戏"

# 死亡检测
scoreboard objectives remove death
scoreboard objectives add death deathCount "死亡接口"

# 在线时长
scoreboard objectives remove play_time_show
scoreboard objectives add play_time_show trigger "开启/关闭在线时长显示"
scoreboard objectives remove play_time
scoreboard objectives add play_time dummy "本月在线时长/天/时/分/秒"
scoreboard objectives remove play_time_s
scoreboard objectives add play_time_s dummy "在线时长/s"
scoreboard objectives remove play_time_m
scoreboard objectives add play_time_m dummy "在线时长/m"
scoreboard objectives remove play_time_h
scoreboard objectives add play_time_h dummy "在线时长/h"
scoreboard objectives remove play_time_d
scoreboard objectives add play_time_d dummy "在线时长/d"