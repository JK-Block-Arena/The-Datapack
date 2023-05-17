# 获取完成击杀的玩家
scoreboard players operation @a temp = @s mino_source_real
execute as @a run scoreboard players operation @s temp -= @s player_id
tag @p[scores={temp=0}] add murder
tag @s add victim

# 判断击杀类型：0 自杀，1 同队误杀，2 敌方击杀
scoreboard players set #death_type mem 2
execute unless entity @a[tag=murder] run scoreboard players set #death_type mem 0
execute if entity @a[tag=murder,team=red_v1] as @s[team=red_v1] run scoreboard players set #death_type mem 1
execute if entity @a[tag=murder,team=blue_v1] as @s[team=blue_v1] run scoreboard players set #death_type mem 1

# 触发敌方击杀
execute if score #death_type mem matches 2 as @a[tag=murder] at @s run function modules:kill_count/player_kill_v1

# 显示击杀信息
function modules:kill_count/death_info

# 清理
tag @a remove murder
tag @s remove victim
scoreboard players set @s killCombo 0
function modules:mino2/sub/forgive