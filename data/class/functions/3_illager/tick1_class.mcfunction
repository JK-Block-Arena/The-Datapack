execute as @s[nbt={Inventory:[{Slot:-106b}]}] run tag @s add refresh_inventory
function class:3_illager/truck/tick1_class
execute as @s[scores={class_type=0}] run function class:3_illager/jump/tick1_class
execute as @s[scores={class_type=0}] run function class:3_illager/axe/tick1_class
execute as @s[scores={class_type=1}] run function class:3_illager/dash/tick1_class
execute as @s[scores={class_type=1}] run function class:3_illager/magic/tick1_class