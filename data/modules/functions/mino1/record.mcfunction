# 实际上记录伤害的方法
# 需要 mino_source_now 与 mino_type_now 作为参数

# 选中攻击者
tag @s add mino_self
execute if score @s player_id = @s mino_source_now run scoreboard players set @s mino_source_now 0
execute as @a if score @s player_id = @p[tag=mino_self] mino_source_now run tag @s add mino_murder

execute if score $mutation mem matches 9 if score #9_select mem matches 4 if score #9_time mem matches 1.. run tag @a[tag=mino_murder,scores={team=1..4}] add 9_select_fail_1
execute if score $mutation mem matches 9 if score #9_select mem matches 5 if score #9_time mem matches 1.. run tag @s add 9_select_fail_1

# Debug
execute if score $track_damage debug matches 1 run function modules:mino1/debug

# 触发追踪
function modules:mino2/sub/record

# 触发事件
function modules:mino1/events/player_hurt

# 清理
tag @s remove mino_self
tag @a remove mino_murder