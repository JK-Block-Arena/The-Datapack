# 记录实际伤害
scoreboard players operation @s mino_source_real = @s mino_source_now

# 重置连杀计时、仇恨计时
scoreboard players set @a[tag=mino_murder_new,scores={killComboReset=..15}] killComboReset 15
scoreboard players set @s mino_forgive_timer 15

# 阻止提示
scoreboard players set @a[tag=mino_murder_new] tip_battle_delay 10
scoreboard players set @s tip_battle_delay 10
