# 记录最终伤害
scoreboard players operation @s mino_type_last = @s mino_type_now
scoreboard players operation @s mino_source_last = @s mino_source_now
scoreboard players set @s[scores={state=3}] mino_forgive_timer 15

# 如果新攻击者异队，则选择新攻击者
execute as @a if score @s player_id = @p[tag=mino_self] mino_source_real run tag @s add mino_murder_real
execute as @s[team=red] run tag @a[tag=mino_murder,team=!red] add mino_murder_new
execute as @s[team=blue] run tag @a[tag=mino_murder,team=!blue] add mino_murder_new
execute as @s[team=green] run tag @a[tag=mino_murder,team=!green] add mino_murder_new
execute as @s[team=yellow] run tag @a[tag=mino_murder,team=!yellow] add mino_murder_new

# 如果新攻击者同队，老攻击者异队，则选择老攻击者
execute unless entity @a[tag=mino_murder_new] as @s[team=red] run tag @a[tag=mino_murder_real,team=!red] add mino_murder_new
execute unless entity @a[tag=mino_murder_new] as @s[team=blue] run tag @a[tag=mino_murder_real,team=!blue] add mino_murder_new
execute unless entity @a[tag=mino_murder_new] as @s[team=green] run tag @a[tag=mino_murder_real,team=!green] add mino_murder_new
execute unless entity @a[tag=mino_murder_new] as @s[team=yellow] run tag @a[tag=mino_murder_real,team=!yellow] add mino_murder_new

# 上述条件未命中，则先选新攻击者，再选老攻击者
execute unless entity @a[tag=mino_murder_new] run tag @a[tag=mino_murder] add mino_murder_new
execute unless entity @a[tag=mino_murder_new] run tag @a[tag=mino_murder_real] add mino_murder_new

# 记录实际伤害
execute if entity @a[tag=mino_murder_new,tag=mino_murder] run scoreboard players operation @s mino_type_real = @s mino_type_now
execute if entity @a[tag=mino_murder_new,tag=mino_murder] unless score @s mino_source_now = @s mino_source_real run function modules:mino2/record_real

# 清理
tag @a remove mino_murder_real
tag @a remove mino_murder_new
