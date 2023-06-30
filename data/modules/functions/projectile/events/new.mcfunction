# 在弹射物出现时触发
# as 弹射物实体，tag：projectile_owner
# 添加粒子
function debug:jkuse/particle/projectile_add
# 加伤害
execute as @s[nbt={Color:976630}] run function modules:projectile/events/power
execute if entity @p[tag=projectile_owner,nbt={ActiveEffects:[{Id:5}]}] run function modules:projectile/events/power
# 减伤害
execute if entity @p[tag=projectile_owner,nbt={ActiveEffects:[{Id:18}]}] run function modules:projectile/events/power_