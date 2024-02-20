# 血量改变
execute if score $mutation mem matches 1 as @a[scores={state=2,team=1..4}] run attribute @s generic.max_health base set 12
execute if score $mutation mem matches 6 as @a[scores={state=2,team=1..4}] run attribute @s generic.max_health base set 30
execute unless score $mutation mem matches 1 unless score $mutation mem matches 6 as @a[scores={state=2,team=1..4}] run attribute @s generic.max_health base set 20