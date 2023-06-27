# 初次触发音效
playsound block.amethyst_block.chime player @s ~ ~ ~ 5 1
# 治愈异常状态
effect clear @s wither
effect clear @s poison
effect clear @s weakness
effect clear @s blindness
effect clear @s slowness
effect clear @s mining_fatigue
effect clear @s glowing
# 回血效果（瞬息万变突变）
execute if score $mutation mem matches 1 as @s[scores={state=2}] unless entity @s[scores={class=7}] run effect give @s instant_health 1 3 true
execute if score $mutation mem matches 1 as @s[scores={state=2}] unless entity @s[scores={class=7}] run particle totem_of_undying ~ ~1.7 ~ 0.3 0.3 0.3 0 40 normal @a
execute if score $mutation mem matches 1 as @s[scores={state=2}] unless entity @s[scores={class=7}] run playsound block.respawn_anchor.charge player @s ~ ~ ~ 0.6 0.7