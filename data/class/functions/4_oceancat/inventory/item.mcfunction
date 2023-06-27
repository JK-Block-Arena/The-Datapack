# 副手
item replace entity @s weapon.offhand with air

# 海神戟 - 唤雷
item replace entity @s[tag=!4_in_water,scores={4_trident_storage=1..,statPlayerLevel=1},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:401}}]}] hotbar.0 with trident{CustomModelData:401,Unbreakable:1b,Enchantments:[{id:"loyalty",lvl:2}],AttributeModifiers:[{UUID:[I;4,0,1,11],Amount:9,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.88, UUID: [I;4,0,1,12], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed",Slot:"mainhand"}]}
item replace entity @s[tag=!4_in_water,scores={4_trident_storage=1..,statPlayerLevel=2},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:401}}]}] hotbar.0 with trident{CustomModelData:401,Unbreakable:1b,Enchantments:[{id:"loyalty",lvl:2}],AttributeModifiers:[{UUID:[I;4,0,1,21],Amount:9,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.96, UUID: [I;4,0,1,22], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed",Slot:"mainhand"}]}
item replace entity @s[tag=!4_in_water,scores={4_trident_storage=1..,statPlayerLevel=3},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:401}}]}] hotbar.0 with trident{CustomModelData:401,Unbreakable:1b,Enchantments:[{id:"loyalty",lvl:1}],AttributeModifiers:[{UUID:[I;4,0,1,31],Amount:9,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -3.04, UUID: [I;4,0,1,32], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed",Slot:"mainhand"}]}
item replace entity @s[tag=!4_in_water,scores={4_trident_storage=1..,statPlayerLevel=4},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:401}}]}] hotbar.0 with trident{CustomModelData:401,Unbreakable:1b,Enchantments:[{id:"loyalty",lvl:1}],AttributeModifiers:[{UUID:[I;4,0,1,41],Amount:9,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -3.12, UUID: [I;4,0,1,42], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed",Slot:"mainhand"}]}
# 海神戟 - 激流
execute if score @s state matches 0..2 if score $mutation mem matches 3 run item replace entity @s[tag=4_in_water,scores={4_trident_storage=1..},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:402}}]}] hotbar.0 with trident{CustomModelData:402,Unbreakable:1b,Enchantments:[{id:"riptide",lvl:5}],AttributeModifiers:[{UUID:[I;4,0,1,51],Amount:8,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.9, UUID: [I;4,0,1,52], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed",Slot:"mainhand"}]}
execute unless score @s state matches 0..2 run item replace entity @s[tag=4_in_water,scores={4_trident_storage=1..},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:402}}]}] hotbar.0 with trident{CustomModelData:402,Unbreakable:1b,Enchantments:[{id:"riptide",lvl:3}],AttributeModifiers:[{UUID:[I;4,0,1,51],Amount:8,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.9, UUID: [I;4,0,1,52], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed",Slot:"mainhand"}]}
execute unless score $mutation mem matches 3 run item replace entity @s[tag=4_in_water,scores={4_trident_storage=1..},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:402}}]}] hotbar.0 with trident{CustomModelData:402,Unbreakable:1b,Enchantments:[{id:"riptide",lvl:3}],AttributeModifiers:[{UUID:[I;4,0,1,51],Amount:8,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.9, UUID: [I;4,0,1,52], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed",Slot:"mainhand"}]}
item replace entity @s[scores={4_trident_storage=0},nbt={Inventory:[{Slot:0b}]}] hotbar.0 with air
scoreboard players set @s count1 -1

# 深海之心
item replace entity @s[scores={4_heart_storage=1..},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:403}}]}] hotbar.1 with heart_of_the_sea{CustomModelData:403}
scoreboard players operation @s count2 = @s 4_heart_storage
scoreboard players operation @s cd2 = @s 4_heart_cd

# 水生
item replace entity @s[scores={4_water_storage=1..},nbt=!{Inventory:[{Slot:8b,tag:{CustomModelData:408}}]}] hotbar.8 with scute{CustomModelData:408}
scoreboard players operation @s count9 = @s 4_water_storage
scoreboard players operation @s cd9 = @s 4_water_cd

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

# 护甲
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:420}}]}] armor.head with turtle_helmet{CustomModelData:420,display:{Name:'{"text":"技能：海水熟捻","italic": false,"color":"aqua"}',Lore:['{"text":"你在水中也能以正常速度移动。","italic": false,"color":"gray"}']},Enchantments:[{"id":"minecraft:depth_strider","lvl":3}],AttributeModifiers:[],HideFlags:1023,Unbreakable:1b,NeedColor:0b}
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:102b,tag:{CustomModelData:421}}]}] armor.chest with leather_chestplate{CustomModelData:421,Unbreakable:1b,display:{Name:'{"text":"便服","italic": false,"color":"white"}',Lore:['{"text":"便于分辨敌友的轻便服装。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:1b}
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
