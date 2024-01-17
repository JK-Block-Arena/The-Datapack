# golem_cd仅为积分方便
scoreboard players set @s 10_golem_cd 100000
scoreboard players operation @s 10_golem_cd -= @s mem
scoreboard players operation @s mem = @s 10_golem_cd

# 小数 & 整数
scoreboard players operation @s 10_golem_cd %= #1000 mem
scoreboard players operation @s mem /= #1000 mem

# 显示
data modify block 0 235 16 back_text.messages[0] set value '[{"text":"-","color": "gold","bold": true},{"score":{"name": "@e[limit=1,tag=torso_dummy]","objective": "mem"},"color": "gold","bold": true},".",{"score":{"name": "@e[limit=1,tag=torso_dummy]","objective": "10_golem_cd"}}]'
data modify entity @s CustomName set from block 0 235 16 back_text.messages[0]

# 恢复
data modify entity @s Health set value 100.0f