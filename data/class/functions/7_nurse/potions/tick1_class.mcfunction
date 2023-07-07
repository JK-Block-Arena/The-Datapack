execute as @s[scores={7_heal_st=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:702}}]}] run function class:7_nurse/potions/heal_trigger
execute as @s[scores={7_strength_st=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:703}}]}] run function class:7_nurse/potions/strength_trigger
execute as @s[scores={7_turtle_st=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:704}}]}] run function class:7_nurse/potions/turtle_trigger

execute as @s[nbt={SelectedItem:{tag:{CustomModelData:702}}}] run function class:7_nurse/potions/aim_team
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:703}}}] run function class:7_nurse/potions/aim_team
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:704}}}] as @a[tag=!7_healer,tag=!invisible,scores={state=2},distance=..8,gamemode=adventure] at @s run particle dust 1 1 1 1 ~ ~3.1 ~ 0 0 0 1 1 normal

# 判断药水格子减少储存
execute as @s[scores={potion_throw=1..},nbt={SelectedItemSlot:1}] run scoreboard players remove @s 7_damage_st 1
execute as @s[scores={potion_use=1},nbt={SelectedItemSlot:2}] run scoreboard players remove @s 7_heal_st 1
execute as @s[scores={potion_use=1},nbt={SelectedItemSlot:3}] run scoreboard players remove @s 7_strength_st 1
execute as @s[scores={potion_use=1},nbt={SelectedItemSlot:4}] run scoreboard players remove @s 7_turtle_st 1
execute if score $mutation mem matches 8 run effect give @s[scores={state=2,team=1..4,potion_throw=1..}] glowing 3
scoreboard players set @s potion_use 0
scoreboard players set @s potion_throw 0

# 输出显示药水存量
function class:7_nurse/potions/update
