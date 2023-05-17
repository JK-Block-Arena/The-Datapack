
# 在冷却中的格子上放置物品
item replace entity @s[scores={count2=0,cd2=..3099},nbt=!{Inventory:[{Slot:1b,tag:{id:1}}]}] hotbar.1 with birch_button{id:1}
item replace entity @s[scores={count2=0,cd2=3100..},nbt=!{Inventory:[{Slot:1b,tag:{id:2}}]}] hotbar.1 with stone_button{id:2}

# 设置格子的物品数
scoreboard players operation @s[scores={count2=1..}] temp = @s count2
scoreboard players operation @s[scores={count2=0}] temp = @s cd2
scoreboard players operation @s[scores={count2=0,cd2=..3099}] temp /= #100 mem
scoreboard players add @s[scores={count2=0,cd2=3100..}] temp 500
scoreboard players operation @s[scores={count2=0,cd2=3100..}] temp /= #1000 mem
item modify entity @s hotbar.1 class:set_count
