summon marker ^ ^ ^1 {Tags:["mark"]}
execute store result score #x1 mem run data get entity @s Pos[0] 100
execute store result score #y1 mem run data get entity @s Pos[1] 100
execute store result score #z1 mem run data get entity @s Pos[2] 100
execute store result score #x2 mem run data get entity @e[tag=mark,limit=1] Pos[0] 100
execute store result score #y2 mem run data get entity @e[tag=mark,limit=1] Pos[1] 100
execute store result score #z2 mem run data get entity @e[tag=mark,limit=1] Pos[2] 100
execute store result entity @s Motion[0] double 0.03 run scoreboard players operation #x2 mem -= #x1 mem
execute store result entity @s Motion[1] double 0.03 run scoreboard players operation #y2 mem -= #y1 mem
execute store result entity @s Motion[2] double 0.03 run scoreboard players operation #z2 mem -= #z1 mem
kill @e[tag=mark]
data merge entity @s {NoAI:0b}