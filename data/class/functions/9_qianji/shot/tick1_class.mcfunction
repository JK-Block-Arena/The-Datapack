# 防止卡bug
item replace entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] weapon.mainhand with air

# 检查射箭
execute as @s[scores={9_arrow=1..,9_shot=1..}] run function class:9_qianji/shot/on_shot

# 检查装载
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:tipped_arrow"}]}}]}] 9_arrow 1
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:firework_rocket"}]}}]}] 9_arrow 1

# 检查选择的格子改变
execute at @s[scores={9_arrow=0}] run function class:9_qianji/shot/check_slot

# 副手弩
execute at @s[scores={9_arrow=0}] run function class:9_qianji/shot/get_arrow_type
execute at @s[scores={9_arrow=1}] run function class:9_qianji/shot/shot_arrow_type
