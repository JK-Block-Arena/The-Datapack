execute unless score @a[tag=projectile_owner,limit=1] team = @s team unless entity @s[type=player,gamemode=!adventure] run tag @s add 1_light
effect give @s[tag=1_light] glowing 10
effect give @s[tag=1_light] weakness 10
title @s[tag=1_light] actionbar {"color":"gold","text":"⚠ 已被光焰箭照亮","bold":true}
tag @s remove 1_light