# 减少冷却
execute as @a[scores={10_mana=..9980,state=1..4}] at @s run function class:10_summoner/mana/add
execute as @a[scores={class=10,state=2..4}] at @s run function class:10_summoner/mana/update