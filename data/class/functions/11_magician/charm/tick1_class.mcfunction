# 选择武器
execute as @s[scores={11_charm_mode=0,11_charm_time=0},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:11000}}]}] run function class:11_magician/charm/charge
execute as @s[scores={11_charm_mode=0,11_charm_time=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:11001}}]}] run function class:11_magician/charm/trigger
## 到时间自动选斧头
execute as @s[scores={11_charm_mode=0,11_charm_time=80}] run function class:11_magician/charm/trigger

# 武器展示
execute as @s[scores={11_charm_mode=0,11_charm_time=1..79}] run function class:11_magician/charm/show_select
execute as @s[scores={11_charm_mode=1..}] run function class:11_magician/charm/show_continue

# 武器二阶段（一次性）
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:11011}}]},scores={11_charm_skill=1}] run function class:11_magician/charm/weapons/refresh
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:11012}}]},scores={11_charm_skill=1}] run function class:11_magician/charm/weapons/refresh
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:11013}}]},scores={11_charm_skill=1}] run function class:11_magician/charm/weapons/refresh
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:11014}}]},scores={11_charm_skill=1}] run function class:11_magician/charm/weapons/refresh

# 武器buff
execute as @s[scores={11_charm_mode=1}] run function class:11_magician/charm/clear_debuff
effect give @s[scores={11_charm_mode=2}] speed 1 0
effect give @s[scores={11_charm_mode=4}] resistance 1 0