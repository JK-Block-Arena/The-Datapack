tag @s add self

# 粒子
particle instant_effect ~ ~-0.5 ~ 3 3 3 0 500

# 标记主人
execute as @a if score @s player_id = @e[tag=self,limit=1] player_id run tag @s add owner

# 1. 找敌方玩家
execute if score @s statPlayerLevel matches 1 as @a[distance=..9,gamemode=adventure] unless score @s team = @e[tag=self,limit=1] team run tag @s add target
execute if score @s statPlayerLevel matches 2..3 as @a[distance=..8,gamemode=adventure] unless score @s team = @e[tag=self,limit=1] team run tag @s add target
execute if score @s statPlayerLevel matches 4 as @a[distance=..7,gamemode=adventure] unless score @s team = @e[tag=self,limit=1] team run tag @s add target
# 2. 找敌方召唤物
execute unless entity @e[tag=target] if entity @a[tag=owner,team=lobby] run tag @e[team=!lobby,type=#modules:living,distance=..8,limit=1,sort=random] add target
execute unless entity @e[tag=target] if entity @a[tag=owner,team=red] run tag @e[team=!red,type=#modules:living,distance=..8,limit=1,sort=random] add target
execute unless entity @e[tag=target] if entity @a[tag=owner,team=blue] run tag @e[team=!blue,type=#modules:living,distance=..8,limit=1,sort=random] add target
execute unless entity @e[tag=target] if entity @a[tag=owner,team=green] run tag @e[team=!green,type=#modules:living,distance=..8,limit=1,sort=random] add target
execute unless entity @e[tag=target] if entity @a[tag=owner,team=yellow] run tag @e[team=!yellow,type=#modules:living,distance=..8,limit=1,sort=random] add target
# 3. 找友方目标
execute unless entity @e[tag=target] if score @s statPlayerLevel matches 1 run tag @e[type=#modules:living,distance=..7,limit=1,sort=random] add target
execute unless entity @e[tag=target] if score @s statPlayerLevel matches 2..3 run tag @e[type=#modules:living,distance=..8,limit=1,sort=random] add target
execute unless entity @e[tag=target] if score @s statPlayerLevel matches 4 run tag @e[type=#modules:living,distance=..9,limit=1,sort=random] add target
# 4. 找自己
execute unless entity @e[tag=target] run tag @s add target
# 唤雷
execute at @e[tag=target,sort=random,limit=1] run function class:4_oceancat/thunder/summon_guardian
tag @e remove target

# 清理
scoreboard players remove @s 4_guardian_life 1
tag @a remove owner
tag @s remove self

# 显示警告
title @a[distance=..10,gamemode=!spectator] actionbar {"color":"gold","text":"⚠ 警惕雷暴威胁","bold":true}
execute positioned ~ ~7 ~ run title @a[distance=..9,gamemode=!spectator] actionbar {"color":"gold","text":"⚠ 警惕雷暴威胁","bold":true}