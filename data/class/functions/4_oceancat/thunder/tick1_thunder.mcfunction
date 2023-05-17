
# 总体计时
scoreboard players remove @s 4_thunder_life 1
execute if score @s 4_thunder_life matches ..0 run kill @e[type=lightning_bolt,distance=..0.1]
execute if score @s 4_thunder_life matches ..0 run kill @s

# 召唤雷电
execute if score @s 4_thunder_life matches 1.. unless entity @e[type=lightning_bolt,distance=..0.1] run summon lightning_bolt ~ ~ ~
