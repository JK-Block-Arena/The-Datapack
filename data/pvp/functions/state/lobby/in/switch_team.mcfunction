# 获取队伍
scoreboard players add @s team_prefer 1
execute if score @s team_prefer matches 5.. run scoreboard players set @s team_prefer 0
# 播放音效
playsound block.stone_button.click_on player @s 0 1000000 0 1000000
# 刷新物品
function pvp:state/lobby/refresh_inventory
# 刷新警告信息
function modules:team/sub/refresh_warn