scoreboard players set @s refresh_inv_cd 0

execute if score $skill_cd debug matches 3 run function class:modules/cooldown/tick2_global

# 设置物品栏
function class:modules/inventory/events/item
item replace entity @s[tag=invisible] armor.head with air
item replace entity @s[tag=invisible] armor.chest with air
item replace entity @s[tag=invisible] armor.legs with air
item replace entity @s[tag=invisible] armor.feet with air

# 设置格子中的物品
execute as @s[scores={count0=0..}] run function class:modules/inventory/slot_s {"slot":0}
execute as @s[scores={count1=0..}] run function class:modules/inventory/slot_s {"slot":1}
execute as @s[scores={count2=0..}] run function class:modules/inventory/slot_s {"slot":2}
execute as @s[scores={count3=0..}] run function class:modules/inventory/slot_s {"slot":3}
execute as @s[scores={count4=0..}] run function class:modules/inventory/slot_s {"slot":4}
execute as @s[scores={count5=0..}] run function class:modules/inventory/slot_s {"slot":5}
execute as @s[scores={count6=0..}] run function class:modules/inventory/slot_s {"slot":6}
execute as @s[scores={count7=0..}] run function class:modules/inventory/slot_s {"slot":7}
execute as @s[scores={count8=0..}] run function class:modules/inventory/slot_s {"slot":8}

# 设置护甲颜色
function class:modules/inventory/color

# 设置职业描述
function class:modules/inventory/events/description
