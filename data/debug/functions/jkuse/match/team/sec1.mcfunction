# 分配队伍
execute if score #match_time mem matches 1.. as @a[gamemode=adventure] at @s run function debug:jkuse/match/team/join
# 投票禁用两轮
execute if score #match_time mem matches 85 run function debug:jkuse/match/class/init
execute if score #match_time mem matches 70 run function debug:jkuse/match/class/check

execute if score #match_time mem matches 65 run function debug:jkuse/match/class/init
execute if score #match_time mem matches 50 run function debug:jkuse/match/class/check

# 地图选择3选1
execute if score #match_time mem matches 45 run function debug:jkuse/match/map/init
execute if score #match_time mem matches 30 run function debug:jkuse/match/map/check

# 突变选择4选1
execute if score #match_time mem matches 25 run function debug:jkuse/match/mutation/init
execute if score #match_time mem matches 10 run function debug:jkuse/match/mutation/check

# 标题
execute if score #match_time mem matches 1.. run title @a title {"text": "倒计时","color": "green"}
execute if score #match_time mem matches 1.. run title @a subtitle {"score":{"name": "#match_time","objective": "mem"},"color": "gold"}
execute if score #match_time mem matches 1.. run title @a[team=lobby,gamemode=adventure] title {"text": "选择队伍！","color": "gold"}
execute if score #match_time mem matches 70..85 run title @a title {"text": "禁用职业1st","color": "green"}
execute if score #match_time mem matches 50..65 run title @a title {"text": "禁用职业2nd","color": "green"}
execute if score #match_time mem matches 30..45 run title @a title {"text": "选择地图","color": "aqua"}
execute if score #match_time mem matches 10..25 run title @a title {"text": "选择突变","color": "aqua"}

# 开始游戏
execute if score #match_time mem matches 1 run function debug:jkuse/match/start