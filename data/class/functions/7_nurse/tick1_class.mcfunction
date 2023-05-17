function class:7_nurse/potions/tick1_class
function class:7_nurse/tele_eye/tick1_class

# 消除牧师的力量与虚弱和缓慢效果
effect clear @s strength
effect clear @s weakness
effect clear @s slowness

# 牧师静息，技能冷却速度为2.5倍，瞬息万变中冷却速度为5倍，狂暴之血关闭冷却
# 这里把data\modules\functions\regen\tick8.mcfunction都修改了。。
execute if score $mutation mem matches 1 as @s[scores={brRegen=..0}] run scoreboard players set @s cd_speed 500
execute unless score $mutation mem matches 1 as @s[scores={brRegen=..0}] run scoreboard players set @s cd_speed 250

execute if score $mutation mem matches 4 run title @s[scores={brRegen=4}] actionbar [{"color":"red","text":"✖ "},{"text":"狂暴之血突变时牧师无法静息","bold":true}]
execute if score $mutation mem matches 4 run scoreboard players set @s[scores={brRegen=..4}] brRegen 10

# 成就
scoreboard players enable @s[advancements={pvp:extra/believer=false}] believer_book
