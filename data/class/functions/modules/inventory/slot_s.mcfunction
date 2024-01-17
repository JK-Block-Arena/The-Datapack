# 在冷却中的格子上放置物品
$item replace entity @s[scores={count$(slot)=0,cd$(slot)=..3099},nbt=!{Inventory:[{Slot:0b,tag:{id:1}}]}] hotbar.$(slot) with birch_button{id:1}
$item replace entity @s[scores={count$(slot)=0,cd$(slot)=3100..},nbt=!{Inventory:[{Slot:0b,tag:{id:2}}]}] hotbar.$(slot) with stone_button{id:2}

# 设置格子的物品数
$scoreboard players operation @s[scores={count$(slot)=1..}] temp = @s count$(slot)
$scoreboard players operation @s[scores={count$(slot)=0}] temp = @s cd$(slot)
$scoreboard players operation @s[scores={count$(slot)=0,cd$(slot)=..3099}] temp /= #100 mem
$scoreboard players add @s[scores={count$(slot)=0,cd$(slot)=3100..}] temp 500
$scoreboard players operation @s[scores={count$(slot)=0,cd$(slot)=3100..}] temp /= #1000 mem
$item modify entity @s hotbar.$(slot) class:set_count