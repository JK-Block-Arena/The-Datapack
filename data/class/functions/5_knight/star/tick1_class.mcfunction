# 检测副手
execute as @s[scores={5_star_st=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:502}}]}] run function class:5_knight/star/trigger

# 经验条
scoreboard players remove @s[scores={5_star_last=1..}] 5_star_last 1
execute as @s[scores={5_star_last=1..}] run function class:5_knight/star/update_xpbar