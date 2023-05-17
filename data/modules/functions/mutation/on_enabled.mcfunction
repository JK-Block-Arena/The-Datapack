scoreboard players operation $mutation mem = $mutation_new mem

# 设置血量
execute if score $mutation mem matches 1 as @a[scores={state=2}] run attribute @s minecraft:generic.max_health base set 12
execute if score $mutation mem matches 1 as @a[scores={state=2,hp=20..}] if score @s class matches 3 run effect give @s minecraft:instant_health 2 0 true
execute if score $mutation mem matches 1 as @a[scores={state=2,hp=12..}] unless score @s class matches 3 run effect give @s minecraft:instant_health 2 0 true
execute if score $mutation mem matches 6 as @a[scores={state=2}] run attribute @s minecraft:generic.max_health base set 30

# 设置 bossbar
scoreboard players set $mutation_bossbar mem 0
execute if score $mutation mem matches 2 run scoreboard players set $mutation_bossbar mem 1
execute if score $mutation mem matches 7 run scoreboard players set $mutation_bossbar mem 1
execute if score $mutation mem matches 9 run scoreboard players set $mutation_bossbar mem 1
bossbar set modules:mutation value 0
function modules:update_bossbar

# 开启友伤
execute if score $mutation mem matches 6 run scoreboard players set $skill_friendly_fire debug 0
execute unless score $mutation mem matches 6 run scoreboard players set $skill_friendly_fire debug 1
function debug:trigger/skill_friendly_fire

# 折跃灵泉10s时间循环启动
execute if score $mutation mem matches 5 run function modules:mutation/special/5_loop