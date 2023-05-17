tag @s add owner_marked
# 获取Owner的UUID
execute store result score @s player_uuid run data get entity @s Owner[0]
# 计算玩家UUID是否相同
execute as @a run scoreboard players operation @s temp = @s player_uuid
scoreboard players operation @a temp -= @s player_uuid
# 设置信息
scoreboard players operation @s statPlayerLevel = @p[scores={temp=0}] statPlayerLevel
scoreboard players operation @s player_id = @p[scores={temp=0}] player_id
scoreboard players operation @s team = @p[scores={temp=0}] team

# 清理大厅与复活中出现的实体
execute if score @p[scores={temp=0}] state matches 0..1 run kill @s
# 触发事件
tag @p[scores={temp=0}] add projectile_owner
function modules:projectile/events/new
tag @a remove projectile_owner