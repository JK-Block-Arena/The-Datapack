
# 弓
function class:1_ranger/shot/get_arrow_type
execute unless score @s 1_cancel matches 1.. run item replace entity @s[scores={temp=1,statPlayerLevel=1},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:110}}]}] weapon.offhand with bow{CustomModelData:110,Unbreakable:1b,Enchantments:[{id:"punch",lvl:4},{id:"power",lvl:2}],display:{Name:'{"text":"长弓","italic": false,"color":"white"}',Lore:['[{"text":"在拉弓时按 ","color":"gray","italic": false},{"text":"[","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}," 即可将箭收回。"]']},HideFlags:63}
execute unless score @s 1_cancel matches 1.. run item replace entity @s[scores={temp=1,statPlayerLevel=2..3},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:110}}]}] weapon.offhand with bow{CustomModelData:110,Unbreakable:1b,Enchantments:[{id:"punch",lvl:3},{id:"power",lvl:2}],display:{Name:'{"text":"长弓","italic": false,"color":"white"}',Lore:['[{"text":"在拉弓时按 ","color":"gray","italic": false},{"text":"[","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}," 即可将箭收回。"]']},HideFlags:63}
execute unless score @s 1_cancel matches 1.. run item replace entity @s[scores={temp=1,statPlayerLevel=4},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:110}}]}] weapon.offhand with bow{CustomModelData:110,Unbreakable:1b,Enchantments:[{id:"punch",lvl:2},{id:"power",lvl:2}],display:{Name:'{"text":"长弓","italic": false,"color":"white"}',Lore:['[{"text":"在拉弓时按 ","color":"gray","italic": false},{"text":"[","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}," 即可将箭收回。"]']},HideFlags:63}
execute unless score @s 1_cancel matches 1.. run item replace entity @s[scores={temp=2},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:111}}]}] weapon.offhand with bow{CustomModelData:111,Unbreakable:1b,Enchantments:[{id:"power",lvl:1}],display:{Name:'{"text":"长弓","italic": false,"color":"white"}',Lore:['[{"text":"在拉弓时按 ","color":"gray","italic": false},{"text":"[","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}," 即可将箭收回。"]']},HideFlags:63}
execute unless score @s 1_cancel matches 1.. run item replace entity @s[scores={temp=3},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with bow{CustomModelData:113,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1},{id:"power",lvl:1}],display:{Name:'{"text":"长弓","italic": false,"color":"white"}',Lore:['[{"text":"在拉弓时按 ","color":"gray","italic": false},{"text":"[","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}," 即可将箭收回。"]']},HideFlags:63}
execute unless score @s 1_cancel matches 1.. run item replace entity @s[scores={temp=4,statPlayerLevel=..2},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:114}}]}] weapon.offhand with bow{CustomModelData:114,Unbreakable:1b,Enchantments:[{id:"punch",lvl:2},{id:"power",lvl:1}],display:{Name:'{"text":"长弓","italic": false,"color":"white"}',Lore:['[{"text":"在拉弓时按 ","color":"gray","italic": false},{"text":"[","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}," 即可将箭收回。"]']},HideFlags:63}
execute unless score @s 1_cancel matches 1.. run item replace entity @s[scores={temp=4,statPlayerLevel=3..},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:114}}]}] weapon.offhand with bow{CustomModelData:114,Unbreakable:1b,Enchantments:[{id:"punch",lvl:1},{id:"power",lvl:1}],display:{Name:'{"text":"长弓","italic": false,"color":"white"}',Lore:['[{"text":"在拉弓时按 ","color":"gray","italic": false},{"text":"[","color":"white"},{"keybind":"key.swapOffhand","color":"white"},{"text":"]","color":"white"}," 即可将箭收回。"]']},HideFlags:63}
execute if score @s 1_cancel matches 1.. run item replace entity @s weapon.offhand with air

# 强击箭
item replace entity @s[scores={1_st11=1..},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:101}}]}] hotbar.0 with tipped_arrow{CustomModelData:101,CustomPotionColor:12568265}
scoreboard players operation @s count0 = @s 1_st11
scoreboard players operation @s cd0 = @s 1_cd11

# 凋亡/巫毒箭
item replace entity @s[scores={1_st21=1..},nbt=!{Inventory:[{Slot:1b,tag:{CustomModelData:102}}]}] hotbar.1 with tipped_arrow{CustomModelData:102,custom_potion_effects:[{id:wither,amplifier:1,duration:405,show_particles:true}],CustomPotionColor:7812416}
scoreboard players operation @s count1 = @s 1_st21
scoreboard players operation @s cd1 = @s 1_cd21

# 光焰箭
item replace entity @s[scores={1_st31=1..},nbt=!{Inventory:[{Slot:3b,tag:{CustomModelData:104}}]}] hotbar.2 with tipped_arrow{CustomModelData:104,custom_potion_effects:[{id:glowing,amplifier:0,duration:400,show_particles:true},{id:weakness,amplifier:0,duration:400,show_particles:true}],CustomPotionColor:16752969}
scoreboard players operation @s count2 = @s 1_st31
scoreboard players operation @s cd2 = @s 1_cd31

# 折跃箭
item replace entity @s[scores={1_st41=1..},nbt=!{Inventory:[{Slot:4b,tag:{CustomModelData:105}}]}] hotbar.3 with tipped_arrow{CustomModelData:105,CustomPotionColor:1275237}
scoreboard players operation @s count3 = @s 1_st41
scoreboard players operation @s cd3 = @s 1_cd41

# 空格子
item replace entity @s hotbar.4 with air
scoreboard players set @s count4 -1
item replace entity @s hotbar.5 with air
scoreboard players set @s count5 -1
item replace entity @s hotbar.6 with air
scoreboard players set @s count6 -1
item replace entity @s hotbar.7 with air
scoreboard players set @s count7 -1
item replace entity @s hotbar.8 with air
scoreboard players set @s count8 -1

# 护甲
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:103b,tag:{CustomModelData:120}}]}] armor.head with feather{CustomModelData:120,display:{Name:'{"text":"技能：轻羽","italic": false,"color":"aqua"}',Lore:['{"text":"使你的移动速度增加。","italic": false,"color":"gray"}','""','[{"text":"❇ 速度  ","italic": false,"color":"aqua"},{"text":"+ 20 %","italic": false,"color":"white"}]']},HideFlags:1023,NeedColor:0b}
item replace entity @s[tag=!invisible,nbt=!{Inventory:[{Slot:102b,tag:{CustomModelData:121}}]}] armor.chest with leather_chestplate{CustomModelData:121,Unbreakable:1b,display:{Name:'{"text":"便服","italic": false,"color":"white"}',Lore:['{"text":"便于分辨敌友的轻便服装。","italic": false,"color":"gray"}']},AttributeModifiers:[],HideFlags:1023,NeedColor:1b}
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
