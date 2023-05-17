# 技能持续
particle campfire_cosy_smoke ~ ~0.4 ~ 0.15 0.15 0.15 0.002 1
# 放在这里阻止摔伤是因为一开始就阻止的话会导致直接触发“已落地”
tag @s add fall_immune

# 技能结束
scoreboard players remove @s 3_jump_last 1
effect clear @s[scores={3_jump_last=..0}] levitation