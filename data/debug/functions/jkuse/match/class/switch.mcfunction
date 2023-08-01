scoreboard players add #class_switch mem 1
execute if score #class_switch mem matches 2.. run scoreboard players reset #class_switch mem
execute unless score #class_switch mem matches 1 run function pvp:class/ban
execute if score #class_switch mem matches 1 run tag @e[tag=enable_class] remove banned_class
execute if score #class_switch mem matches 1 run function pvp:class/update
execute if score #class_switch mem matches 1 run tellraw @a {"text": "\n※  已关闭职业禁用！\n","color": "gold"}