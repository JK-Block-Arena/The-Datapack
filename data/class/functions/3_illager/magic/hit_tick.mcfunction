# 标记主人
tag @s add self
execute as @a if score @s player_id = @e[tag=self,limit=1] player_id run tag @s add owner
tag @s remove self

# 烟雾
execute if entity @a[tag=owner,team=lobby] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1 1 1 0.005 30 force @a[tag=!owner]
execute if entity @a[tag=owner,team=red] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1 1 1 0.005 30 force @a[team=!red]
execute if entity @a[tag=owner,team=blue] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1 1 1 0.005 30 force @a[team=!blue]
execute if entity @a[tag=owner,team=green] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1 1 1 0.005 30 force @a[team=!green]
execute if entity @a[tag=owner,team=yellow] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1 1 1 0.005 30 force @a[team=!yellow]
execute if entity @a[tag=owner,team=red_v1] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1 1 1 0.005 30 force @a[team=!red_v1]
execute if entity @a[tag=owner,team=blue_v1] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1 1 1 0.005 30 force @a[team=!blue_v1]

execute if entity @a[tag=owner,team=lobby] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.005 20 normal @a[tag=owner]
execute if entity @a[tag=owner,team=red] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.005 20 normal @a[team=red]
execute if entity @a[tag=owner,team=blue] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.005 20 normal @a[team=blue]
execute if entity @a[tag=owner,team=green] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.005 20 normal @a[team=green]
execute if entity @a[tag=owner,team=yellow] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.005 20 normal @a[team=yellow]
execute if entity @a[tag=owner,team=red_v1] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.005 20 normal @a[team=red_v1]
execute if entity @a[tag=owner,team=blue_v1] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.005 20 normal @a[team=blue_v1]

execute if entity @a[tag=owner,team=lobby] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.3 1.3 1.3 0.005 60 normal @a[tag=!owner]
execute if entity @a[tag=owner,team=red] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.3 1.3 1.3 0.005 60 normal @a[team=!red]
execute if entity @a[tag=owner,team=blue] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.3 1.3 1.3 0.005 60 normal @a[team=!blue]
execute if entity @a[tag=owner,team=green] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.3 1.3 1.3 0.005 60 normal @a[team=!green]
execute if entity @a[tag=owner,team=yellow] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.3 1.3 1.3 0.005 60 normal @a[team=!yellow]
execute if entity @a[tag=owner,team=red_v1] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.3 1.3 1.3 0.005 60 normal @a[team=!red_v1]
execute if entity @a[tag=owner,team=blue_v1] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.3 1.3 1.3 0.005 60 normal @a[team=!blue_v1]

execute if entity @a[tag=owner,team=lobby] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.3 1.3 1.3 0.005 40 normal @a[tag=owner]
execute if entity @a[tag=owner,team=red] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.3 1.3 1.3 0.005 40 normal @a[team=red]
execute if entity @a[tag=owner,team=blue] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.3 1.3 1.3 0.005 40 normal @a[team=blue]
execute if entity @a[tag=owner,team=green] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.3 1.3 1.3 0.005 40 normal @a[team=green]
execute if entity @a[tag=owner,team=yellow] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.3 1.3 1.3 0.005 40 normal @a[team=yellow]
execute if entity @a[tag=owner,team=red_v1] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.3 1.3 1.3 0.005 40 normal @a[team=red_v1]
execute if entity @a[tag=owner,team=blue_v1] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.3 1.3 1.3 0.005 40 normal @a[team=blue_v1]

execute if entity @a[tag=owner,team=lobby] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.6 1.6 1.6 0.005 90 force @a[tag=!owner]
execute if entity @a[tag=owner,team=red] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.6 1.6 1.6 0.005 90 force @a[team=!red]
execute if entity @a[tag=owner,team=blue] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.6 1.6 1.6 0.005 90 force @a[team=!blue]
execute if entity @a[tag=owner,team=green] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.6 1.6 1.6 0.005 90 force @a[team=!green]
execute if entity @a[tag=owner,team=yellow] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.6 1.6 1.6 0.005 90 force @a[team=!yellow]
execute if entity @a[tag=owner,team=red_v1] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.6 1.6 1.6 0.005 90 force @a[team=!red_v1]
execute if entity @a[tag=owner,team=blue_v1] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.6 1.6 1.6 0.005 90 force @a[team=!blue_v1]

execute if entity @a[tag=owner,team=lobby] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.6 1.6 1.6 0.005 60 force @a[tag=owner]
execute if entity @a[tag=owner,team=red] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.6 1.6 1.6 0.005 60 force @a[team=red]
execute if entity @a[tag=owner,team=blue] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.6 1.6 1.6 0.005 60 force @a[team=blue]
execute if entity @a[tag=owner,team=green] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.6 1.6 1.6 0.005 60 force @a[team=green]
execute if entity @a[tag=owner,team=yellow] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.6 1.6 1.6 0.005 60 force @a[team=yellow]
execute if entity @a[tag=owner,team=red_v1] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.6 1.6 1.6 0.005 60 force @a[team=red_v1]
execute if entity @a[tag=owner,team=blue_v1] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.6 1.6 1.6 0.005 60 force @a[team=blue_v1]

particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.6 1.6 1.6 0.01 9 normal
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.6 1.6 1.6 0.02 6 normal
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.6 1.6 1.6 0.03 3 normal
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.6 1.6 1.6 0.05 12 normal
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.6 1.6 1.6 0.07 8 normal
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.6 1.6 1.6 0.1 4 normal

# 致盲
execute if entity @a[tag=owner,team=lobby] run effect give @e[type=vindicator,distance=..5] slowness 6 100
execute if entity @a[tag=owner,team=red,scores={statPlayerLevel=1}] run effect give @a[team=!red,distance=..6,gamemode=adventure] blindness 6
execute if entity @a[tag=owner,team=red,scores={statPlayerLevel=2..3}] run effect give @a[team=!red,distance=..5,gamemode=adventure] blindness 5
execute if entity @a[tag=owner,team=red,scores={statPlayerLevel=4}] run effect give @a[team=!red,distance=..4,gamemode=adventure] blindness 4
execute if entity @a[tag=owner,team=blue,scores={statPlayerLevel=1}] run effect give @a[team=!blue,distance=..6,gamemode=adventure] blindness 6
execute if entity @a[tag=owner,team=blue,scores={statPlayerLevel=2..3}] run effect give @a[team=!blue,distance=..5,gamemode=adventure] blindness 5
execute if entity @a[tag=owner,team=blue,scores={statPlayerLevel=4}] run effect give @a[team=!blue,distance=..4,gamemode=adventure] blindness 4
execute if entity @a[tag=owner,team=green,scores={statPlayerLevel=1}] run effect give @a[team=!green,distance=..6,gamemode=adventure] blindness 6
execute if entity @a[tag=owner,team=green,scores={statPlayerLevel=2..3}] run effect give @a[team=!green,distance=..5,gamemode=adventure] blindness 5
execute if entity @a[tag=owner,team=green,scores={statPlayerLevel=4}] run effect give @a[team=!green,distance=..4,gamemode=adventure] blindness 4
execute if entity @a[tag=owner,team=yellow,scores={statPlayerLevel=1}] run effect give @a[team=!yellow,distance=..6,gamemode=adventure] blindness 6
execute if entity @a[tag=owner,team=yellow,scores={statPlayerLevel=2..3}] run effect give @a[team=!yellow,distance=..5,gamemode=adventure] blindness 5
execute if entity @a[tag=owner,team=yellow,scores={statPlayerLevel=4}] run effect give @a[team=!yellow,distance=..4,gamemode=adventure] blindness 4
execute if entity @a[tag=owner,team=red_v1,scores={statPlayerLevel=1}] run effect give @a[team=!red_v1,distance=..6,gamemode=adventure] blindness 6
execute if entity @a[tag=owner,team=red_v1,scores={statPlayerLevel=2..3}] run effect give @a[team=!red_v1,distance=..5,gamemode=adventure] blindness 5
execute if entity @a[tag=owner,team=red_v1,scores={statPlayerLevel=4}] run effect give @a[team=!red_v1,distance=..4,gamemode=adventure] blindness 4
execute if entity @a[tag=owner,team=blue_v1,scores={statPlayerLevel=1}] run effect give @a[team=!blue_v1,distance=..6,gamemode=adventure] blindness 6
execute if entity @a[tag=owner,team=blue_v1,scores={statPlayerLevel=2..3}] run effect give @a[team=!blue_v1,distance=..5,gamemode=adventure] blindness 5
execute if entity @a[tag=owner,team=blue_v1,scores={statPlayerLevel=4}] run effect give @a[team=!blue_v1,distance=..4,gamemode=adventure] blindness 4

# 自我清理
scoreboard players remove @s 3_magic_last 1
kill @s[scores={3_magic_last=..0}]
tag @a remove owner