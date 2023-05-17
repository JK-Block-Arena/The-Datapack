execute as @e[tag=train_marker] at @s unless entity @e[type=vindicator,distance=..7] unless entity @a[distance=..11,gamemode=adventure] run scoreboard players add @s vindicator_cd 1
execute as @e[scores={vindicator_cd=13..}] at @s run function pvp:state/train/summon_vindicator

# 让它们不乱跑
execute as @e[type=vindicator] at @s unless entity @a[distance=..11,gamemode=adventure] run effect give @s slowness 2 10 true