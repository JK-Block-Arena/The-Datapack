# 在弹射物出现时触发
# as 弹射物实体，tag：projectile_owner
# 添加粒子
execute store result storage stat:mem mem.particle_num int 1 run scoreboard players get @p[tag=projectile_owner] particle
function debug:jkuse/particle/projectile_add with storage stat:mem mem
# 加伤害
execute if entity @p[tag=projectile_owner,nbt={active_effects:[{id:"minecraft:strength"}]}] run function modules:projectile/events/power
# 减伤害
execute if entity @p[tag=projectile_owner,nbt={active_effects:[{id:"minecraft:weakness"}]}] run function modules:projectile/events/power_