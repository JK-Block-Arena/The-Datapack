# 弩 见tick1_class

# 快速装填普通箭
item replace entity @s[scores={9_st1=1..},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:901}}]}] hotbar.0 with tipped_arrow{CustomModelData:901,CustomPotionColor:16189962}
scoreboard players operation @s count1 = @s 9_st1
scoreboard players operation @s cd1 = @s 9_cd1

# 穿透箭
item replace entity @s[scores={9_st2=1..},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:902}}]}] hotbar.1 with tipped_arrow{CustomModelData:902,CustomPotionColor:976630}
scoreboard players operation @s count2 = @s 9_st2
scoreboard players operation @s cd2 = @s 9_cd2

# 多重箭
item replace entity @s[scores={9_st3=1..},nbt=!{Inventory:[{Slot:2b,tag:{CustomModelData:903}}]}] hotbar.2 with tipped_arrow{CustomModelData:903,CustomPotionColor:13957380}
scoreboard players operation @s count3 = @s 9_st3
scoreboard players operation @s cd3 = @s 9_cd3

# 烟花
item replace entity @s[scores={9_st4=1..},nbt=!{Inventory:[{Slot:3b,tag:{CustomModelData:904}}]}] hotbar.3 with firework_rocket{CustomModelData:904}
scoreboard players operation @s count4 = @s 9_st4
scoreboard players operation @s cd4 = @s 9_cd4

# 鞘翅
item replace entity @s[scores={9_elytra_storage=1..},nbt=!{Inventory:[{Slot:8b,tag:{CustomModelData:909}}]}] hotbar.8 with elytra{CustomModelData:909}
scoreboard players operation @s count9 = @s 9_elytra_storage
scoreboard players operation @s cd9 = @s 9_elytra_cd

# 空格子
item replace entity @s hotbar.4 with air
scoreboard players set @s count5 -1
item replace entity @s hotbar.5 with air
scoreboard players set @s count6 -1
item replace entity @s hotbar.6 with air
scoreboard players set @s count7 -1
item replace entity @s hotbar.7 with air
scoreboard players set @s count8 -1

# 护甲
execute if score $info_refresh_inv debug matches 1 as @s[tag=!invisible,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:920}}]}] run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 1 1
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:920}}]}] armor.head with leather_helmet{CustomModelData:920,Unbreakable:1b,display:{Name:'{"text":"染色皮帽","italic": false,"color":"white"}',Lore:['{"text":"便于分辨敌友的小帽子。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:1b}
item replace entity @s[scores={9_elytra_last=..0},tag=!invisible,nbt=!{Inventory:[{Slot:102b,tag:{CustomModelData:921}}]}] armor.chest with chainmail_chestplate{CustomModelData:921,Unbreakable:1b,display:{Name:'{"text":"飞行背包","italic": false,"color":"white"}',Lore:['{"text":"装有鞘翅，略显沉重。","italic": false,"color":"gray"}','""','[{"text":"❇ 速度  ","italic": false,"color":"aqua"},{"text":"- 5 %","italic": false,"color":"white"}]']},AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
item replace entity @s[scores={9_elytra_last=1..},tag=!invisible,nbt=!{Inventory:[{Slot:102b,tag:{CustomModelData:909}}]}] armor.chest with elytra{CustomModelData:909,Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1}],display:{Name:'{"text":"鞘翅","italic": false,"color":"white"}',Lore:['{"text":"助你翱翔于天际。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:0b}
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
