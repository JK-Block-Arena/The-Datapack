# 记录统计信息
# 职业击杀
$scoreboard players add $$(classKill) statClassKill 1

# 职业死亡
$execute if entity @a[tag=victim] run scoreboard players add $$(classDeath) statClassDeath 1

# 职业交叉击杀
$execute if entity @a[tag=victim] run scoreboard players add $$(classKill)->$$(classDeath) statClassCrossKill 1