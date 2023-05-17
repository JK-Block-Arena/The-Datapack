execute as @e[type=#modules:projectile/track_id,tag=!owner_marked] at @s run function modules:projectile/mark_owner
execute as @e[type=#modules:projectile/check,tag=!projectile_land] at @s run function modules:projectile/tick1_real

# 无敌生物
execute as @e[type=minecraft:arrow] at @s if entity @e[distance=..1.4,tag=no_projectile_on] run tp @s ~ ~-0.6 ~
