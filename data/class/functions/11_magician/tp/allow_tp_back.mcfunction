scoreboard players set @s[scores={statPlayerLevel=1}] 11_tp_last 55
scoreboard players set @s[scores={statPlayerLevel=2..3}] 11_tp_last 50
scoreboard players set @s[scores={statPlayerLevel=4}] 11_tp_last 45

scoreboard players set @s 11_tp_last_wait -1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory