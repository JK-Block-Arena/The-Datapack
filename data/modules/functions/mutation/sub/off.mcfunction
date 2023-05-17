# 关闭突变
scoreboard players set $mutation mem 0
scoreboard players set $mutation_anim mem 0
scoreboard players set $mutation_warn mem 0
bossbar set modules:mutation value 0

function modules:mutation/on_disabled