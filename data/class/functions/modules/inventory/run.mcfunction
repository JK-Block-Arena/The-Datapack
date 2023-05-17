scoreboard players set @s refresh_inv_cd 0

execute if score $skill_cd debug matches 3 run function class:modules/cooldown/tick2_global

# 设置物品栏
function class:modules/inventory/events/item
item replace entity @s[tag=invisible] armor.head with air
item replace entity @s[tag=invisible] armor.chest with air
item replace entity @s[tag=invisible] armor.legs with air
item replace entity @s[tag=invisible] armor.feet with air

# 设置格子中的物品
execute as @s[scores={count1=0..}] run function class:modules/inventory/slot_1
execute as @s[scores={count2=0..}] run function class:modules/inventory/slot_2
execute as @s[scores={count3=0..}] run function class:modules/inventory/slot_3
execute as @s[scores={count4=0..}] run function class:modules/inventory/slot_4
execute as @s[scores={count5=0..}] run function class:modules/inventory/slot_5
execute as @s[scores={count6=0..}] run function class:modules/inventory/slot_6
execute as @s[scores={count7=0..}] run function class:modules/inventory/slot_7
execute as @s[scores={count8=0..}] run function class:modules/inventory/slot_8
execute as @s[scores={count9=0..}] run function class:modules/inventory/slot_9

# 设置护甲颜色
function class:modules/inventory/color

# 设置职业描述
function class:modules/inventory/events/description
