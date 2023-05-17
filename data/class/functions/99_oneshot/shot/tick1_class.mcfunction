# 三叉戟
scoreboard players set @s[scores={99_trident_st=1,99_trident_use=1..}] 99_trident_st 0
scoreboard players set @s[scores={99_trident_st=0},nbt={Inventory:[{tag:{CustomModelData:401}}]}] 99_trident_st 1
scoreboard players reset @s 99_trident_use

# 烟花弩
execute as @s[scores={99_shot=1..}] run function class:99_oneshot/shot/on_shot
item replace entity @s[scores={99_arrow=0},nbt=!{Inventory:[{Slot:0b,tag:{CustomModelData:99011}}]}] hotbar.0 with crossbow{CustomModelData:99011,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:3}],display:{Name:'{"text":"必杀烟花弩","italic": false,"color":"aqua"}',Lore:['{"text":"我tm炸爆！","color":"gray","italic": false}','{"text":"半径 3 格内必杀。","color":"gray","italic": false}','""','[{"text":"⚜ 储存  ","color":"gold","italic": false},{"text":"∞","color":"white","italic": false},{"text":"      ❤ 伤害  ","color":"red","italic": false},{"text":"∞","color":"white","italic": false}]']},HideFlags:63}
scoreboard players set @s[nbt={Inventory:[{Slot:0b,id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:firework_rocket"}]}}]}] 99_arrow 1
execute as @s[scores={99_arrow=1}] run function class:99_oneshot/shot/fire_work