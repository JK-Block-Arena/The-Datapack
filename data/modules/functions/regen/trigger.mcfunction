# 初次触发音效
playsound block.amethyst_block.chime player @s[scores={brRegen=0}] ~ ~ ~ 5 1
# 治愈异常状态
effect clear @s[scores={brRegen=0}] wither
effect clear @s[scores={brRegen=0}] poison
effect clear @s[scores={brRegen=0}] weakness
effect clear @s[scores={brRegen=0}] glowing
effect clear @s[scores={brRegen=0}] blindness
effect clear @s[scores={brRegen=0}] slowness
effect clear @s[scores={brRegen=0}] mining_fatigue

# 回血效果（瞬息万变突变）
execute if score $mutation mem matches 1 as @s[scores={brRegen=0,state=2}] unless score @s class matches 7 run effect give @s instant_health 1 3 true
execute if score $mutation mem matches 1 as @s[scores={brRegen=0,state=2}] unless score @s class matches 7 run particle totem_of_undying ~ ~1.7 ~ 0.3 0.3 0.3 0 40 normal @a
execute if score $mutation mem matches 1 as @s[scores={brRegen=0,state=2}] unless score @s class matches 7 run playsound block.respawn_anchor.charge player @s ~ ~ ~ 0.6 0.7

# 回血效果（正常）
execute unless score $mutation mem matches 1 unless score @s class matches 7 run effect give @s[scores={brRegen=-3..0},nbt=!{ActiveEffects:[{Id:10b,Amplifier:1b}]}] regeneration infinite 1
execute unless score $mutation mem matches 1 unless score @s class matches 7 run effect give @s[scores={brRegen=-8..-4},nbt=!{ActiveEffects:[{Id:10b,Amplifier:2b}]}] regeneration infinite 2
execute unless score $mutation mem matches 1 unless score @s class matches 7 run effect give @s[scores={brRegen=..-9},nbt=!{ActiveEffects:[{Id:10b,Amplifier:3b}]}] regeneration infinite 3