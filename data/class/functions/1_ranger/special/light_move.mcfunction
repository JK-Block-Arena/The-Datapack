# 检测实体
execute if entity @a[tag=projectile_owner,scores={statPlayerLevel=1}] as @e[tag=!projectile_owner,distance=..5,type=#modules:living] run function class:1_ranger/special/light_victim
execute if entity @a[tag=projectile_owner,scores={statPlayerLevel=2..3}] as @e[tag=!projectile_owner,distance=..4,type=#modules:living] run function class:1_ranger/special/light_victim
execute if entity @a[tag=projectile_owner,scores={statPlayerLevel=4}] as @e[tag=!projectile_owner,distance=..3,type=#modules:living] run function class:1_ranger/special/light_victim
# 特效
particle lava ~ ~ ~ 0 0 0 0 4
playsound block.fire.ambient player @a[distance=..16] ~ ~ ~ 20
playsound block.fire.ambient player @a[distance=..16] ~ ~ ~ 20 0.6
# 清理tag
tag @a remove projectile_owner