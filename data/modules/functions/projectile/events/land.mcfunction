# 在弹射物落地或命中实体时触发
# as 弹射物实体，tag：projectile_owner

# 游侠巫毒箭
execute as @s[nbt={Color:5739047}] run function class:1_ranger/special/poison_land
# 游侠光焰箭
execute as @s[nbt={Color:16752969}] run function class:1_ranger/special/light_land
# 游侠折跃箭
execute as @s[nbt={Color:1275237}] if entity @a[tag=projectile_owner,scores={state=2..4,death=0}] run function class:1_ranger/special/teleport_land

# 海嗣海神戟
execute unless score $mutation mem matches 8 as @s[type=trident] run function class:4_oceancat/trident/throw_land
