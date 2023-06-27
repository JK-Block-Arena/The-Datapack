# 副手
item replace entity @s weapon.offhand with air
# 剪刀
item replace entity @s[scores={statPlayerLevel=1},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:801}}]}] hotbar.0 with shears{CustomModelData:801,AttributeModifiers:[{UUID:[I;8,0,1,1],Amount:2,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation:0, Amount:-2.58,UUID:[I;8,0,1,2], AttributeName:"generic.attack_speed",Name:"generic.attackSpeed"}],Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={statPlayerLevel=2},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:801}}]}] hotbar.0 with shears{CustomModelData:801,AttributeModifiers:[{UUID:[I;8,0,1,1],Amount:2,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation:0, Amount:-2.67,UUID:[I;8,0,1,2], AttributeName:"generic.attack_speed",Name:"generic.attackSpeed"}],Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={statPlayerLevel=3},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:801}}]}] hotbar.0 with shears{CustomModelData:801,AttributeModifiers:[{UUID:[I;8,0,1,1],Amount:2,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation:0, Amount:-2.73,UUID:[I;8,0,1,2], AttributeName:"generic.attack_speed",Name:"generic.attackSpeed"}],Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={statPlayerLevel=4},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:801}}]}] hotbar.0 with shears{CustomModelData:801,AttributeModifiers:[{UUID:[I;8,0,1,1],Amount:2,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation:0, Amount:-2.82,UUID:[I;8,0,1,2], AttributeName:"generic.attack_speed",Name:"generic.attackSpeed"}],Unbreakable:1b,HideFlags:63}
scoreboard players set @s count1 -1

# 穿刺
item replace entity @s[scores={8_pierce_storage=1..},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:802}}]}] hotbar.1 with end_rod{CustomModelData:802}
scoreboard players operation @s count2 = @s 8_pierce_storage
scoreboard players operation @s cd2 = @s 8_pierce_cd

# 画地为牢
item replace entity @s[scores={8_wave_storage=1..},nbt=!{Inventory:[{Slot:2b,tag:{CustomModelData:803}}]}] hotbar.2 with music_disc_cat{CustomModelData:803}
scoreboard players operation @s count3 = @s 8_wave_storage
scoreboard players operation @s cd3 = @s 8_wave_cd

# 穿刺开关
item replace entity @s[scores={8_pierce_tp=1},nbt=!{Inventory:[{Slot:8b,tag:{CustomModelData:809}}]}] hotbar.8 with white_wool{CustomModelData:809}
item replace entity @s[scores={8_pierce_tp=0},nbt=!{Inventory:[{Slot:8b,tag:{CustomModelData:809}}]}] hotbar.8 with black_wool{CustomModelData:809}
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
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:810}}]}] armor.head from block 6 244 22 container.2
item replace entity @s armor.chest with air
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:101b,tag:{CustomModelData:811}}]}] armor.legs with leather_leggings{CustomModelData:811,Unbreakable:1b,display:{Name:'{"text":"便服","italic": false,"color":"white"}',Lore:['{"text":"便于分辨敌友的裤子。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:1b}
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:100b,tag:{CustomModelData:812}}]}] armor.feet with iron_boots{CustomModelData:812,Unbreakable:1b,display:{Name:'{"text":"防夹靴","italic": false,"color":"white"}',Lore:['{"text":"减少队内夹子造成的伤害。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
