# 副手
item replace entity @s weapon.offhand with air
# 招魂幡
item replace entity @s[scores={10_flag_st=..0},team=lobby,nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:10000}}]}] hotbar.0 with white_banner{BlockEntityTag:{Patterns:[{Pattern:"flo",Color:8}]},CustomModelData:10000,Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={10_flag_st=..0},team=red,nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:10000}}]}] hotbar.0 with red_banner{BlockEntityTag:{Patterns:[{Pattern:"flo",Color:0}]},CustomModelData:10000,Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={10_flag_st=..0},team=blue,nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:10000}}]}] hotbar.0 with blue_banner{BlockEntityTag:{Patterns:[{Pattern:"flo",Color:0}]},CustomModelData:10000,Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={10_flag_st=..0},team=green,nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:10000}}]}] hotbar.0 with green_banner{BlockEntityTag:{Patterns:[{Pattern:"flo",Color:0}]},CustomModelData:10000,Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={10_flag_st=..0},team=yellow,nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:10000}}]}] hotbar.0 with yellow_banner{BlockEntityTag:{Patterns:[{Pattern:"flo",Color:0}]},CustomModelData:10000,Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={10_flag_st=..0},team=red_v1,nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:10000}}]}] hotbar.0 with red_banner{BlockEntityTag:{Patterns:[{Pattern:"flo",Color:0}]},CustomModelData:10000,Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={10_flag_st=..0},team=blue_v1,nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:10000}}]}] hotbar.0 with blue_banner{BlockEntityTag:{Patterns:[{Pattern:"flo",Color:0}]},CustomModelData:10000,Unbreakable:1b,HideFlags:63}

item replace entity @s[scores={10_flag_st=1..},team=lobby,nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:10001}}]}] hotbar.0 with white_banner{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]},CustomModelData:10001,Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={10_flag_st=1..},team=red,nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:10001}}]}] hotbar.0 with red_banner{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]},CustomModelData:10001,Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={10_flag_st=1..},team=blue,nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:10001}}]}] hotbar.0 with blue_banner{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]},CustomModelData:10001,Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={10_flag_st=1..},team=green,nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:10001}}]}] hotbar.0 with green_banner{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]},CustomModelData:10001,Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={10_flag_st=1..},team=yellow,nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:10001}}]}] hotbar.0 with yellow_banner{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]},CustomModelData:10001,Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={10_flag_st=1..},team=red_v1,nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:10001}}]}] hotbar.0 with red_banner{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]},CustomModelData:10001,Unbreakable:1b,HideFlags:63}
item replace entity @s[scores={10_flag_st=1..},team=blue_v1,nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:10001}}]}] hotbar.0 with blue_banner{BlockEntityTag:{Patterns:[{Pattern:"cre",Color:15}]},CustomModelData:10001,Unbreakable:1b,HideFlags:63}
scoreboard players set @s count1 -1

# 僵尸
item replace entity @s[scores={10_zombie_st=1..},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:1001}}]}] hotbar.1 with zombie_spawn_egg{CustomModelData:1001}
scoreboard players operation @s count2 = @s 10_zombie_st
scoreboard players operation @s cd2 = @s 10_zombie_cd
# 恼鬼
item replace entity @s[scores={10_vex_st=1..},nbt=!{Inventory:[{Slot:2b,tag:{CustomModelData:1002}}]}] hotbar.2 with vex_spawn_egg{CustomModelData:1002}
scoreboard players operation @s count3 = @s 10_vex_st
scoreboard players operation @s cd3 = @s 10_vex_cd
# 苦力怕
item replace entity @s[scores={10_creeper_st=1..},nbt=!{Inventory:[{Slot:3b,tag:{CustomModelData:1003}}]}] hotbar.3 with creeper_spawn_egg{CustomModelData:1003}
scoreboard players operation @s count4 = @s 10_creeper_st
scoreboard players operation @s cd4 = @s 10_creeper_cd
# 铁傀儡
item replace entity @s[scores={10_golem_st=1..},nbt=!{Inventory:[{Slot:4b,tag:{CustomModelData:1004}}]}] hotbar.4 with iron_golem_spawn_egg{CustomModelData:1004}
scoreboard players operation @s count5 = @s 10_golem_st
scoreboard players operation @s cd5 = @s 10_golem_cd
# 猪猪发射器
item replace entity @s[scores={10_pig_st=1..},nbt=!{Inventory:[{Slot:5b,tag:{CustomModelData:1005}}]}] hotbar.5 with pig_spawn_egg{CustomModelData:1005}
scoreboard players operation @s count6 = @s 10_pig_st
scoreboard players operation @s cd6 = @s 10_pig_cd

# 空格子
item replace entity @s hotbar.6 with air
scoreboard players set @s count7 -1
item replace entity @s hotbar.7 with air
scoreboard players set @s count8 -1
item replace entity @s hotbar.8 with air
scoreboard players set @s count9 -1

# 护甲
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:1010}}]}] armor.head with leather_helmet{CustomModelData:1010,Unbreakable:1b,display:{color:7276430,Name:'{"text":"召唤师皮帽","italic": false,"color":"white"}',Lore:['{"text":"女巫同款帽子！","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:102b,tag:{id:1011}}]}] armor.chest with leather_chestplate{id:1011,Unbreakable:1b,display:{Name:'{"text":"便服","italic": false,"color":"white"}',Lore:['{"text":"便于分辨敌友的轻便服装。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:1b}
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
