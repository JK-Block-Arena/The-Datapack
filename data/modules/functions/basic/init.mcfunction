# 离开游戏检测
scoreboard objectives remove leave_game
scoreboard objectives add leave_game minecraft.custom:leave_game "离开游戏"

# 死亡检测
scoreboard objectives remove death
scoreboard objectives add death deathCount "死亡接口"