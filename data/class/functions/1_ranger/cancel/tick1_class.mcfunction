execute if score @s 1_cancel matches 0 unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] run function class:1_ranger/cancel/trigger
execute if score @s 1_cancel matches 1.. run function class:1_ranger/cancel/hold
