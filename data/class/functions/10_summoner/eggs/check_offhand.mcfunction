# 检测副手
execute as @s[scores={10_zombie_st=1..,10_mana=3000..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1001}}]}] run function class:10_summoner/eggs/trigger/zombie
execute as @s[scores={10_vex_st=1..,10_mana=2000..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1002}}]}] run function class:10_summoner/eggs/trigger/vex
execute as @s[scores={10_creeper_st=1..,10_mana=2500..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1003}}]}] run function class:10_summoner/eggs/trigger/creeper
execute as @s[scores={10_golem_st=1..,10_mana=4000..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1004}}]}] run function class:10_summoner/eggs/trigger/golem
execute as @s[scores={10_pig_st=1..,10_mana=2000..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1005}}]}] run function class:10_summoner/eggs/trigger/pig