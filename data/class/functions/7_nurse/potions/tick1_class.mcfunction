execute as @s[scores={7_heal_storage=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:702}}]}] run function class:7_nurse/potions/heal_trigger
execute as @s[scores={7_strength_storage=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:703}}]}] run function class:7_nurse/potions/strength_trigger
execute as @s[scores={7_turtle_storage=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:704}}]}] run function class:7_nurse/potions/turtle_trigger

execute as @s[nbt={SelectedItem:{tag:{CustomModelData:702}}}] run function class:7_nurse/potions/aim_team
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:703}}}] run function class:7_nurse/potions/aim_team
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:704}}}] as @a[tag=!7_healer,distance=..8,gamemode=adventure] at @s run function class:7_nurse/potions/aim_all

# 判断药水格子减少储存
execute as @s[scores={potion_throw=1},nbt={SelectedItemSlot:1}] run scoreboard players remove @s 7_damage_storage 1
execute as @s[scores={potion_use=1},nbt={SelectedItemSlot:2}] run scoreboard players remove @s 7_heal_storage 1
execute as @s[scores={potion_use=1},nbt={SelectedItemSlot:3}] run scoreboard players remove @s 7_strength_storage 1
execute as @s[scores={potion_use=1},nbt={SelectedItemSlot:4}] run scoreboard players remove @s 7_turtle_storage 1
scoreboard players set @s potion_use 0
scoreboard players set @s potion_throw 0

# 输出显示药水存量
function class:7_nurse/potions/update
