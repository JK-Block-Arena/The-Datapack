function class:7_nurse/potions/tick1_class
function class:7_nurse/tele_eye/tick1_class

# 消除牧师的力量与虚弱和缓慢效果
effect clear @s strength
effect clear @s weakness
effect clear @s slowness

# 牧师在瞬息万变冷却加速
scoreboard players set @s[scores={team=0,brRegen=..0}] cd_speed 250
execute if score $mutation mem matches 1 run scoreboard players set @s[scores={team=1..4,brRegen=..0}] cd_speed 500
execute unless score $mutation mem matches 1 run scoreboard players set @s[tag=brRegenCheck,scores={team=1..4,brRegen=..0}] cd_speed 250

# 成就
scoreboard players enable @s[advancements={pvp:extra/believer=false}] believer_book

execute if score $mutation mem matches 8 run effect give @s[nbt={Inventory:[{Slot:-106b}]},scores={state=2,team=1..4}] glowing 3