# 每 1 s 执行一次
# play_time_t 在线时长 / Tick
scoreboard players reset @s[scores={play_time_show=2..}] play_time_show

scoreboard players operation @s play_time_s = @s play_time_t
scoreboard players operation @s play_time_s /= #20 mem

scoreboard players operation @s play_time_m = @s play_time_s
scoreboard players operation @s play_time_m /= #60 mem

scoreboard players operation @s play_time_h = @s play_time_m
scoreboard players operation @s play_time_h /= #60 mem

scoreboard players operation @s play_time_d = @s play_time_h
scoreboard players operation @s play_time_d /= #24 mem

scoreboard players operation @s play_time_s %= #60 mem
scoreboard players operation @s play_time_m %= #60 mem
scoreboard players operation @s play_time_h %= #24 mem

title @s[scores={play_time_show=1..}] actionbar [{"text":"你本月在线时长为：","color":"yellow","bold":true},{"score":{"name":"@s","objective":"play_time_d"},"color":"gold"},":",{"score":{"name":"@s","objective":"play_time_h"},"color":"gold"},":",{"score":{"name":"@s","objective":"play_time_m"},"color":"gold"},":",{"score":{"name":"@s","objective":"play_time_s"},"color":"gold"}]

scoreboard players operation @s play_time_d *= #1000000 mem
scoreboard players operation @s play_time_h *= #10000 mem
scoreboard players operation @s play_time_m *= #100 mem

scoreboard players reset @s play_time
scoreboard players operation @s play_time += @s play_time_d
scoreboard players operation @s play_time += @s play_time_h
scoreboard players operation @s play_time += @s play_time_m
scoreboard players operation @s play_time += @s play_time_s

#title @s actionbar [{"text":"你本月在线时长为：","color":"yellow","bold":true},{"score":{"name":"@s","objective":"play_time"},"color":"gold"}]