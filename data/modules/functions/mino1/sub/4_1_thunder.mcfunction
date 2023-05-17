advancement revoke @s only modules:mino1/4_1_thunder

# 寻找攻击者雷电
execute at @e[type=lightning_bolt,sort=nearest,limit=1] run tag @e[tag=lightning_marker,sort=nearest,limit=1] add mino_thunder

# 标记攻击者
tag @s add mino_victim
execute as @e[tag=mino_thunder] at @s run function modules:mino1/sub/murder

# 04010：三叉戟引雷
scoreboard players set @s mino_type_now 04010
# 04011：辉煌裂片击中敌方
execute if entity @e[tag=mino_thunder,tag=mino_guardian] run scoreboard players set @s mino_type_now 04011
# 04012：辉煌裂片击中友方
tag @s[scores={mino_type_now=04011}] add mino_guardian
execute as @a[team=red] if score @s player_id = @p[tag=mino_guardian,team=red] mino_source_now run scoreboard players set @a[tag=mino_guardian] mino_type_now 04012
execute as @a[team=blue] if score @s player_id = @p[tag=mino_guardian,team=blue] mino_source_now run scoreboard players set @a[tag=mino_guardian] mino_type_now 04012
execute as @a[team=green] if score @s player_id = @p[tag=mino_guardian,team=green] mino_source_now run scoreboard players set @a[tag=mino_guardian] mino_type_now 04012
execute as @a[team=yellow] if score @s player_id = @p[tag=mino_guardian,team=yellow] mino_source_now run scoreboard players set @a[tag=mino_guardian] mino_type_now 04012
tag @s remove mino_guardian

# 击中友方：标记攻击者
tag @s add mino_victim
execute if score @s mino_type_now matches 04012 as @e[tag=mino_thunder] at @s run function modules:mino1/sub/murder_sub

# 清理
tag @e remove mino_thunder