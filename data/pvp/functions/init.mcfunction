# 玩家 ID 编号
scoreboard objectives remove player_id
scoreboard objectives add player_id dummy "玩家 ID"
scoreboard players set #player_id_max mem 1
scoreboard objectives add player_uuid dummy "玩家 UUID"

scoreboard objectives remove food
scoreboard objectives add food food "饱食度"
#scoreboard objectives remove class
scoreboard objectives add class dummy "职业"
scoreboard objectives remove team
scoreboard objectives add team dummy "队伍"

#function pvp:state/lobby/lobby_item
function pvp:state/train/init
function pvp:class/init