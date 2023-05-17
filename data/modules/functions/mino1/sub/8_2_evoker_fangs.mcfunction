advancement revoke @s only modules:mino1/8_2_evoker_fangs

# 寻找攻击者夹子
execute at @e[type=evoker_fangs,sort=nearest,limit=1] run tag @e[tag=8_fangs_marker,sort=nearest,limit=1] add mino_fangs

# 标记攻击者
tag @s add mino_victim
execute as @e[tag=mino_fangs] at @s run function modules:mino1/sub/murder

# 夹子咬人
scoreboard players set @s mino_type_now 08020
effect give @s mining_fatigue 5 0
effect give @s slowness 5 0

# 清理
tag @e remove mino_fangs
