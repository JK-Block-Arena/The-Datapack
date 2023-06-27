execute as @s[nbt={Inventory:[{Slot:-106b}]}] run tag @s add refresh_inventory
function class:2_shadow/attack/tick1_class
function class:2_shadow/pearl/tick1_class
execute if score $mutation mem matches 8 run effect give @s[nbt={Inventory:[{Slot:-106b}]},scores={state=2,team=1..4}] glowing 3