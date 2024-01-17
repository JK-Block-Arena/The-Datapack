# 检测触水
tag @e remove in_water
# 战场入水
execute as @e[type=#modules:living,scores={team=1..4}] at @s if block ~ ~.13 ~ #modules:harmful unless score $mutation mem matches 5 run tag @s add in_water
execute as @e[type=#modules:living,scores={team=5..6}] at @s if block ~ ~.13 ~ #modules:harmful run tag @s add in_water
#execute as @e[type=#modules:living] at @s if block ~ ~.13 ~ #modules:harmful unless entity @s[type=player,gamemode=!adventure] unless score $mutation mem matches 5 run tag @s add in_water
# 大厅入水
execute as @a[gamemode=adventure] at @s unless entity @s[scores={state=1..2}] if block ~ ~.13 ~ #modules:harmful_lobby run tag @s add in_water
execute as @e[type=#modules:livingnotplayer,x=1050,y=100,z=1050,distance=..100] at @s if block ~ ~.13 ~ #modules:harmful_lobby run tag @s add in_water
# 海嗣入水额外判定
execute as @a[tag=in_water,scores={state=2..3,class=4}] unless entity @s[scores={4_water_last=0,4_water_st=..0}] run tag @s remove in_water
# 检查完毕
execute as @e[tag=in_water] at @s run function pvp:water