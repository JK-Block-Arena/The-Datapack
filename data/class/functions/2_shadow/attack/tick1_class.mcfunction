# 检查副手
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:202}}]}] run function class:2_shadow/attack/tick1_offhand

# 更新灌注 Buff
execute as @s[scores={2_attack_stack=1..}] run function class:2_shadow/attack/update_buff
scoreboard players remove @s[scores={2_attack_stack=1..}] 2_attack_time 50
execute if score @s 2_attack_stack matches 1.. if score @s 2_attack_time matches ..0 run function class:2_shadow/attack/natural_end
