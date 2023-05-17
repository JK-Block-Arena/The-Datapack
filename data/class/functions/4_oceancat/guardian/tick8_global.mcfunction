execute if entity @e[type=guardian] run function class:4_oceancat/guardian/tick8_particle

# 自我清理
scoreboard players remove @e[type=guardian] 4_guardian_life 1
execute as @e[scores={4_guardian_life=..0}] at @s run tp @s ~ -100 ~
kill @e[scores={4_guardian_life=..0}]
