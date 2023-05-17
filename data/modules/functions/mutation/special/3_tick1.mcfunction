# 记刻
scoreboard players add #gravity_tick mem 1
execute if score #gravity_tick mem matches 2 run scoreboard players set #gravity_tick mem 0

# 改变弹道
execute if score #gravity_tick mem matches 0 as @e[type=#modules:projectile/check,tag=!projectile_land,x=1050,y=90,z=1050,distance=500..] at @s run data modify entity @s NoGravity set value false
execute if score #gravity_tick mem matches 1 as @e[type=#modules:projectile/check,tag=!projectile_land,x=1050,y=90,z=1050,distance=500..] at @s run data modify entity @s NoGravity set value true

# 跳跃音效
execute as @a[scores={jump=1..,state=0..2}] at @s run playsound block.stone.fall player @a ~ ~ ~ 1 0.6
scoreboard players reset * jump