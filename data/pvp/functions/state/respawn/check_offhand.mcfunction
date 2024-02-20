# 选职业
# 非混沌灵魂/一击必杀
execute unless score $mutation mem matches 2 unless score $mutation mem matches 11 unless entity @s[nbt={Inventory:[{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:28b},{Slot:29b},{Slot:30b},{Slot:31b},{Slot:32b},{Slot:19b},{Slot:8b}]}] at @s run function pvp:class/switch

# 正常游玩只能随机职业
execute if score $mutation mem matches 2 at @s[nbt=!{Inventory:[{Slot:8b}]},scores={tip_0_tutorial=5..}] run function pvp:class/switch
execute if score $mutation mem matches 11 at @s[nbt=!{Inventory:[{Slot:8b}]},scores={tip_0_tutorial=5..}] run function pvp:class/switch

# 回到大厅
execute unless score #match_mode mem matches 1 at @s[nbt=!{Inventory:[{Slot:7b}]}] run function pvp:state/respawn/return_lobby
execute if score #match_mode mem matches 1 at @s[nbt=!{Inventory:[{Slot:7b}]}] run tellraw @s [{"text": "💎  huh，休想离开哦。","color": "gold"}]