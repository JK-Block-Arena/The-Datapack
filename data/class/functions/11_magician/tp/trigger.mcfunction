# 路径上查找对手并显示粒子
scoreboard players set @s 11_tp_distance 40
function class:11_magician/tp/scan
execute as @e[limit=1,sort=nearest,tag=11_target] run function class:11_magician/tp/target_show

execute unless entity @e[tag=11_target,distance=.1..500] run function class:11_magician/tp/target_nope
execute if entity @e[tag=11_target,distance=.1..500] run function class:11_magician/tp/target_found

tag @a[tag=11_target] remove 11_target

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory