# 检测副手
execute as @s[scores={6_mint_st=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:602}}]}] run function class:6_man/mint/trigger
# 薄荷糖延迟
execute as @s[scores={6_mint_on=1..}] run function class:6_man/mint/update
# 薄荷糖效果
execute as @s[scores={6_mint_on=1}] run function class:6_man/mint/first_use
execute as @s[scores={6_mint_on=..1,6_mint_last=1..}] run function class:6_man/mint/clear_bad_effect