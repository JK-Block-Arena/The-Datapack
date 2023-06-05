tag @s add self

# 造成伤害
execute if score @s statPlayerLevel matches 1 as @e[type=#modules:living,distance=..4.1] unless score @s team = @e[tag=self,limit=1] team at @s run function class:5_knight/star/victim
execute if score @s statPlayerLevel matches 2 as @e[type=#modules:living,distance=..3.7] unless score @s team = @e[tag=self,limit=1] team at @s run function class:5_knight/star/victim
execute if score @s statPlayerLevel matches 3 as @e[type=#modules:living,distance=..3.3] unless score @s team = @e[tag=self,limit=1] team at @s run function class:5_knight/star/victim
execute if score @s statPlayerLevel matches 4 as @e[type=#modules:living,distance=..2.9] unless score @s team = @e[tag=self,limit=1] team at @s run function class:5_knight/star/victim

# 粒子
execute if score @s[scores={team=0}] ray_speed matches -3.. run particle dust 1 1 1 1.5 ~ ~ ~ 1.1 1.1 1.1 0 25 force
execute if score @s[scores={team=1}] ray_speed matches -3.. run particle dust 1 0.631 0.651 1.5 ~ ~ ~ 1.1 1.1 1.1 0 25 force
execute if score @s[scores={team=2}] ray_speed matches -3.. run particle dust 0.663 0.82 1 1.5 ~ ~ ~ 1.1 1.1 1.1 0 25 force
execute if score @s[scores={team=3}] ray_speed matches -3.. run particle dust 0.69 1 0.663 1.5 ~ ~ ~ 1.1 1.1 1.1 0 25 force
execute if score @s[scores={team=4}] ray_speed matches -3.. run particle dust 1 0.969 0.514 1.5 ~ ~ ~ 1.1 1.1 1.1 0 25 force
execute if score @s[scores={team=5}] ray_speed matches -3.. run particle dust 1 0.631 0.651 1.5 ~ ~ ~ 1.1 1.1 1.1 0 25 force
execute if score @s[scores={team=6}] ray_speed matches -3.. run particle dust 0.663 0.82 1 1.5 ~ ~ ~ 1.1 1.1 1.1 0 25 force

# 减速、清理
scoreboard players remove @s ray_speed 1
scoreboard players remove @s 5_star_last 1
tag @s[scores={5_star_last=..0}] add ray_end
execute if score @s 5_star_last matches ..0 run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 0.3 1.5 0.001
execute if score @s 5_star_last matches ..0 as @a if score @s player_id = @e[tag=self,limit=1] player_id run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 0.3 1.5 0.3

tag @s remove self