# 选职业
# 非混沌灵魂/一击必杀
execute unless score $mutation mem matches 2 unless score $mutation mem matches 8 unless entity @s[nbt={Inventory:[{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:28b},{Slot:29b},{Slot:30b},{Slot:31b},{Slot:32b},{Slot:8b}]}] at @s run function pvp:class/switch_class
# 训练场新手单独处理
execute if score $mutation mem matches 2 unless entity @s[nbt={Inventory:[{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:28b},{Slot:29b},{Slot:30b},{Slot:31b},{Slot:32b},{Slot:8b}]}] at @s[scores={tip_0_tutorial=3}] run function pvp:class/switch_class
execute if score $mutation mem matches 8 unless entity @s[nbt={Inventory:[{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:28b},{Slot:29b},{Slot:30b},{Slot:31b},{Slot:32b},{Slot:8b}]}] at @s[scores={tip_0_tutorial=3}] run function pvp:class/switch_class
# 正常游玩只能随机职业
execute if score $mutation mem matches 2 unless entity @s[nbt={Inventory:[{Slot:8b}]}] at @s[scores={tip_0_tutorial=5..}] run function pvp:class/switch_class
execute if score $mutation mem matches 8 unless entity @s[nbt={Inventory:[{Slot:8b}]}] at @s[scores={tip_0_tutorial=5..}] run function pvp:class/switch_class

# 选队
execute unless data entity @s[scores={tip_0_tutorial=5..}] Inventory[{Slot:7b}] at @s run function pvp:state/lobby/in/switch_team
