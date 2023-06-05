# 主大厅粒子
particle end_rod 8.5 243 8.5 1.2 2.1 1.2 0 6 normal @a

# 村庄图夜晚粒子
execute if score $is_day mem matches 0 as @a[x=-1950,y=50,z=-1950,distance=..150] at @s anchored eyes positioned ^ ^ ^3 run particle minecraft:warped_spore ~ ~ ~ 2.5 2.5 2.5 0 6 normal @s

# 冰树图粒子
execute as @a[x=6050,y=50,z=6050,distance=..150] unless entity @s[x=6053,dx=9,y=45,dy=20,z=6058,dz=8] unless entity @s[x=6049,dx=18,y=38,dy=9,z=6053,dz=16] at @s anchored eyes positioned ^ ^ ^3 run particle minecraft:white_ash ~ ~1 ~ 4 4 4 0 15 normal @s

# 古堡仪式房粒子
execute if entity @a[x=-2026,y=39,z=2023,distance=..20] run particle minecraft:reverse_portal -2026 39 2023 3 3 3 0.05 6 normal @a
execute if entity @a[x=-2026,y=39,z=2023,distance=..20] run particle minecraft:crimson_spore -2026 39 2023 3 3 3 0 4 normal @a
# 古堡莲叶房粒子
execute if entity @a[x=-2028,y=42,z=2048,distance=..20] run particle minecraft:falling_spore_blossom -2028 42 2048 3 2.5 3 0 3 normal @a
# 古堡图书馆粒子
execute if entity @a[x=-2052,y=39,z=2047,distance=..20] run particle minecraft:enchant -2052 39 2047 3 2.5 3 1 3 normal @a

# 玄素图，给予贴墙浮空
execute if score $map mem matches 100 as @a[scores={state=2,sneak_time=1..},nbt=!{OnGround:1b}] at @s run function modules:map/xuansu
# 舞台图的毒药池
execute if score $map mem matches 8 positioned 11010.5 36 11042 unless entity @e[limit=1,type=area_effect_cloud,tag=poison_pool,distance=..2] run summon area_effect_cloud 11010.5 36 11042 {Tags:["poison_pool"],Duration:1000000,DurationOnUse:0,RadiusOnUse:0f,Radius:3f,RadiusPerTick:0.0f,WaitTime:1,ReapplicationDelay:5,Color:5739047}
# 舞台图的传送门
execute if score $map mem matches 8 as @a[gamemode=!spectator] at @s if entity @e[limit=1,sort=nearest,type=marker,tag=portal_marker,distance=..2] if block ~ ~ ~ end_portal run function modules:map/end_portal/check
# 矿洞冰上的速度buff
execute if score $map mem matches 9 as @a[scores={state=2},gamemode=adventure] at @s if block ~ ~-1 ~ blue_ice run effect give @s speed 2 19

# 1v1更新分数
bossbar set bossbar:red_v1 name [{"text": "","color": "gold","bold": true},{"selector":"@p[team=red_v1]"}," → ",{"score":{"name": "#1v1_red","objective": "mem"},"color": "red","bold": true}," : ",{"score":{"name": "#1v1_blue","objective": "mem"},"color": "blue","bold": true}," ← ",{"selector":"@p[team=blue_v1]"}]
bossbar set bossbar:blue_v1 name [{"text": "","color": "gold","bold": true},{"selector":"@p[team=red_v1]"}," → ",{"score":{"name": "#1v1_red","objective": "mem"},"color": "red","bold": true}," : ",{"score":{"name": "#1v1_blue","objective": "mem"},"color": "blue","bold": true}," ← ",{"selector":"@p[team=blue_v1]"}]