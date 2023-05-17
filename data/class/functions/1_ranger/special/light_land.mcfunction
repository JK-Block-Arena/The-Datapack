# 检测实体
execute if entity @a[tag=projectile_owner,scores={statPlayerLevel=1}] as @e[tag=!projectile_owner,distance=..9,type=#modules:living] run function class:1_ranger/special/light_victim
execute if entity @a[tag=projectile_owner,scores={statPlayerLevel=2}] as @e[tag=!projectile_owner,distance=..8.3,type=#modules:living] run function class:1_ranger/special/light_victim
execute if entity @a[tag=projectile_owner,scores={statPlayerLevel=3}] as @e[tag=!projectile_owner,distance=..7.7,type=#modules:living] run function class:1_ranger/special/light_victim
execute if entity @a[tag=projectile_owner,scores={statPlayerLevel=4}] as @e[tag=!projectile_owner,distance=..7,type=#modules:living] run function class:1_ranger/special/light_victim
# 特效
particle lava ~ ~ ~ 0 0 0 0 16