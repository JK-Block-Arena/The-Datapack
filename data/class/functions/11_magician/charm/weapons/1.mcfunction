advancement revoke @s only class:11_magician/1
scoreboard players add @s[scores={11_totem_st=1..,11_totem_score=0..19}] 11_totem_score 6
scoreboard players set @s 11_charm_skill 0
effect give @s regeneration 3 1 true

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory