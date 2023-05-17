# 在空中的弹射物每 1t 触发一次
# as 弹射物实体，tag：projectile_owner

# 游侠光焰箭
execute as @s[nbt={Color:16752969}] run function class:1_ranger/special/light_move

# 弹射物尾迹
function debug:jkuse/particle/loop_projectile