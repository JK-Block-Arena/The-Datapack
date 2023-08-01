# 载具
summon armor_stand ~ ~ ~ {Tags:["10_sneak_vehicle"],Small:1b,Silent:1b,Invisible:1b}
ride @s mount @e[limit=1,tag=10_sneak_vehicle,distance=..2,sort=nearest]

# 间隔一刻
schedule function class:10_summoner/eggs/trigger/sneak_fix_ 3t replace