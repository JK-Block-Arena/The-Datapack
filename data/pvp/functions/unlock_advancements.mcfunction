# 探索之旅
execute as @s[x=-100000,y=0,z=-100000,dx=200000,dy=10000,dz=200000,scores={tip_0_tutorial=7..,state=2}] unless entity @e[tag=map_marker,distance=..200] run scoreboard players set @s hidden_border 1
# 古堡密室
execute as @s[x=-2019,y=35,z=2043,distance=..2,scores={tip_0_tutorial=7..,state=2}] run scoreboard players set @s hidden_room 1

# 卡门线
#execute as @s[x=-2077,y=128,z=-1689,dx=2,dy=0,dz=2,scores={tip_0_tutorial=7..,state=0}] run effect give @s minecraft:levitation 2 120
#execute as @s[x=-2135,y=400,z=-1737,dx=100,dy=50,dz=100,scores={tip_0_tutorial=7..,state=0}] run scoreboard players set @s extra_sky 1
# 第一个彩蛋
execute as @s[x=6095,y=41,z=6030,dx=5,dy=2,dz=5,scores={tip_0_tutorial=7..,state=2}] run scoreboard players set @s extra_first 1
# Believer
execute as @s[scores={class=7,believer_book=756538722}] run scoreboard players set @s extra_believer 1
# 丧钟为谁而鸣
execute unless block 8039 63 8081 minecraft:target[power=0] run scoreboard players set @a[gamemode=adventure,x=8039,y=63,z=8081,distance=..30] extra_bell 1
# rick头
execute as @s[scores={state=2},x=-5041,y=38,z=-5021,distance=..1] run scoreboard players set @s extra_rick_head 1
# rick手
execute as @s[scores={state=2},x=4029,y=36,z=4077,distance=..1] run scoreboard players set @s extra_rick_hand 1
# rick脚
execute as @s[scores={state=2},x=6023,y=39,z=6041,distance=..1] run scoreboard players set @s extra_rick_foot 1
# rick身
execute as @s[scores={state=2},x=-1959,y=47,z=-1985,distance=..1] run scoreboard players set @s extra_rick_body 1
# 友谊赛自定义称号
execute unless score #match_mode mem matches 1 as @s[team=lobby,scores={state=0},advancements={pvp:match/1/v2_1st=true}] run team join v2_1st

function pvp:unlock_advancements2