# 未使用的格子
item replace entity @s armor.feet with air
item replace entity @s armor.legs with air
item replace entity @s armor.chest with air
item replace entity @s armor.head with air

item replace entity @s hotbar.0 with air
item replace entity @s hotbar.6 with air

item replace entity @s weapon.offhand with air

# 选职业物品
execute unless score $mutation mem matches 2 unless score $mutation mem matches 8 run function pvp:class/refresh_inventory
execute if score $mutation mem matches 2 run function pvp:class/refresh_inventory2
execute if score $mutation mem matches 8 run function pvp:class/refresh_inventory2

# 开始物品
item replace entity @s hotbar.7 with amethyst_block{display:{Name:'[{"text":"","italic":false,"color":"light_purple"},"按 [",{"keybind":"key.swapOffhand"},"] 返回大厅"]'}}