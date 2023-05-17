# 劈雷
execute as @e[tag=4_guardian_triggered] at @s run function class:4_oceancat/guardian/summon_thunder

# 为防止丢包，重新进行隐身
effect clear @e[type=guardian] invisibility
effect give @e[type=guardian] invisibility infinite 0 true