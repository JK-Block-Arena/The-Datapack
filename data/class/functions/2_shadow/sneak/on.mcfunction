scoreboard players set @s 2_sneak_state 1

# 刷新 Buff
function class:2_shadow/sneak/buff_give

# 特效
effect give @s blindness 1 0 true
playsound minecraft:entity.ender_dragon.flap player @s 0 1000000 0 1000000 0.5
playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.4 0.5

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory