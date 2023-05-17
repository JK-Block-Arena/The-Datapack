# 检查新状态
tag @s remove invisible
tag @s[nbt={ActiveEffects:[{Id:14}]}] add invisible

# 检查状态变更
tag @s[tag=invisible,tag=!invisible_last] add refresh_inventory
tag @s[tag=!invisible,tag=invisible_last] add refresh_inventory

# 赋予老状态
tag @s[tag=!invisible] remove invisible_last
tag @s[tag=invisible] add invisible_last