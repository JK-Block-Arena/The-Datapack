# 仪式房粒子
execute if entity @a[x=-2026,y=39,z=2023,distance=..20] run particle reverse_portal -2026 39 2023 3 3 3 0.05 6 normal @a
execute if entity @a[x=-2026,y=39,z=2023,distance=..20] run particle crimson_spore -2026 39 2023 3 3 3 0 4 normal @a
# 莲叶房粒子
execute if entity @a[x=-2028,y=42,z=2048,distance=..20] run particle falling_spore_blossom -2028 42 2048 3 2.5 3 0 3 normal @a
# 图书馆粒子
execute if entity @a[x=-2052,y=39,z=2047,distance=..20] run particle enchant -2052 39 2047 3 2.5 3 1 3 normal @a
# 密室
execute if block -2015 35 2043 stone_button[powered=true] run scoreboard players set #6_room mem 3
execute if block -2017 37 2043 stone_button[powered=true] run scoreboard players set #6_room mem 3
execute if score #6_room mem matches 0 run fill -2016 35 2043 -2016 36 2043 chiseled_stone_bricks
execute if score #6_room mem matches 1.. run fill -2016 35 2043 -2016 36 2043 air
execute if score #6_room mem matches 1.. run scoreboard players remove #6_room mem 1