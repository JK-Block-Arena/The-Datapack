# 执行者为受伤的玩家，攻击者有标签 mino_murder，通过 mino_type_now 获取伤害种类

# 厄难之血
execute if score $mutation mem matches 4 unless score @p[tag=mino_murder,scores={state=1..2,team=1..4}] team = @s team run function modules:mutation/player_hurt/4

# 杀戮光环
execute if score $mutation mem matches 6 as @a[tag=mino_murder,scores={state=1..2,team=1..4}] run function modules:mutation/player_hurt/6