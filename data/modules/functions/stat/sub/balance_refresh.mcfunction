# 更新表现等级
scoreboard players set @s[scores={state=0..2,statPlayerKd=..3600}] statPlayerLevel 1
scoreboard players set @s[scores={state=0..2,statPlayerKd=3601..5000}] statPlayerLevel 2
scoreboard players set @s[scores={state=0..2,statPlayerKd=5001..6399}] statPlayerLevel 3
scoreboard players set @s[scores={state=0..2,statPlayerKd=6400..}] statPlayerLevel 4
# 训练场中关闭表现等级差异
scoreboard players set @s[scores={state=3}] statPlayerLevel 2
# Debug 关闭
execute if score $balance_dynamic debug matches 1 run scoreboard players set @s statPlayerLevel 2

# 魔改速度
attribute @s[scores={statPlayerLevel=1}] generic.movement_speed base set 0.106
attribute @s[scores={statPlayerLevel=2}] generic.movement_speed base set 0.102
attribute @s[scores={statPlayerLevel=3}] generic.movement_speed base set 0.098
attribute @s[scores={statPlayerLevel=4}] generic.movement_speed base set 0.094