# 回血效果（正常）
execute unless score $mutation mem matches 1 unless entity @s[scores={class=7}] run effect give @s[scores={brRegen=-3..0},nbt=!{ActiveEffects:[{Id:10,Amplifier:1b}]}] regeneration infinite 1
execute unless score $mutation mem matches 1 unless entity @s[scores={class=7}] run effect give @s[scores={brRegen=-8..-4},nbt=!{ActiveEffects:[{Id:10,Amplifier:2b}]}] regeneration infinite 2
execute unless score $mutation mem matches 1 unless entity @s[scores={class=7}] run effect give @s[scores={brRegen=..-9},nbt=!{ActiveEffects:[{Id:10,Amplifier:3b}]}] regeneration infinite 3

execute if score $mutation mem matches 1 unless entity @s[scores={class=7}] run effect give @s[scores={state=3,brRegen=-3..0},nbt=!{ActiveEffects:[{Id:10,Amplifier:1b}]}] regeneration infinite 1
execute if score $mutation mem matches 1 unless entity @s[scores={class=7}] run effect give @s[scores={state=3,brRegen=-8..-4},nbt=!{ActiveEffects:[{Id:10,Amplifier:2b}]}] regeneration infinite 2
execute if score $mutation mem matches 1 unless entity @s[scores={class=7}] run effect give @s[scores={state=3,brRegen=..-9},nbt=!{ActiveEffects:[{Id:10,Amplifier:3b}]}] regeneration infinite 3