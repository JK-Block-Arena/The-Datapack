# 加速和跳跃提升
execute positioned 7049.5 33.5 6973.5 unless entity @e[distance=..2,tag=lobby_item] run summon item_display ~ ~ ~ {Tags:["lobby_item"],item:{id:"feather",Count:1},billboard:"vertical",interpolation_duration:0,transformation:{scale:[0.6f,0.6f,0.6f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute positioned 7049.5 32.5 6973.5 run effect give @p[distance=...8,gamemode=adventure] speed 5 10
execute positioned 7049.5 32.5 6973.5 run title @p[distance=...8,gamemode=adventure] title {"text":"风伴你而行","color":"blue"}
execute positioned 7049.5 32.5 6973.5 run title @p[distance=...8,gamemode=adventure] times 0 20 10

execute positioned 7046.5 36.5 6919.5 unless entity @e[distance=..2,tag=lobby_item] run summon item_display ~ ~ ~ {Tags:["lobby_item"],item:{id:"feather",Count:1},billboard:"vertical",interpolation_duration:0,transformation:{scale:[0.6f,0.6f,0.6f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute positioned 7046.5 35.5 6919.5 run effect give @p[distance=...8,gamemode=adventure] speed 5 10
execute positioned 7046.5 35.5 6919.5 run title @p[distance=...8,gamemode=adventure] title {"text":"风伴你而行","color":"blue"}
execute positioned 7046.5 35.5 6919.5 run title @p[distance=...8,gamemode=adventure] times 0 20 10

execute positioned 7066.5 41.5 6983.5 unless entity @e[distance=..2,tag=lobby_item] run summon item_display ~ ~ ~ {Tags:["lobby_item"],item:{id:"rabbit_foot",Count:1},billboard:"vertical",interpolation_duration:0,transformation:{scale:[0.6f,0.6f,0.6f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute positioned 7066.5 40.5 6983.5 run effect give @p[distance=...8,gamemode=adventure] jump_boost 1 8
execute positioned 7066.5 40.5 6983.5 run title @p[distance=...8,gamemode=adventure] title {"text":"跳高高！","color":"green"}
execute positioned 7066.5 40.5 6983.5 run title @p[distance=...8,gamemode=adventure] times 0 20 10

#particle happy_villager ~ ~ ~ 0.1 0.1 0.1 0.001 1