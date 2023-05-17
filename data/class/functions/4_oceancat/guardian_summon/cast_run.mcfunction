scoreboard players remove @s 4_guardian_cast 1
execute as @s[scores={4_guardian_cast=0}] run function class:4_oceancat/guardian_summon/cast_done

# 打断回血
tag @s add brRegenBreak