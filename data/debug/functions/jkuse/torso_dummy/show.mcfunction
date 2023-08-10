# 小数（这里的golem_cd和傀儡冷却无关，只是个积分而已）
scoreboard players operation @s 10_golem_cd = @s mem
scoreboard players operation @s 10_golem_cd %= #1000 mem
scoreboard players remove @s 10_golem_cd 1000
scoreboard players operation @s 10_golem_cd *= #-1 mem
scoreboard players set @s[scores={10_golem_cd=1000}] 10_golem_cd 0

# 整数
scoreboard players operation @s mem /= #1000 mem
scoreboard players remove @s mem 100

# 显示
data modify block 0 235 16 back_text.messages[0] set value '[{"score":{"name": "@e[limit=1,tag=torso_dummy]","objective": "mem"},"color": "gold","bold": true},".",{"score":{"name": "@e[limit=1,tag=torso_dummy]","objective": "10_golem_cd"}}]'
data modify entity @s CustomName set from block 0 235 16 back_text.messages[0]

# 恢复
effect give @s instant_health 1 50 true