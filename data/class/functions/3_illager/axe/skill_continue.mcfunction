particle end_rod ~ ~1 ~ 0.3 0.7 0.3 0.05 3 normal @a[distance=0.1..]

scoreboard players remove @s 3_axe_last 1
function class:3_illager/axe/cooldown_update

execute if score @s 3_axe_last matches 0 run function class:3_illager/axe/skill_end