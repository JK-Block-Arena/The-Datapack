function pvp:state/train/enter
execute as @s[scores={tip_0_tutorial=..6}] run tp @s 1043.5 92.0 1016.5 0 -1.5

# 特效
effect give @s blindness 4 0 true
effect give @s slowness 2 5 true
effect give @s resistance 4 5 true
playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 1 1
title @s times 0 60 5
execute if score $mutation_anim mem matches 0 run title @s title {"text":"你死了！","color":"red"}