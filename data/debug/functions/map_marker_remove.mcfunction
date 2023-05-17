execute as @e[tag=map_marker,distance=..3] run tellraw @a[distance=..3] ["已清除地图标记！"]
execute as @e[tag=map_marker,distance=..3] run kill @s