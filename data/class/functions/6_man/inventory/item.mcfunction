# 副手
item replace entity @s weapon.offhand with air
# 桃木剑
# 放到drop_attack了
scoreboard players set @s count1 -1
# 薄荷糖
item replace entity @s[scores={6_mint_storage=1..},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:602}}]}] hotbar.1 with dragon_breath{CustomModelData:602}
scoreboard players operation @s count2 = @s 6_mint_storage
scoreboard players operation @s cd2 = @s 6_mint_cd
# 空格子
item replace entity @s hotbar.2 with air
scoreboard players set @s count3 -1
item replace entity @s hotbar.3 with air
scoreboard players set @s count4 -1
item replace entity @s hotbar.4 with air
scoreboard players set @s count5 -1
item replace entity @s hotbar.5 with air
scoreboard players set @s count6 -1
item replace entity @s hotbar.6 with air
scoreboard players set @s count7 -1
item replace entity @s hotbar.7 with air
scoreboard players set @s count8 -1
item replace entity @s hotbar.8 with air
scoreboard players set @s count9 -1

# 护甲
item replace entity @s[nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:603}}]}] armor.head with chainmail_helmet{CustomModelData:603,Unbreakable:1b,display:{Name:'{"text":"铁链头盔","italic": false,"color":"white"}',Lore:['{"text":"这是他曾奔赴战场的证明。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
#,'""','[{"text":"❤ 生命  ","italic": false,"color":"red"},{"text":"+ 6","italic": false,"color":"white"}]'
item replace entity @s[nbt=!{Inventory:[{Slot:102b,tag:{CustomModelData:604}}]}] armor.chest with leather_chestplate{CustomModelData:604,Unbreakable:1b,display:{Name:'{"text":"便服","italic": false,"color":"white"}',Lore:['{"text":"便于分辨敌友的轻便服装。","italic": false,"color":"gray"}','{"text":"风尘仆仆是最好的写照。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:1b}
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
