# 更新玩家个人统计
execute unless score $stat_condition debug matches 1 if score $team_diff mem matches ..1 run function modules:stat/stat_player

# 获取玩家的职业击杀
function modules:stat/get_class_kill
execute as @a[tag=victim] run function modules:stat/get_class_kill

# 更新全局统计
execute unless score $mutation mem matches 2 if score $team_diff mem matches ..1 if entity @a[tag=victim] run function modules:stat/stat_class