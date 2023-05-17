# 副手
item replace entity @s weapon.offhand with air

# 卫道士之斧
item replace entity @s[scores={statPlayerLevel=1},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:300}}]}] hotbar.0 with iron_axe{CustomModelData:300,AttributeModifiers:[{UUID:[I;3,0,1,1],Amount:11,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -3.1, UUID: [I;3,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={statPlayerLevel=2},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:300}}]}] hotbar.0 with iron_axe{CustomModelData:300,AttributeModifiers:[{UUID:[I;3,0,1,1],Amount:11,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -3.18, UUID: [I;3,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={statPlayerLevel=3},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:300}}]}] hotbar.0 with iron_axe{CustomModelData:300,AttributeModifiers:[{UUID:[I;3,0,1,1],Amount:11,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -3.22, UUID: [I;3,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={statPlayerLevel=4},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:300}}]}] hotbar.0 with iron_axe{CustomModelData:300,AttributeModifiers:[{UUID:[I;3,0,1,1],Amount:11,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -3.3, UUID: [I;3,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63}
scoreboard players set @s count1 -1

# 幻术师之杖
item replace entity @s[scores={3_magic_storage=1..},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:303}}]}] hotbar.1 with amethyst_shard{CustomModelData:303}
scoreboard players operation @s count2 = @s 3_magic_storage
scoreboard players operation @s cd2 = @s 3_magic_cd

# 劫掠兽之卵
item replace entity @s[scores={3_truck_storage=1..},nbt=!{Inventory:[{Slot:2b,tag:{CustomModelData:302}}]}] hotbar.2 with ravager_spawn_egg{CustomModelData:302}
scoreboard players operation @s count3 = @s 3_truck_storage
scoreboard players operation @s cd3 = @s 3_truck_cd


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
item replace entity @s hotbar.8 with air
scoreboard players set @s count9 -1

# 护甲
execute if score $info_refresh_inv debug matches 1 as @s[tag=!invisible,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:329}}]}] run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 1 1
item replace entity @s[tag=!invisible,team=lobby,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:320}}]}] armor.head with white_banner{CustomModelData:320,display:{Name:'{"text":"灾厄旗帜","italic": false,"color":"aqua"}',Lore:['{"text":"可以用于分辨队伍的旗帜。","italic": false,"color":"gray"}','{"text":"其上还残留着些许不祥之力。","italic": false,"color":"gray"}']},BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:0},{Pattern:"cs",Color:7},{Pattern:"bo",Color:0},{Pattern:"ms",Color:15},{Pattern:"hh",Color:0},{Pattern:"mc",Color:0},{Pattern:"bo",Color:15}]},AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
item replace entity @s[tag=!invisible,team=red,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:321}}]}] armor.head with white_banner{CustomModelData:321,display:{Name:'{"text":"灾厄旗帜","italic": false,"color":"aqua"}',Lore:['{"text":"可以用于分辨队伍的旗帜。","italic": false,"color":"gray"}','{"text":"其上还残留着些许不祥之力。","italic": false,"color":"gray"}']},BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:14},{Pattern:"cs",Color:7},{Pattern:"bo",Color:14},{Pattern:"ms",Color:15},{Pattern:"hh",Color:14},{Pattern:"mc",Color:14},{Pattern:"bo",Color:15}]},AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
item replace entity @s[tag=!invisible,team=blue,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:322}}]}] armor.head with white_banner{CustomModelData:322,display:{Name:'{"text":"灾厄旗帜","italic": false,"color":"aqua"}',Lore:['{"text":"可以用于分辨队伍的旗帜。","italic": false,"color":"gray"}','{"text":"其上还残留着些许不祥之力。","italic": false,"color":"gray"}']},BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:3},{Pattern:"cs",Color:7},{Pattern:"bo",Color:3},{Pattern:"ms",Color:15},{Pattern:"hh",Color:3},{Pattern:"mc",Color:3},{Pattern:"bo",Color:15}]},AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
item replace entity @s[tag=!invisible,team=green,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:323}}]}] armor.head with white_banner{CustomModelData:323,display:{Name:'{"text":"灾厄旗帜","italic": false,"color":"aqua"}',Lore:['{"text":"可以用于分辨队伍的旗帜。","italic": false,"color":"gray"}','{"text":"其上还残留着些许不祥之力。","italic": false,"color":"gray"}']},BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:5},{Pattern:"cs",Color:7},{Pattern:"bo",Color:5},{Pattern:"ms",Color:15},{Pattern:"hh",Color:5},{Pattern:"mc",Color:5},{Pattern:"bo",Color:15}]},AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
item replace entity @s[tag=!invisible,team=yellow,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:324}}]}] armor.head with white_banner{CustomModelData:324,display:{Name:'{"text":"灾厄旗帜","italic": false,"color":"aqua"}',Lore:['{"text":"可以用于分辨队伍的旗帜。","italic": false,"color":"gray"}','{"text":"其上还残留着些许不祥之力。","italic": false,"color":"gray"}']},BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:4},{Pattern:"cs",Color:7},{Pattern:"bo",Color:4},{Pattern:"ms",Color:15},{Pattern:"hh",Color:4},{Pattern:"mc",Color:4},{Pattern:"bo",Color:15}]},AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:102b,tag:{CustomModelData:329}}]}] armor.chest with iron_chestplate{CustomModelData:329,Unbreakable:1b,display:{Name:'{"text":"强袭之甲","italic": false,"color":"white"}',Lore:['{"text":"一件结实的铁护甲。","italic": false,"color":"gray"}','""','[{"text":"❤ 生命  ","italic": false,"color":"red"},{"text":"+ 4","italic": false,"color":"white"}]']},AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air