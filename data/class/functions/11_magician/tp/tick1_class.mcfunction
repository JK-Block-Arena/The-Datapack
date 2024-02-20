# 副手
# 传送到目标
execute as @s[scores={11_tp_st=1..,11_tp_wait=-1,11_tp_last_wait=-1},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:11070}}]}] run function class:11_magician/tp/trigger

# 传送等待
scoreboard players remove @s[scores={11_tp_wait=1..}] 11_tp_wait 1
execute as @s[scores={11_tp_st=1..,11_tp_wait=0}] run function class:11_magician/tp/tp_target

# 传送返回等待
scoreboard players remove @s[scores={11_tp_last_wait=1..}] 11_tp_last_wait 1
execute as @s[scores={11_tp_last_wait=0}] run function class:11_magician/tp/allow_tp_back

# 传送返回
scoreboard players remove @s[scores={11_tp_last=1..}] 11_tp_last 1
execute as @s[scores={11_tp_last=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:11071}}]}] run function class:11_magician/tp/trigger_back

## 未使用二次传送
scoreboard players remove @s[scores={11_tp_last=1,11_tp_st=1..}] 11_tp_st 1

# 经验条
function class:11_magician/tp/update_xpbar