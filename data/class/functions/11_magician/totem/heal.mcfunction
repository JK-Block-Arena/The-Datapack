# 每次获得11_totem_score即记录其恢复量
scoreboard players remove @s 11_totem_score 1
scoreboard players add @s[scores={11_totem_st=1..,11_totem_score1=0..16}] 11_totem_score1 1

effect give @s minecraft:regeneration 5 1