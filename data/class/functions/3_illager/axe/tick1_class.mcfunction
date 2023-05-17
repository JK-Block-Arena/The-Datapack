# 检测副手
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:300}}]}] run function class:3_illager/axe/trigger_failed
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:301}}]}] run function class:3_illager/axe/trigger

# 技能持续
execute as @s[scores={3_axe_last=1..}] run function class:3_illager/axe/skill_continue