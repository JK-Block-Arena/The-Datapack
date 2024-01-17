# 百变符
item replace entity @s[nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:11000}}]},scores={11_charm_st=1..,11_charm_mode=0,11_charm_time=0}] hotbar.0 with paper{CustomModelData:11000}
item replace entity @s[nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:11001}}]},scores={11_charm_st=1..,11_charm_mode=0,11_charm_time=1..}] hotbar.0 with paper{CustomModelData:11001,HideFlags:63,Enchantments:[{id:"minecraft:luck_of_the_sea",lvl:1s}]}

## 附魔前
item replace entity @s[nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:11011}}]},scores={11_charm_mode=1,11_charm_skill=0..1}] hotbar.0 with book{CustomModelData:11011,AttributeModifiers:[{UUID:[I;11,0,1,1],Amount:3,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.6, UUID: [I;11,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63}
item replace entity @s[nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:11012}}]},scores={11_charm_mode=2,11_charm_skill=0..1}] hotbar.0 with stone_hoe{CustomModelData:11012,AttributeModifiers:[{UUID:[I;11,0,1,1],Amount:5,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.8, UUID: [I;11,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63}
item replace entity @s[nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:11013}}]},scores={11_charm_mode=3,11_charm_skill=0..1}] hotbar.0 with stone_sword{CustomModelData:11013,AttributeModifiers:[{UUID:[I;11,0,1,1],Amount:7,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -3, UUID: [I;11,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63}
item replace entity @s[nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:11014}}]},scores={11_charm_mode=4,11_charm_skill=0..1}] hotbar.0 with stone_axe{CustomModelData:11014,AttributeModifiers:[{UUID:[I;11,0,1,1],Amount:9,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -3.2, UUID: [I;11,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63}

## 附魔后
item replace entity @s[nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:11015}}]},scores={11_charm_mode=1,11_charm_skill=2}] hotbar.0 with book{CustomModelData:11015,AttributeModifiers:[{UUID:[I;11,0,1,1],Amount:3,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.6, UUID: [I;11,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"minecraft:knockback",lvl:2s}]}
item replace entity @s[nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:11016}}]},scores={11_charm_mode=2,11_charm_skill=2}] hotbar.0 with stone_hoe{CustomModelData:11016,AttributeModifiers:[{UUID:[I;11,0,1,1],Amount:10,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.8, UUID: [I;11,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"minecraft:luck_of_the_sea",lvl:1s}]}
item replace entity @s[nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:11017}}]},scores={11_charm_mode=3,11_charm_skill=2}] hotbar.0 with stone_sword{CustomModelData:11017,AttributeModifiers:[{UUID:[I;11,0,1,1],Amount:7,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -3, UUID: [I;11,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}]}
item replace entity @s[nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:11018}}]},scores={11_charm_mode=4,11_charm_skill=2}] hotbar.0 with stone_axe{CustomModelData:11018,AttributeModifiers:[{UUID:[I;11,0,1,1],Amount:9,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -3.2, UUID: [I;11,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"minecraft:luck_of_the_sea",lvl:1s}]}

scoreboard players operation @s[scores={11_charm_mode=0}] count0 = @s 11_charm_st
scoreboard players operation @s[scores={11_charm_mode=0}] cd0 = @s 11_charm_cd
scoreboard players set @s[scores={11_charm_mode=1..4}] count0 -1

# 火球
item replace entity @s[scores={11_fireball_st=1..},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:1106}}]}] hotbar.1 with blaze_powder{CustomModelData:1106}
scoreboard players operation @s count1 = @s 11_fireball_st
scoreboard players operation @s cd1 = @s 11_fireball_cd

# 传送
item replace entity @s[scores={11_tp_st=1..,11_tp_wait=-1,11_tp_last_wait=-1},nbt=!{Inventory:[{Slot:2b,tag:{CustomModelData:11070}}]}] hotbar.2 with feather{CustomModelData:11070}
item replace entity @s[scores={11_tp_wait=1..},nbt=!{Inventory:[{Slot:2b,tag:{CustomModelData:11072}}]}] hotbar.2 with barrier{CustomModelData:11072}
item replace entity @s[scores={11_tp_last_wait=1..},nbt=!{Inventory:[{Slot:2b,tag:{CustomModelData:11072}}]}] hotbar.2 with barrier{CustomModelData:11072}
item replace entity @s[scores={11_tp_last=1..},nbt=!{Inventory:[{Slot:2b,tag:{CustomModelData:11071}}]}] hotbar.2 with gold_nugget{CustomModelData:11071}

scoreboard players operation @s count2 = @s 11_tp_st
scoreboard players operation @s cd2 = @s 11_tp_cd

# 图腾
item replace entity @s[scores={11_totem_st=1..,11_totem_score1=..15},nbt=!{Inventory:[{Slot:2b,tag:{CustomModelData:11081}}]}] hotbar.8 with structure_void{CustomModelData:11081}
item replace entity @s[scores={11_totem_st=1..,11_totem_score1=16..},nbt=!{Inventory:[{Slot:2b,tag:{CustomModelData:11082}}]}] hotbar.8 with barrier{CustomModelData:11082}

scoreboard players operation @s count8 = @s 11_totem_st
scoreboard players set @s[scores={11_totem_st=1..}] cd8 -1
scoreboard players operation @s[scores={11_totem_st=..0}] cd8 = @s 11_totem_cd

# 副手
item replace entity @s[scores={11_totem_st=..0}] weapon.offhand with air
item replace entity @s[scores={11_totem_st=1..,11_totem_score1=..15}] weapon.offhand with air
item replace entity @s[scores={11_totem_st=1..,11_totem_score1=16..},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:11083}}]}] weapon.offhand with totem_of_undying{CustomModelData:11083}

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

# 护甲
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:1101}}]}] armor.head with golden_helmet{CustomModelData:1101,Unbreakable:1b,display:{Name:'{"text":"魔术师头盔","italic": false,"color":"white"}',Lore:['{"text":"看起来很值钱，其实是塑料制品","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023}
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:102b,tag:{CustomModelData:1102}}]}] armor.chest with leather_chestplate{CustomModelData:1102,Unbreakable:1b,display:{Name:'{"text":"便服","italic": false,"color":"white"}',Lore:['{"text":"便于分辨敌友的轻便服装。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:1b}
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:101b,tag:{CustomModelData:1103}}]}] armor.legs with leather_leggings{CustomModelData:1103,Unbreakable:1b,display:{Name:'{"text":"燕尾裤","italic": false,"color":"white"}',Lore:['{"text":"魔术师的象征服饰。","italic": false,"color":"gray"}'],color:0},AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:100b,tag:{CustomModelData:1104}}]}] armor.feet with diamond_boots{CustomModelData:1104,Unbreakable:1b,display:{Name:'{"text":"小皮鞋","italic": false,"color":"white"}',Lore:['{"text":"穿上去意外地舒适。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:28,Enchantments:[{id:"minecraft:feather_falling",lvl:1s}]}