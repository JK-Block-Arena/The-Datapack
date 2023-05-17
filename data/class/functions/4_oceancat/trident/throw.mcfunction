# 如果三叉戟还在说明是激流；不在说明是忠诚
tag @s[nbt=!{Inventory:[{Slot:0b}]}] add is_throw

# 引雷：减少存储量
scoreboard players remove @s[tag=!4_trident_melee,tag=is_throw] 4_trident_storage 1

# 激流：开始滞空
effect give @s[tag=!4_trident_melee,tag=!is_throw,scores={statPlayerLevel=1}] slow_falling 6 0 true
effect give @s[tag=!4_trident_melee,tag=!is_throw,scores={statPlayerLevel=2..3}] slow_falling 5 0 true
effect give @s[tag=!4_trident_melee,tag=!is_throw,scores={statPlayerLevel=4}] slow_falling 4 0 true
tag @s[tag=!4_trident_melee,tag=!is_throw] add 4_fly

# 打断静息治疗
tag @s add brRegenBreak

# 清理
tag @s remove is_throw
tag @s remove 4_trident_melee
scoreboard players reset @s 4_trident_throw
