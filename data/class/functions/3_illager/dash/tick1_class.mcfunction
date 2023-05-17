# 检测副手斧头
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:300}}]}] run function class:3_illager/dash/check

# 冲刺粒子
execute as @s[scores={3_dash_last=-6..}] run particle campfire_cosy_smoke ~ ~0.4 ~ 0.15 0.15 0.15 0.002 2

# 冲刺持续
execute as @s[scores={3_dash_last=1..}] run function class:3_illager/dash/continue
scoreboard players remove @s[scores={3_dash_last=-19..}] 3_dash_last 1

# 冲刺冷却
execute as @s[scores={3_dash_storage=..2}] run function class:3_illager/dash/cooldown