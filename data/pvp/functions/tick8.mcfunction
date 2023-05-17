# 检测触水
tag @e remove in_water
# 战场入水
execute as @e[type=#modules:living] at @s if block ~ ~.13 ~ #modules:harmful unless entity @s[type=player,gamemode=!adventure] unless score $mutation mem matches 5 run tag @s add in_water
# 大厅入水
execute as @e[gamemode=adventure] at @s unless entity @s[scores={state=1..2}] if block ~ ~.13 ~ #modules:harmful run tag @s add in_water
execute as @e[type=#modules:living,gamemode=adventure,x=1050,y=100,z=1050,distance=..100] at @s if block ~ ~.13 ~ #modules:harmful run tag @s add in_water
# 海嗣入水额外判定
execute as @a[tag=in_water,scores={state=2..4,class=4}] unless entity @s[scores={4_water_last=0,4_water_storage=0}] run tag @s remove in_water
execute as @e[tag=in_water] at @s run function pvp:water
# 玄素图，给予贴墙浮空
execute if score $map mem matches 100 as @a[x=2968,y=30,z=3000,dx=75,dy=29,dz=100,scores={Sneaking_map=1..},nbt=!{OnGround:1b}] at @s run function modules:map/xuansu
scoreboard players reset @a Sneaking_map
# 舞台图的毒药池
execute if score $map mem matches 8 positioned 11010.5 36 11042 unless entity @e[limit=1,type=area_effect_cloud,tag=poison_pool,distance=..2] run summon area_effect_cloud 11010.5 36 11042 {Tags:["poison_pool"],Duration:1000000,DurationOnUse:0,RadiusOnUse:0f,Radius:3f,RadiusPerTick:0.0f,WaitTime:1,ReapplicationDelay:5,Color:5739047}
# 矿洞冰上的速度buff
execute if score $map mem matches 9 as @a[scores={state=2},gamemode=adventure] at @s if block ~ ~-1 ~ blue_ice run effect give @s speed 2 19