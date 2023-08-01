# 时间继续流动的条件
execute if entity @p[gamemode=adventure,team=red_v1,tag=match_ready] if entity @p[gamemode=adventure,team=blue_v1,tag=match_ready] run scoreboard players set #match_time_can mem 1

# 声音
execute if score #match_time mem matches 184.. run playsound block.note_block.hat block @a 8 235 8 100000

# 分配队伍
execute if score #match_time mem matches 215 run team join red_v1 @r[gamemode=adventure]
execute if score #match_time mem matches 215 run team join blue_v1 @p[gamemode=adventure,team=!red_v1]

# 传送
execute if score #match_time mem matches 213 run function debug:jkuse/match/v1/back

# 投票禁用职业
execute if score #match_time mem matches 210 run function debug:jkuse/match/class/init
execute if score #match_time mem matches 200 run function debug:jkuse/match/class/check

execute if score #match_time mem matches 195 run function debug:jkuse/match/class/init
execute if score #match_time mem matches 185 run function debug:jkuse/match/class/check

execute if score #match_time mem matches 182 if block 0 12 -23 air run function debug:jkuse/match/v1/sign

# 比赛时长
execute if score #match_time mem matches 184 run tellraw @a ["",{"text": "※  1v1模式已开启！","color": "gold","bold": true},{"text": "\n比赛规则：","color": "yellow"},{"text": "\n开局获得","color": "yellow"},{"text": " 10♥ ","color": "gold"},{"text": "的伤害吸收，静息","color": "yellow"},{"text":"只能去除debuff","color": "gold"},{"text": "。\n每次比拼不论输赢，上一局的职业被禁用。","color": "yellow"},{"text": "\n每轮时间限制","color": "yellow"},{"text": " 180秒","color": "gold"},{"text": "，在","color": "yellow"},{"text": " 90秒 ","color": "gold"},{"text": "后双方发光。","color": "yellow"},{"text": "\n没有突变，专属地图","color": "gold"},{"text": "，先获得","color": "yellow"},{"text": " 3分 ","color": "gold","bold": true},{"text":"的玩家获胜。","color": "yellow"}]
execute if score #match_time mem matches 181 run function debug:jkuse/match/start
execute if score #match_time mem matches 1..180 run scoreboard players operation #match_time_m mem = #match_time mem
execute if score #match_time mem matches 1..180 run scoreboard players operation #match_time_m mem /= #60 mem
execute if score #match_time mem matches 1..180 run scoreboard players operation #match_time_s mem = #match_time mem
execute if score #match_time mem matches 1..180 run scoreboard players operation #match_time_s mem %= #60 mem
execute if score #match_time mem matches 1..180 run title @a actionbar [{"score":{"name": "#match_time_m","objective": "mem"},"color": "gold"}," : ",{"score":{"name": "#match_time_s","objective": "mem"},"color": "gold"}]

# 标题
execute if score #match_time mem matches 181.. run scoreboard players operation #match_time_v1 mem = #match_time mem
execute if score #match_time mem matches 181.. run scoreboard players remove #match_time_v1 mem 180
execute if score #match_time mem matches 181.. run title @a title {"text": "倒计时","color": "green"}
execute if score #match_time mem matches 181.. run title @a subtitle {"score":{"name": "#match_time_v1","objective": "mem"},"color": "gold"}
execute if score #match_time mem matches 200..210 run title @a title {"text": "禁用职业1st","color": "green"}
execute if score #match_time mem matches 185..195 run title @a title {"text": "禁用职业2nd","color": "green"}
execute if score #match_time mem matches 1..180 run title @a title ""
execute if score #match_time mem matches 1..180 run title @a subtitle ""
execute unless score #match_time_can mem matches 1 run title @a title {"text": "选择新职业","color": "green"}
# 发光
execute if score #match_time mem matches 1..90 run effect give @a[scores={team=5..6}] glowing 2 0 true

# 时间结束
execute if score #match_time mem matches 1 run function debug:jkuse/match/v1/back

# 比赛结束
execute if score #1v1_red mem matches 3 unless score #1v1_blue mem matches 3 run function debug:jkuse/match/v1/end
execute if score #1v1_blue mem matches 3 unless score #1v1_red mem matches 3 run function debug:jkuse/match/v1/end
execute if score #1v1_blue mem matches 3 if score #1v1_red mem matches 3 run function debug:jkuse/match/v1/draw