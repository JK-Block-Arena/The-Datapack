# 效果
playsound minecraft:entity.elder_guardian.curse player @s ~ ~ ~ 0.6 0.6
scoreboard players add @s 2_attack_stack 1
scoreboard players set @s[scores={statPlayerLevel=1}] 2_attack_time 4000
scoreboard players set @s[scores={statPlayerLevel=2}] 2_attack_time 3500
scoreboard players set @s[scores={statPlayerLevel=3}] 2_attack_time 3000
scoreboard players set @s[scores={statPlayerLevel=4}] 2_attack_time 2500

# 减少珍珠
scoreboard players remove @s 2_pearl_storage 1
execute if score $is_day mem matches 0 run scoreboard players set @s[scores={2_pearl_storage=2}] 2_pearl_cd 12000
execute if score $is_day mem matches 1 run scoreboard players set @s[scores={2_pearl_storage=2}] 2_pearl_cd 18000

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory
