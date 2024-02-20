title @s actionbar {"color":"gold","text":"⚠ 暗影形态已解除","bold":true}

scoreboard players set @s 2_sneak_state 0

# 刷新 Buff
function class:2_shadow/sneak/buff_clear

# 特效
effect give @s blindness 1 0 true
playsound entity.ender_dragon.flap player @s 0 1000000 0 1000000 1
playsound entity.ender_dragon.flap player @a ~ ~ ~ 0.4 1

# 刷新冷却
scoreboard players remove @s 2_sneak_st 1
execute if score $is_day mem matches 0 run scoreboard players set @s 2_sneak_cd 9000
execute if score $is_day mem matches 1 run scoreboard players set @s 2_sneak_cd 18000

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory