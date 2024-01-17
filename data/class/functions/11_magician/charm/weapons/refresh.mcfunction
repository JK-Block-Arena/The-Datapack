scoreboard players set @s 11_charm_skill 2
scoreboard players add @s 11_totem_score 2

# 石剑主动
effect give @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:11013}}]}] haste 5 0 false

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory