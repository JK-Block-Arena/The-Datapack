item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air

item replace entity @s container.28 with air
item replace entity @s container.29 with air
item replace entity @s container.30 with air
item replace entity @s container.31 with air
item replace entity @s container.32 with air

item replace entity @s container.19 with air

item replace entity @s hotbar.8 with honeycomb{display:{Lore:['{"text":"选择随机职业。","italic":false,"color":"gray"}'],Name:'[{"text":"","italic":false},{"text":"随机职业","color":"aqua"}," - 按 [",{"keybind":"key.swapOffhand"},"] 选择"]'}}
execute if score @s class matches 10000 run function pvp:class/random