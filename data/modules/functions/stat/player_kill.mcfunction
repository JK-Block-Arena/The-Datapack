# 更新玩家个人统计
execute store result storage class:kd kds.classKill int 1 run scoreboard players get @s class
execute store result storage class:kd kds.classDeath int 1 run scoreboard players get @a[limit=1,tag=victim] class

execute unless score $stat_condition debug matches 1 if score $team_diff mem matches ..1 run function modules:stat/stat_player with storage class:kd kds

# 获取玩家的职业击杀
function modules:stat/get_class_kill with storage class:kd kds
execute as @a[tag=victim] run function modules:stat/get_class_kill_vic with storage class:kd kds

# 更新全局统计
execute unless score $mutation mem matches 2 if score $team_diff mem matches ..1 if entity @a[tag=victim] run function modules:stat/stat_class with storage class:kd kds