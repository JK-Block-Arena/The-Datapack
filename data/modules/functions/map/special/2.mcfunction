# 漂浮
execute positioned 6056.5 41.5 6063.5 unless entity @e[distance=..2,tag=lobby_item] run summon item_display ~ ~ ~ {Tags:["lobby_item"],item:{id:"phantom_membrane",Count:1},billboard:"vertical",interpolation_duration:0,transformation:{scale:[0.6f,0.6f,0.6f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute positioned 6056.5 40.5 6063.5 run effect give @p[distance=...8,gamemode=adventure] minecraft:levitation 4 5

# 粒子
execute as @a[x=6050,y=50,z=6050,distance=..150] unless entity @s[x=6053,dx=9,y=45,dy=20,z=6058,dz=8] unless entity @s[x=6049,dx=18,y=38,dy=9,z=6053,dz=16] at @s anchored eyes positioned ^ ^ ^3 run particle minecraft:white_ash ~ ~1 ~ 4 4 4 0 15 normal @s