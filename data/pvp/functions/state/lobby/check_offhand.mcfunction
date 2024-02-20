# 选职业
# 非混沌灵魂/一击必杀
execute unless score #match_type mem matches 1 unless score $mutation mem matches 2 unless score $mutation mem matches 11 unless entity @s[nbt={Inventory:[{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:28b},{Slot:29b},{Slot:30b},{Slot:31b},{Slot:32b},{Slot:19b},{Slot:8b}]}] at @s run function pvp:class/switch
# 训练场新手单独处理
execute unless score #match_type mem matches 1 if score $mutation mem matches 2 unless entity @s[nbt={Inventory:[{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:28b},{Slot:29b},{Slot:30b},{Slot:31b},{Slot:32b},{Slot:19b},{Slot:8b}]}] at @s[scores={tip_0_tutorial=3}] run function pvp:class/switch
execute unless score #match_type mem matches 1 if score $mutation mem matches 11 unless entity @s[nbt={Inventory:[{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:28b},{Slot:29b},{Slot:30b},{Slot:31b},{Slot:32b},{Slot:19b},{Slot:8b}]}] at @s[scores={tip_0_tutorial=3}] run function pvp:class/switch
# 正常游玩只能随机职业
execute unless score #match_type mem matches 1 if score $mutation mem matches 2 unless entity @s[nbt={Inventory:[{Slot:8b}]}] at @s[scores={tip_0_tutorial=5..}] run function pvp:class/switch
execute unless score #match_type mem matches 1 if score $mutation mem matches 11 unless entity @s[nbt={Inventory:[{Slot:8b}]}] at @s[scores={tip_0_tutorial=5..}] run function pvp:class/switch

# 非友谊赛选队
execute unless score #match_mode mem matches 1 at @s[scores={tip_0_tutorial=5..},nbt=!{Inventory:[{Slot:7b}]}] run function pvp:state/lobby/in/switch_team

# 友谊赛1v1
execute if score #match_type mem matches 1 unless entity @s[nbt={Inventory:[{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:28b},{Slot:29b},{Slot:30b},{Slot:31b},{Slot:32b}]}] at @s run function pvp:class/switch