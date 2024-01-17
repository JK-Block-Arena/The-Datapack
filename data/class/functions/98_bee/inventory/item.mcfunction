# 副手
item replace entity @s weapon.offhand with air
# 蜂蜜采集器
item replace entity @s[nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:9801}}]}] hotbar.0 with golden_hoe{CustomModelData:9801,AttributeModifiers:[{UUID:[I;98,0,1,1],Amount:1.3,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation:0,Amount:1,UUID:[I;98,0,1,2],AttributeName:"generic.attack_speed",Name:"generic.attackSpeed"}],Unbreakable:1b,HideFlags:63}
scoreboard players set @s count0 -1
# 蜂蜜瓶
item replace entity @s[scores={98_bottle_st=1..},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:9802}}]}] hotbar.1 with honey_bottle{CustomModelData:9802}
scoreboard players operation @s count1 = @s 98_bottle_st
scoreboard players operation @s cd1 = @s 98_bottle_cd
# 蜂蜜饯
item replace entity @s[scores={98_block_st=1..},nbt=!{Inventory:[{Slot:2b,tag:{CustomModelData:9803}}]}] hotbar.2 with dragon_breath{CustomModelData:9803}
scoreboard players operation @s count2 = @s 98_block_st
scoreboard players operation @s cd2 = @s 98_block_cd
# 空格子
item replace entity @s hotbar.3 with air
scoreboard players set @s count3 -1
item replace entity @s hotbar.4 with air
scoreboard players set @s count4 -1
item replace entity @s hotbar.5 with air
scoreboard players set @s count5 -1
item replace entity @s hotbar.6 with air
scoreboard players set @s count6 -1
item replace entity @s hotbar.7 with air
scoreboard players set @s count7 -1
item replace entity @s hotbar.8 with air
scoreboard players set @s count8 -1

# 护甲
item replace entity @s[nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:9811}}]}] armor.head with honey_block{CustomModelData:9811,Unbreakable:1b,display:{Name:'{"text":"蜂蜜头盔","italic": false,"color":"white"}',Lore:['{"text":"随时补充蜂蜜。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
item replace entity @s[nbt=!{Inventory:[{Slot:102b,tag:{CustomModelData:9812}}]}] armor.chest with leather_chestplate{CustomModelData:9812,Unbreakable:1b,display:{Name:'{"text":"便服","italic": false,"color":"white"}',Lore:['{"text":"便于分辨敌友的轻便服装。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:1b}
item replace entity @s armor.legs with air
item replace entity @s[nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:9814}}]}] armor.feet with golden_boots{CustomModelData:9814,Unbreakable:1b,display:{Name:'{"text":"蜂蜜靴","italic": false,"color":"white"}',Lore:['{"text":"走在蜂蜜块上就像走在家里一样。","italic": false,"color":"gray"}']},AttributeModifiers:[],Enchantments:[{id:"protection",lvl:1}],HideFlags:1023,NeedColor:0b}