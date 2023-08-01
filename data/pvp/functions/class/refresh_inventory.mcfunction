execute if entity @e[limit=1,tag=class1,tag=banned_class] run item replace entity @s hotbar.1 from block 4 245 22 container.26
execute if entity @e[limit=1,tag=class2,tag=banned_class] run item replace entity @s hotbar.2 from block 5 245 22 container.26
execute if entity @e[limit=1,tag=class3,tag=banned_class] run item replace entity @s hotbar.3 from block 6 245 22 container.26
execute if entity @e[limit=1,tag=class4,tag=banned_class] run item replace entity @s hotbar.4 from block 7 245 22 container.26
execute if entity @e[limit=1,tag=class5,tag=banned_class] run item replace entity @s hotbar.5 from block 8 245 22 container.26
execute if entity @e[limit=1,tag=class6,tag=banned_class] run item replace entity @s container.28 from block 4 244 22 container.26
execute if entity @e[limit=1,tag=class7,tag=banned_class] run item replace entity @s container.29 from block 5 244 22 container.26
execute unless score #match_mode mem matches 1 if entity @e[limit=1,tag=class8,tag=banned_class] run item replace entity @s container.30 from block 6 244 22 container.26
execute if score #match_mode mem matches 1 if entity @e[limit=1,tag=class8,tag=banned_class] run item replace entity @s container.30 from block 6 245 22 container.25
execute if entity @e[limit=1,tag=class9,tag=banned_class] run item replace entity @s container.31 from block 7 244 22 container.26
execute if entity @e[limit=1,tag=class10,tag=banned_class] run item replace entity @s container.32 from block 8 244 22 container.26

execute if entity @e[limit=1,tag=class1,tag=banned_class] as @s[scores={class=1}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class2,tag=banned_class] as @s[scores={class=2}] run function pvp:class/random_class
execute unless score #match_mode mem matches 1 if entity @e[limit=1,tag=class3,tag=banned_class] as @s[scores={class=3}] run function pvp:class/random_class
execute if score #match_mode mem matches 1 if entity @e[limit=1,tag=class3,tag=banned_class] as @s[scores={class=3,class_type=0}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class4,tag=banned_class] as @s[scores={class=4}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class5,tag=banned_class] as @s[scores={class=5}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class6,tag=banned_class] as @s[scores={class=6}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class7,tag=banned_class] as @s[scores={class=7}] run function pvp:class/random_class
execute unless score #match_mode mem matches 1 if entity @e[limit=1,tag=class8,tag=banned_class] as @s[scores={class=8}] run function pvp:class/random_class
execute if score #match_mode mem matches 1 if entity @e[limit=1,tag=class8,tag=banned_class] as @s[scores={class=3,class_type=1}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class9,tag=banned_class] as @s[scores={class=9}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class10,tag=banned_class] as @s[scores={class=10}] run function pvp:class/random_class

item replace entity @s container.32 from block 8 244 22 container.26

execute if entity @e[limit=1,tag=class1,tag=!banned_class] unless score @s class matches 1 run item replace entity @s hotbar.1 from block 4 245 22 container.0
execute if entity @e[limit=1,tag=class1,tag=!banned_class] if score @s class matches 1 run item replace entity @s hotbar.1 from block 4 245 22 container.1

execute if entity @e[limit=1,tag=class2,tag=!banned_class] unless score @s class matches 2 run item replace entity @s hotbar.2 from block 5 245 22 container.0
execute if entity @e[limit=1,tag=class2,tag=!banned_class] if score @s class matches 2 run item replace entity @s hotbar.2 from block 5 245 22 container.1

execute unless score #match_mode mem matches 1 if entity @e[limit=1,tag=class3,tag=!banned_class] unless score @s class matches 3 run item replace entity @s hotbar.3 from block 6 245 22 container.0
execute unless score #match_mode mem matches 1 if entity @e[limit=1,tag=class3,tag=!banned_class] if score @s[scores={class_type=0}] class matches 3 run item replace entity @s hotbar.3 from block 6 245 22 container.1
execute unless score #match_mode mem matches 1 if entity @e[limit=1,tag=class3,tag=!banned_class] if score @s[scores={class_type=1}] class matches 3 run item replace entity @s hotbar.3 from block 6 245 22 container.2
execute if score #match_mode mem matches 1 if entity @e[limit=1,tag=class3,tag=!banned_class] unless entity @s[scores={class=3,class_type=0}] run item replace entity @s hotbar.3 from block 6 245 22 container.9
execute if score #match_mode mem matches 1 if entity @e[limit=1,tag=class3,tag=!banned_class] if entity @s[scores={class=3,class_type=0}] run item replace entity @s hotbar.3 from block 6 245 22 container.10

execute if entity @e[limit=1,tag=class4,tag=!banned_class] unless score @s class matches 4 run item replace entity @s hotbar.4 from block 7 245 22 container.0
execute if entity @e[limit=1,tag=class4,tag=!banned_class] if score @s class matches 4 run item replace entity @s hotbar.4 from block 7 245 22 container.1

execute if entity @e[limit=1,tag=class5,tag=!banned_class] unless score @s class matches 5 run item replace entity @s hotbar.5 from block 8 245 22 container.0
execute if entity @e[limit=1,tag=class5,tag=!banned_class] if score @s class matches 5 run item replace entity @s hotbar.5 from block 8 245 22 container.1

execute if entity @e[limit=1,tag=class6,tag=!banned_class] unless score @s class matches 6 run item replace entity @s container.28 from block 4 244 22 container.0
execute if entity @e[limit=1,tag=class6,tag=!banned_class] if score @s class matches 6 run item replace entity @s container.28 from block 4 244 22 container.1

execute if entity @e[limit=1,tag=class7,tag=!banned_class] unless score @s class matches 7 run item replace entity @s container.29 from block 5 244 22 container.0
execute if entity @e[limit=1,tag=class7,tag=!banned_class] if score @s class matches 7 run item replace entity @s container.29 from block 5 244 22 container.1

execute unless score #match_mode mem matches 1 if entity @e[limit=1,tag=class8,tag=!banned_class] unless score @s class matches 8 run item replace entity @s container.30 from block 6 244 22 container.0
execute unless score #match_mode mem matches 1 if entity @e[limit=1,tag=class8,tag=!banned_class] if score @s class matches 8 run item replace entity @s container.30 from block 6 244 22 container.1
execute if score #match_mode mem matches 1 if entity @e[limit=1,tag=class8,tag=!banned_class] unless entity @s[scores={class=3,class_type=1}] run item replace entity @s container.30 from block 6 245 22 container.11
execute if score #match_mode mem matches 1 if entity @e[limit=1,tag=class8,tag=!banned_class] if entity @s[scores={class=3,class_type=1}] run item replace entity @s container.30 from block 6 245 22 container.12

execute if entity @e[limit=1,tag=class9,tag=!banned_class] unless score @s class matches 9 run item replace entity @s container.31 from block 7 244 22 container.0
execute if entity @e[limit=1,tag=class9,tag=!banned_class] if score @s class matches 9 run item replace entity @s container.31 from block 7 244 22 container.1

execute if entity @e[limit=1,tag=class10,tag=!banned_class] unless score @s class matches 10 run item replace entity @s container.32 from block 8 244 22 container.0
execute if entity @e[limit=1,tag=class10,tag=!banned_class] if score @s class matches 10 run item replace entity @s container.32 from block 8 244 22 container.1

execute if score #match_mode mem matches 1 if score #match_type mem matches 1 run function debug:jkuse/match/v1/barrier

execute if score #match_type mem matches 1 run item replace entity @s hotbar.8 with air
execute unless score #match_type mem matches 1 run item replace entity @s hotbar.8 with honeycomb{display:{Lore:['{"text":"选择随机职业。","italic":false,"color":"gray"}'],Name:'[{"text":"","italic":false},{"text":"随机职业","color":"aqua"}," - 按 [",{"keybind":"key.swapOffhand"},"] 选择"]'}}
execute if score @s class matches 10000 run function pvp:class/random_class