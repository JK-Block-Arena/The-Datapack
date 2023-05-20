# 烟花火箭
item replace entity @s weapon.offhand with firework_rocket 4

# 弩
scoreboard players set @s count1 -1

# 三叉戟
item replace entity @s[scores={99_trident_st=1},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:401}}]}] hotbar.1 with trident{CustomModelData:401,Unbreakable:1b,Enchantments:[{id:"loyalty",lvl:3},{id:"sharpness",lvl:1}]}
item replace entity @s[scores={99_trident_st=0},nbt={Inventory:[{Slot:1b}]}] hotbar.1 with air
scoreboard players set @s count2 -1

# 弓
item replace entity @s[nbt=!{Inventory:[{Slot:2b,tag:{CustomModelData:110}}]}] hotbar.2 with bow{CustomModelData:110,Unbreakable:1b,Enchantments:[{id:"power",lvl:1},{id:"infinity",lvl:1}]}
scoreboard players set @s count3 -1

# 箭
item replace entity @s hotbar.8 with tipped_arrow{CustomPotionColor:16644858} 4
scoreboard players set @s count9 -1

# 空格子
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

# 护甲
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:9920}}]}] armor.head with netherite_helmet{CustomModelData:9920,Unbreakable:1b,display:{Name:'{"text":"防空头盔","italic": false,"color":"aqua"}',Lore:['{"text":"实际上没用...","italic": false,"color":"gray"}']},Enchantments:[{id:"protection",lvl:1}],AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:102b,tag:{CustomModelData:9921}}]}] armor.chest with leather_chestplate{CustomModelData:9921,Unbreakable:1b,display:{Name:'{"text":"便服","italic": false,"color":"white"}',Lore:['{"text":"方便分辨敌友的服装。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:1b}
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
