
# 在冷却中的格子上放置物品
item replace entity @s[scores={count7=0,cd7=..3099},nbt=!{Inventory:[{Slot:6b,tag:{id:1}}]}] hotbar.6 with birch_button{id:1}
item replace entity @s[scores={count7=0,cd7=3100..},nbt=!{Inventory:[{Slot:6b,tag:{id:2}}]}] hotbar.6 with stone_button{id:2}

# 设置格子的物品数
scoreboard players operation @s[scores={count7=1..}] temp = @s count7
scoreboard players operation @s[scores={count7=0}] temp = @s cd7
scoreboard players operation @s[scores={count7=0,cd7=..3099}] temp /= #100 mem
scoreboard players add @s[scores={count7=0,cd7=3100..}] temp 500
scoreboard players operation @s[scores={count7=0,cd7=3100..}] temp /= #1000 mem
item modify entity @s hotbar.6 class:set_count
