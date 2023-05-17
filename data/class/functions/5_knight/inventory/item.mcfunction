# 副手
item replace entity @s[team=red,nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:510}}]}] weapon.offhand with shield{CustomModelData:510,Unbreakable:1b,display:{Name:'{"text":"骑士塔盾","italic": false,"color":"white"}',Lore:['[{"text":"长按 ","color":"gray","italic": false},{"text":"[","color":"white"},{"keybind":"key.use","color":"white"},{"text":"]","color":"white"}," 以防御来自正面的物理攻击。"]']},HideFlags:63,BlockEntityTag:{Base:0,Patterns:[{Color:14,Pattern:"tts"},{Color:14,Pattern:"bts"},{Color:14,Pattern:"bo"},{Color:0,Pattern:"cbo"},{Color:14,Pattern:"mr"},{Color:0,Pattern:"flo"}]}}
item replace entity @s[team=blue,nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:510}}]}] weapon.offhand with shield{CustomModelData:510,Unbreakable:1b,display:{Name:'{"text":"骑士塔盾","italic": false,"color":"white"}',Lore:['[{"text":"长按 ","color":"gray","italic": false},{"text":"[","color":"white"},{"keybind":"key.use","color":"white"},{"text":"]","color":"white"}," 以防御来自正面的物理攻击。"]']},HideFlags:63,BlockEntityTag:{Base:0,Patterns:[{Color:11,Pattern:"tts"},{Color:11,Pattern:"bts"},{Color:11,Pattern:"bo"},{Color:0,Pattern:"cbo"},{Color:11,Pattern:"mr"},{Color:0,Pattern:"flo"}]}}
item replace entity @s[team=green,nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:510}}]}] weapon.offhand with shield{CustomModelData:510,Unbreakable:1b,display:{Name:'{"text":"骑士塔盾","italic": false,"color":"white"}',Lore:['[{"text":"长按 ","color":"gray","italic": false},{"text":"[","color":"white"},{"keybind":"key.use","color":"white"},{"text":"]","color":"white"}," 以防御来自正面的物理攻击。"]']},HideFlags:63,BlockEntityTag:{Base:0,Patterns:[{Color:5,Pattern:"tts"},{Color:5,Pattern:"bts"},{Color:5,Pattern:"bo"},{Color:0,Pattern:"cbo"},{Color:5,Pattern:"mr"},{Color:0,Pattern:"flo"}]}}
item replace entity @s[team=yellow,nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:510}}]}] weapon.offhand with shield{CustomModelData:510,Unbreakable:1b,display:{Name:'{"text":"骑士塔盾","italic": false,"color":"white"}',Lore:['[{"text":"长按 ","color":"gray","italic": false},{"text":"[","color":"white"},{"keybind":"key.use","color":"white"},{"text":"]","color":"white"}," 以防御来自正面的物理攻击。"]']},HideFlags:63,BlockEntityTag:{Base:8,Patterns:[{Color:4,Pattern:"tts"},{Color:4,Pattern:"bts"},{Color:4,Pattern:"bo"},{Color:8,Pattern:"cbo"},{Color:4,Pattern:"mr"},{Color:8,Pattern:"flo"}]}}
item replace entity @s[team=lobby,nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:510}}]}] weapon.offhand with shield{CustomModelData:510,Unbreakable:1b,display:{Name:'{"text":"骑士塔盾","italic": false,"color":"white"}',Lore:['[{"text":"长按 ","color":"gray","italic": false},{"text":"[","color":"white"},{"keybind":"key.use","color":"white"},{"text":"]","color":"white"}," 以防御来自正面的物理攻击。"]']},HideFlags:63,BlockEntityTag:{Base:8,Patterns:[{Color:4,Pattern:"tts"},{Color:4,Pattern:"bts"},{Color:4,Pattern:"bo"},{Color:8,Pattern:"cbo"},{Color:4,Pattern:"mr"},{Color:8,Pattern:"flo"}]}}

# 灿焰长剑
item replace entity @s[scores={statPlayerLevel=1},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:501}}]}] hotbar.0 with golden_sword{CustomModelData:501,AttributeModifiers:[{UUID:[I;5,0,1,1],Amount:5,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.25, UUID: [I;5,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"minecraft:fire_aspect",lvl:1}]}
item replace entity @s[scores={statPlayerLevel=2},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:501}}]}] hotbar.0 with golden_sword{CustomModelData:501,AttributeModifiers:[{UUID:[I;5,0,1,1],Amount:5,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.4, UUID: [I;5,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"minecraft:fire_aspect",lvl:1}]}
item replace entity @s[scores={statPlayerLevel=3},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:501}}]}] hotbar.0 with golden_sword{CustomModelData:501,AttributeModifiers:[{UUID:[I;5,0,1,1],Amount:5,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.5, UUID: [I;5,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"minecraft:fire_aspect",lvl:1}]}
item replace entity @s[scores={statPlayerLevel=4},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:501}}]}] hotbar.0 with golden_sword{CustomModelData:501,AttributeModifiers:[{UUID:[I;5,0,1,1],Amount:5,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0},{Operation: 0, Amount: -2.65, UUID: [I;5,0,1,2], AttributeName: "generic.attack_speed", Name: "generic.attackSpeed"}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"minecraft:fire_aspect",lvl:1}]}
scoreboard players set @s count1 -1

# 烁光新星
item replace entity @s[scores={5_star_storage=1..,5_star_last=0},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:502}}]}] hotbar.1 with nether_star{CustomModelData:502}
item replace entity @s[scores={5_star_storage=1..,5_star_last=1..},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:503}}]}] hotbar.1 with beacon{CustomModelData:503}
scoreboard players operation @s count2 = @s 5_star_storage
scoreboard players operation @s cd2 = @s 5_star_cd

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
execute if score $info_refresh_inv debug matches 1 as @s[tag=!invisible,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:520}}]}] run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 1 1
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:520}}]}] armor.head with leather_helmet{CustomModelData:520,Unbreakable:1b,display:{Name:'{"text":"染色皮帽","italic": false,"color":"white"}',Lore:['{"text":"便于分辨敌友的小帽子。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:1b}
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:102b,tag:{CustomModelData:521}}]}] armor.chest with iron_chestplate{CustomModelData:521,Unbreakable:1b,display:{Name:'{"text":"塑料板甲","italic": false,"color":"white"}',Lore:['{"text":"看似很结实，但其实是塑料制品。","italic": false,"color":"gray"}','""','[{"text":"❤ 生命  ","italic": false,"color":"red"},{"text":"+ 4","italic": false,"color":"white"}]']},AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
