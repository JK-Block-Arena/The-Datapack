advancement revoke @s only class:11_magician/3
scoreboard players set @s 11_charm_skill 0

effect give @s[scores={11_charm_skill=2}] regeneration 3 0

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory