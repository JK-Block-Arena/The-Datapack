
# 在冷却中的格子上放置物品
item replace entity @s[scores={count3=0,cd3=..3099},nbt=!{Inventory:[{Slot:2b,tag:{id:1}}]}] hotbar.2 with birch_button{id:1}
item replace entity @s[scores={count3=0,cd3=3100..},nbt=!{Inventory:[{Slot:2b,tag:{id:2}}]}] hotbar.2 with stone_button{id:2}

# 设置格子的物品数
scoreboard players operation @s[scores={count3=1..}] temp = @s count3
scoreboard players operation @s[scores={count3=0}] temp = @s cd3
scoreboard players operation @s[scores={count3=0,cd3=..3099}] temp /= #100 mem
scoreboard players add @s[scores={count3=0,cd3=3100..}] temp 500
scoreboard players operation @s[scores={count3=0,cd3=3100..}] temp /= #1000 mem
item modify entity @s hotbar.2 class:set_count
