# 效果
effect give @s resistance 2 5
effect give @s slowness 2 200
effect give @s jump_boost 2 240 true
attribute @s generic.knockback_resistance modifier add 123-0-0-3-101 "" 100 add
scoreboard players set @s 3_axe_last 40

# 特效
particle lava ~ ~1 ~ 0.3 0.7 0.3 0 20 normal @a
particle end_rod ~ ~1 ~ 0.5 0.7 0.5 0.05 10 normal @a[distance=0.1..]
playsound entity.zombie.attack_iron_door player @s 0 1000000 0 200000 0
playsound entity.zombie.attack_iron_door player @a[distance=0.1..] ~ ~ ~ 1 0
playsound block.beacon.activate player @s 0 1000000 0 1000000 1.1
playsound block.beacon.activate player @s 0 1000000 0 1000000 1.1
playsound block.beacon.activate player @a[distance=0.1..] ~ ~ ~ 1 1.1
playsound block.beacon.activate player @a[distance=0.1..] ~ ~ ~ 1 1.1

# 减少存储
scoreboard players remove @s 3_axe_st 1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory
