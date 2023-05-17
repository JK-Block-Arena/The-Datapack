# 每 3s 执行一次 execute as @a[tag=7_healer,scores={class=7,state=2..4}] at @s

# 被动，治疗自己
effect give @s regeneration 3 1 true

# 被动，治疗附近队友
execute as @s[team=blue] run effect give @e[distance=..7,team=blue,tag=!7_healer] regeneration 4 0
execute as @s[team=red] run effect give @e[distance=..7,team=red,tag=!7_healer] regeneration 4 0
execute as @s[team=green] run effect give @e[distance=..7,team=green,tag=!7_healer] regeneration 4 0
execute as @s[team=yellow] run effect give @e[distance=..7,team=yellow,tag=!7_healer] regeneration 4 0
execute as @s[team=lobby] run effect give @e[distance=..7,team=lobby,tag=!7_healer] regeneration 4 0

execute as @s[team=blue] run effect give @e[distance=..5,team=blue,tag=!7_healer] regeneration 4 1
execute as @s[team=red] run effect give @e[distance=..5,team=red,tag=!7_healer] regeneration 4 1
execute as @s[team=green] run effect give @e[distance=..5,team=green,tag=!7_healer] regeneration 4 1
execute as @s[team=yellow] run effect give @e[distance=..5,team=yellow,tag=!7_healer] regeneration 4 1
execute as @s[team=lobby] run effect give @e[distance=..5,team=lobby,tag=!7_healer] regeneration 4 1

execute as @s[team=blue] run effect give @e[distance=..2,team=blue,tag=!7_healer] regeneration 3 2
execute as @s[team=red] run effect give @e[distance=..2,team=red,tag=!7_healer] regeneration 3 2
execute as @s[team=green] run effect give @e[distance=..2,team=green,tag=!7_healer] regeneration 3 2
execute as @s[team=yellow] run effect give @e[distance=..2,team=yellow,tag=!7_healer] regeneration 3 2
execute as @s[team=lobby] run effect give @e[distance=..2,team=lobby,tag=!7_healer] regeneration 3 2
