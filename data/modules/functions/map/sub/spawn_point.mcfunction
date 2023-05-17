# 地图名称显示
function modules:map/sub/map_display

forceload remove all

# 训练场 大厅 赞助者大厅
forceload add 1000 1000 1100 1100
forceload add -16 -16 16 16
forceload add -899 -24 -877 40

# 1：村庄地图
execute if score $map mem matches 1 run spawnpoint @a -1950 150000 -1950
execute if score $map mem matches 1 run forceload add -2000 -2000 -1900 -1900

# 2：冰树地图
execute if score $map mem matches 2 run spawnpoint @a 6050 150000 6050
execute if score $map mem matches 2 run forceload add 6000 6000 6100 6100

# 3：沙滩
execute if score $map mem matches 3 run spawnpoint @a 4050 150000 4050
execute if score $map mem matches 3 run forceload add 4000 4000 4100 4100

# 4：瀑布
execute if score $map mem matches 4 run spawnpoint @a 7050 150000 6950
execute if score $map mem matches 4 run forceload add 7000 7000 7100 6900

# 5：丛林
execute if score $map mem matches 5 run spawnpoint @a 8050 150000 8050
execute if score $map mem matches 5 run forceload add 7990 7990 8110 8110

# 6：古堡地图
execute if score $map mem matches 6 run spawnpoint @a -2050 150000 2050
execute if score $map mem matches 6 run forceload add -2000 2000 -2100 2100

# 7：商店
execute if score $map mem matches 7 run spawnpoint @a -5050 150000 -5050
execute if score $map mem matches 7 run forceload add -5000 -5000 -5100 -5100

# 8：舞台
execute if score $map mem matches 8 run spawnpoint @a 11050 150000 11050
execute if score $map mem matches 8 run forceload add 11000 11000 11100 11100

# 9：矿洞
execute if score $map mem matches 9 run spawnpoint @a 12050 150000 12050
execute if score $map mem matches 9 run forceload add 12000 12000 12100 12100

# 100：玄素
execute if score $map mem matches 100 run spawnpoint @a 3000 150000 3050
execute if score $map mem matches 100 run forceload add 2950 3000 3050 3100

# 1v1地图集
#execute unless score $map_v1 mem matches 1.. run 
scoreboard players set $map_v1 mem 1
execute if score $map_v1 mem matches 1 run forceload add 20014 20095 20098 20011
execute if score $map_v1 mem matches 2 run forceload add 20014 20095 20098 20011

# 刷新方块
execute if score $map mem matches 1 run setblock -1959 47 -1987 minecraft:spruce_trapdoor[open=true,half=top]
execute if score $map mem matches 3 run setblock 4031 39 4077 minecraft:spruce_trapdoor[open=false,half=top,waterlogged=true]
execute if score $map mem matches 5 run fill 8024 57 8025 8025 35 8027 air
execute if score $map mem matches 5 run setblock 8024 35 8025 structure_block{mode:"LOAD",sizeX:2,sizeY:4,sizeZ:3,name:"lift:5"}
execute if score $map mem matches 5 run setblock 8024 36 8025 redstone_block
execute if score $map mem matches 7 run data merge block -5026 43 -5034 {Page:0}

# #1：方块
#execute if score $map mem matches 5 run spawnpoint @a 2425 150000 2575
#execute if score $map mem matches 5 run forceload add 2500 2500 2350 2650

#schedule function debug:jkuse/xmas/init 1s