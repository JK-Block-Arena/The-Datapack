playsound block.brewing_stand.brew player @a ~ ~ ~ 1 0.6
# 60 / 20 = 3 延迟触发
scoreboard players set @s[scores={statPlayerLevel=1}] 6_mint_on 50
scoreboard players set @s[scores={statPlayerLevel=2..3}] 6_mint_on 60
scoreboard players set @s[scores={statPlayerLevel=4}] 6_mint_on 70
# 60 / 20 = 3 持续时长
scoreboard players set @s[scores={statPlayerLevel=1}] 6_mint_last 70
scoreboard players set @s[scores={statPlayerLevel=2..3}] 6_mint_last 60
scoreboard players set @s[scores={statPlayerLevel=4}] 6_mint_last 50

# 减少存储
scoreboard players remove @s 6_mint_st 1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory