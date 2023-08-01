# 初始化计分板等
scoreboard objectives remove vote_match
scoreboard objectives add vote_match trigger "友谊赛投票"
scoreboard players reset #match_time mem
scoreboard players reset #match_type mem