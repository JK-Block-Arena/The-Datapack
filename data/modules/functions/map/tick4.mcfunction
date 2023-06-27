# 主大厅粒子
particle end_rod 8.5 243 8.5 1.2 2.1 1.2 0 6 normal @a
# 村庄图夜晚粒子
execute if score $is_day mem matches 0 as @a[x=-1950,y=50,z=-1950,distance=..150] at @s anchored eyes positioned ^ ^ ^3 run particle minecraft:warped_spore ~ ~ ~ 2.5 2.5 2.5 0 6 normal @s
# 冰树
execute if score $map mem matches 2 run function modules:map/special/2
# 瀑布
execute if score $map mem matches 4 run function modules:map/special/4
# 古堡
execute if score $map mem matches 6 run function modules:map/special/6
# 舞台
execute if score $map mem matches 8 run function modules:map/special/8
# 玄素
execute if score $map mem matches 100 as @a[scores={state=2,sneak_time=1..},nbt=!{OnGround:1b}] at @s run function modules:map/special/100
# 矿洞冰上的速度buff
execute if score $map mem matches 9 as @a[scores={state=2},gamemode=adventure] at @s if block ~ ~-1 ~ blue_ice run effect give @s speed 1 19
# 1v1
function modules:map/special/1v1