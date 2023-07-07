
# 副手
item replace entity @s weapon.offhand with air

# 暗影精髓
execute if score $is_day mem matches 1 run item replace entity @s[scores={2_pearl_st=1..},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:201,day:1}}]}] hotbar.0 with ender_pearl{CustomModelData:201,day:1}
execute if score $is_day mem matches 0 run item replace entity @s[scores={2_pearl_st=1..},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:201,day:0}}]}] hotbar.0 with ender_pearl{CustomModelData:201,day:0}
scoreboard players operation @s count1 = @s 2_pearl_st
scoreboard players operation @s cd1 = @s 2_pearl_cd

# 镰刀
item replace entity @s[scores={statPlayerLevel=1},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:202}}]}] hotbar.1 with netherite_hoe{CustomModelData:202,Unbreakable:1b,AttributeModifiers:[{UUID:[I;2,0,2,1],Amount:5.5,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.47, UUID: [I;2,0,2,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],HideFlags:63}
item replace entity @s[scores={statPlayerLevel=2},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:202}}]}] hotbar.1 with netherite_hoe{CustomModelData:202,Unbreakable:1b,AttributeModifiers:[{UUID:[I;2,0,2,1],Amount:5.5,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.57, UUID: [I;2,0,2,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],HideFlags:63}
item replace entity @s[scores={statPlayerLevel=3},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:202}}]}] hotbar.1 with netherite_hoe{CustomModelData:202,Unbreakable:1b,AttributeModifiers:[{UUID:[I;2,0,2,1],Amount:5.5,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.63, UUID: [I;2,0,2,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],HideFlags:63}
item replace entity @s[scores={statPlayerLevel=4},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:202}}]}] hotbar.1 with netherite_hoe{CustomModelData:202,Unbreakable:1b,AttributeModifiers:[{UUID:[I;2,0,2,1],Amount:5.5,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.73, UUID: [I;2,0,2,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],HideFlags:63}
scoreboard players set @s count2 -1

# 技能：融身入影
execute if score $is_day mem matches 1 run item replace entity @s[scores={2_sneak_st=1..,2_sneak_state=0},nbt=!{Inventory:[{Slot:8b,tag:{CustomModelData:208}}]}] hotbar.8 with white_dye{CustomModelData:208,day:1}
execute if score $is_day mem matches 0 run item replace entity @s[scores={2_sneak_st=1..,2_sneak_state=0},nbt=!{Inventory:[{Slot:8b,tag:{CustomModelData:208}}]}] hotbar.8 with white_dye{CustomModelData:208,day:0}
execute if score $is_day mem matches 1 run item replace entity @s[scores={2_sneak_st=1..,2_sneak_state=1},nbt=!{Inventory:[{Slot:8b,tag:{CustomModelData:209}}]}] hotbar.8 with black_dye{CustomModelData:209,day:1}
execute if score $is_day mem matches 0 run item replace entity @s[scores={2_sneak_st=1..,2_sneak_state=1},nbt=!{Inventory:[{Slot:8b,tag:{CustomModelData:209}}]}] hotbar.8 with black_dye{CustomModelData:209,day:0}
scoreboard players operation @s count9 = @s 2_sneak_st
scoreboard players operation @s cd9 = @s 2_sneak_cd


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
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:220}}]}] armor.head with leather_helmet{CustomModelData:220,Unbreakable:1b,display:{color:0,Name:'{"text":"夜行帽","italic": false,"color":"white"}',Lore:['{"text":"暗夜之子的象征。","italic": false,"color":"gray"}','{"text":"在你隐身时会一同隐去。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:102b,tag:{CustomModelData:221}}]}] armor.chest with leather_chestplate{CustomModelData:221,Unbreakable:1b,display:{Name:'{"text":"夜行衣","italic": false,"color":"white"}',Lore:['{"text":"便于分辨敌友的轻便服装。","italic": false,"color":"gray"}','{"text":"在你隐身时会一同隐去。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:1b}
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
