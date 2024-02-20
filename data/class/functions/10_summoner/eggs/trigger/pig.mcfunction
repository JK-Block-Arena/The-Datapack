ride @s dismount
# 召唤
summon pig ~ ~.1 ~ {Silent:1b,NoAI:1b,Saddle:1b,CustomName:'"猪猪发射器"',CustomNameVisible:true,Tags:["new_minion"]}
playsound entity.pig.ambient player @a ~ ~ ~ 1.5 1.1

# 设置玩家信息
scoreboard players operation @e[tag=new_minion] player_id = @s player_id
scoreboard players operation @e[tag=new_minion] team = @s team
scoreboard players operation @e[tag=new_minion] statPlayerLevel = @s statPlayerLevel
execute as @s[team=lobby] run team join lobby @e[tag=new_minion]
execute as @s[team=red] run team join red @e[tag=new_minion]
execute as @s[team=blue] run team join blue @e[tag=new_minion]
execute as @s[team=green] run team join green @e[tag=new_minion]
execute as @s[team=yellow] run team join yellow @e[tag=new_minion]
execute as @s[team=red_v1] run team join red_v1 @e[tag=new_minion]
execute as @s[team=blue_v1] run team join blue_v1 @e[tag=new_minion]
scoreboard players set @e[tag=new_minion] mem 2
data modify entity @e[limit=1,tag=new_minion] Rotation set from entity @s Rotation
ride @s mount @e[limit=1,type=pig,tag=new_minion,sort=nearest]

# 清理
tag @e remove new_minion

# 减少存储
scoreboard players remove @s 10_pig_st 1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory