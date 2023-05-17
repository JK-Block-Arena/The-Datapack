
# 在冷却中的格子上放置物品
item replace entity @s[scores={count5=0,cd5=..3099},nbt=!{Inventory:[{Slot:4b,tag:{id:1}}]}] hotbar.4 with birch_button{id:1}
item replace entity @s[scores={count5=0,cd5=3100..},nbt=!{Inventory:[{Slot:4b,tag:{id:2}}]}] hotbar.4 with stone_button{id:2}

# 设置格子的物品数
scoreboard players operation @s[scores={count5=1..}] temp = @s count5
scoreboard players operation @s[scores={count5=0}] temp = @s cd5
scoreboard players operation @s[scores={count5=0,cd5=..3099}] temp /= #100 mem
scoreboard players add @s[scores={count5=0,cd5=3100..}] temp 500
scoreboard players operation @s[scores={count5=0,cd5=3100..}] temp /= #1000 mem
item modify entity @s hotbar.4 class:set_count
