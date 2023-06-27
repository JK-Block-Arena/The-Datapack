# 毒药池
execute positioned 11010.5 36 11042 unless entity @e[limit=1,type=area_effect_cloud,tag=lobby_item,distance=..2] run summon area_effect_cloud ~ ~ ~ {Tags:["lobby_item"],Duration:1000000,DurationOnUse:0,RadiusOnUse:0f,Radius:3f,RadiusPerTick:0.0f,WaitTime:1,ReapplicationDelay:5,Color:5739047}

# 传送门
execute as @a[gamemode=!spectator] at @s if entity @e[limit=1,sort=nearest,type=marker,tag=portal_marker,distance=..2] if block ~ ~ ~ black_carpet run function modules:map/special/8_portal