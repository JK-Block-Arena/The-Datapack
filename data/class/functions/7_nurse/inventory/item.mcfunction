# 副手
item replace entity @s weapon.offhand with air
# 圣书
item replace entity @s[advancements={pvp:extra/believer=false},scores={statPlayerLevel=1},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:700}}]}] hotbar.0 with written_book{title:"创世纪第一章",author:"Nobody",pages:['[{"text":"书还没刷新呢，等会打开。"}]'],CustomModelData:700,Enchantments:[{id:"minecraft:knockback",lvl:2}],AttributeModifiers:[{Operation:0,Amount:-2.6,UUID:[I;7,0,1,1], AttributeName:"generic.attack_speed",Name:"generic.attackSpeed"},{Operation:0,Amount:2,UUID:[I;7,0,1,2],AttributeName:"generic.attack_damage",Name:"generic.attack"}],Unbreakable:1b,HideFlags:63}
item replace entity @s[advancements={pvp:extra/believer=false},scores={statPlayerLevel=2..4},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:700}}]}] hotbar.0 with written_book{title:"创世纪第一章",author:"Nobody",pages:['[{"text":"书还没刷新呢，等会打开。"}]'],CustomModelData:700,Enchantments:[{id:"minecraft:knockback",lvl:1}],AttributeModifiers:[{Operation:0,Amount:-2.8,UUID:[I;7,0,1,1], AttributeName:"generic.attack_speed",Name:"generic.attackSpeed"},{Operation:0,Amount:2,UUID:[I;7,0,1,2],AttributeName:"generic.attack_damage",Name:"generic.attack"}],Unbreakable:1b,HideFlags:63}
item replace entity @s[advancements={pvp:extra/believer=true},scores={statPlayerLevel=1},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:700}}]}] hotbar.0 with book{CustomModelData:700,Enchantments:[{id:"minecraft:knockback",lvl:2}],AttributeModifiers:[{Operation:0,Amount:-2.6,UUID:[I;7,0,1,1], AttributeName:"generic.attack_speed",Name:"generic.attackSpeed"},{Operation:0,Amount:2,UUID:[I;7,0,1,2],AttributeName:"generic.attack_damage",Name:"generic.attack"}],Unbreakable:1b,HideFlags:63}
item replace entity @s[advancements={pvp:extra/believer=true},scores={statPlayerLevel=2..4},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:700}}]}] hotbar.0 with book{CustomModelData:700,Enchantments:[{id:"minecraft:knockback",lvl:1}],AttributeModifiers:[{Operation:0,Amount:-2.8,UUID:[I;7,0,1,1], AttributeName:"generic.attack_speed",Name:"generic.attackSpeed"},{Operation:0,Amount:2,UUID:[I;7,0,1,2],AttributeName:"generic.attack_damage",Name:"generic.attack"}],Unbreakable:1b,HideFlags:63}
scoreboard players set @s count0 -1
# 净化
item replace entity @s[scores={7_damage_st=1..},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:701}}]}] hotbar.1 with splash_potion{CustomModelData:701,CustomPotionColor:16777215,Potion:"water",custom_potion_effects:[{id:instant_damage,amplifier:1},{id:weakness,amplifier:0,duration:70},{id:slowness,amplifier:0,duration:70},{id:glowing,amplifier:0,duration:70}]}
scoreboard players operation @s count1 = @s 7_damage_st
scoreboard players operation @s cd1 = @s 7_damage_cd
# 神圣
item replace entity @s[scores={7_heal_st=1..},nbt=!{Inventory:[{Slot:2b,tag:{CustomModelData:702}}]}] hotbar.2 with potion{CustomModelData:702,CustomPotionColor:14881233,Potion:"water",custom_potion_effects:[{id:instant_health,amplifier:1}]}
scoreboard players operation @s count2 = @s 7_heal_st
scoreboard players operation @s cd2 = @s 7_heal_cd
# 勇猛
item replace entity @s[scores={7_strength_st=1..},nbt=!{Inventory:[{Slot:3b,tag:{CustomModelData:703}}]}] hotbar.3 with potion{CustomModelData:703,CustomPotionColor:12132639,Potion:"water",custom_potion_effects:[{id:speed,amplifier:2,duration:100}]}
scoreboard players operation @s count3 = @s 7_strength_st
scoreboard players operation @s cd3 = @s 7_strength_cd
# 保护
item replace entity @s[scores={7_turtle_st=1..},nbt=!{Inventory:[{Slot:4b,tag:{CustomModelData:704}}]}] hotbar.4 with potion{CustomModelData:704,CustomPotionColor:3657514,Potion:"water",custom_potion_effects:[{id:resistance,amplifier:1,duration:100}]}
scoreboard players operation @s count4 = @s 7_turtle_st
scoreboard players operation @s cd4 = @s 7_turtle_cd
# 支援
item replace entity @s[scores={7_eye_st=1..},nbt=!{Inventory:[{Slot:8b,tag:{CustomModelData:705}}]}] hotbar.8 with ender_eye{CustomModelData:705}
scoreboard players operation @s count8 = @s 7_eye_st
scoreboard players operation @s cd8 = @s 7_eye_cd
# 空格子
item replace entity @s hotbar.5 with air
scoreboard players set @s count5 -1
item replace entity @s hotbar.6 with air
scoreboard players set @s count6 -1
item replace entity @s hotbar.7 with air
scoreboard players set @s count7 -1
# 护甲
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:710}}]}] armor.head with lantern{CustomModelData:710,Unbreakable:1b,display:{Name:'{"text":"灯笼","italic": false,"color":"white"}',Lore:['{"text":"像一盏明灯照亮你前进的路。","italic": false,"color":"gray"}','[{"text":"❤ 药效  ","italic": false,"color":"red"},{"text":"缓慢恢复自己与 7 格内的队友。","italic": false,"color":"white"}]','[{"text":"ᛥ  附魔  ","italic": false,"color":"blue"},{"text":"保护 I","italic": false,"color":"white"}]']},AttributeModifiers:[],HideFlags:1023,NeedColor:0b,Enchantments:[{id:"minecraft:protection",lvl:1}]}
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:102b,tag:{CustomModelData:711}}]}] armor.chest with leather_chestplate{CustomModelData:711,Unbreakable:1b,display:{Name:'{"text":"便服","italic": false,"color":"white"}',Lore:['{"text":"便于分辨敌友的轻便服装。","italic": false,"color":"gray"}','{"text":"最简单的长袍，人们总是要祷告。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:1b}
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
