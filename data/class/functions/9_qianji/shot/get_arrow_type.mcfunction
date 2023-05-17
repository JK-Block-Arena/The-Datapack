# 判断用的哪根箭，返回到 9_temp
scoreboard players set @s[scores={9_st4=1..}] 9_temp 3
scoreboard players set @s[scores={9_st3=1..}] 9_temp 2
scoreboard players set @s[scores={9_st2=1..}] 9_temp 1
scoreboard players set @s[scores={9_st1=1..}] 9_temp 0
scoreboard players set @s[scores={9_st1=1..},nbt={SelectedItemSlot:0}] 9_temp 0
scoreboard players set @s[scores={9_st2=1..},nbt={SelectedItemSlot:1}] 9_temp 1
scoreboard players set @s[scores={9_st3=1..},nbt={SelectedItemSlot:2}] 9_temp 2
scoreboard players set @s[scores={9_st4=1..},nbt={SelectedItemSlot:3}] 9_temp 3

item replace entity @s[scores={9_temp=0,statPlayerLevel=1},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:910}}]}] weapon.offhand with crossbow{CustomModelData:910,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:5}],display:{Name:'{"text":"重弩","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},HideFlags:63}
item replace entity @s[scores={9_temp=0,statPlayerLevel=2..3},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:910}}]}] weapon.offhand with crossbow{CustomModelData:910,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:4}],display:{Name:'{"text":"重弩","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},HideFlags:63}
item replace entity @s[scores={9_temp=0,statPlayerLevel=4},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:910}}]}] weapon.offhand with crossbow{CustomModelData:910,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:3}],display:{Name:'{"text":"重弩","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},HideFlags:63}
item replace entity @s[scores={9_temp=1},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:111}}]}] weapon.offhand with crossbow{CustomModelData:911,Unbreakable:1b,Enchantments:[{id:"piercing",lvl:2},{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},HideFlags:63}
item replace entity @s[scores={9_temp=2},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:112}}]}] weapon.offhand with crossbow{CustomModelData:912,Unbreakable:1b,Enchantments:[{id:"multishot",lvl:1},{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},HideFlags:63}
item replace entity @s[scores={9_temp=3},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},HideFlags:63}
