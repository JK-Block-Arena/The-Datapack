# 仪式房粒子
execute if entity @a[x=-2026,y=39,z=2023,distance=..20] run particle minecraft:reverse_portal -2026 39 2023 3 3 3 0.05 6 normal @a
execute if entity @a[x=-2026,y=39,z=2023,distance=..20] run particle minecraft:crimson_spore -2026 39 2023 3 3 3 0 4 normal @a
# 莲叶房粒子
execute if entity @a[x=-2028,y=42,z=2048,distance=..20] run particle minecraft:falling_spore_blossom -2028 42 2048 3 2.5 3 0 3 normal @a
# 图书馆粒子
execute if entity @a[x=-2052,y=39,z=2047,distance=..20] run particle minecraft:enchant -2052 39 2047 3 2.5 3 1 3 normal @a
# 密室
execute positioned -2016 36 2043 unless entity @e[distance=..2,tag=lobby_item] run summon minecraft:interaction ~ ~ ~ {Tags:["lobby_item","hidden_room"],width:1.01f,height:1.01f}
execute as @e[limit=1,tag=hidden_room] run function modules:map/special/6_room