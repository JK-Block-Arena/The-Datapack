scoreboard players set #random_min mem 1
scoreboard players set #random_max mem 10
function modules:random
execute if score $mutation mem matches 10 run scoreboard players operation #random mem = #99 mem
scoreboard players operation @s class = #random mem

execute if entity @e[limit=1,tag=class1,tag=banned_class] as @s[scores={class=1}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class2,tag=banned_class] as @s[scores={class=2}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class3,tag=banned_class] as @s[scores={class=3}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class4,tag=banned_class] as @s[scores={class=4}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class5,tag=banned_class] as @s[scores={class=5}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class6,tag=banned_class] as @s[scores={class=6}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class7,tag=banned_class] as @s[scores={class=7}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class8,tag=banned_class] as @s[scores={class=8}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class9,tag=banned_class] as @s[scores={class=9}] run function pvp:class/random_class
execute if entity @e[limit=1,tag=class10,tag=banned_class] as @s[scores={class=10}] run function pvp:class/random_class

execute at @s[scores={class=1}] run summon marker ~ ~ ~ {Tags:["current_class"],CustomName:'[{"text":"游侠","color":"aqua","bold":true}]'}
execute at @s[scores={class=2}] run summon marker ~ ~ ~ {Tags:["current_class"],CustomName:'[{"text":"暗影","color":"aqua","bold":true}]'}
execute at @s[scores={class=3,class_type=0}] run summon marker ~ ~ ~ {Tags:["current_class"],CustomName:'[{"text":"突袭者","color":"aqua","bold":true}]'}
execute at @s[scores={class=3,class_type=1}] run summon marker ~ ~ ~ {Tags:["current_class"],CustomName:'[{"text":"突袭者 · 旧版","color":"aqua","bold":true}]'}
execute at @s[scores={class=4}] run summon marker ~ ~ ~ {Tags:["current_class"],CustomName:'[{"text":"海嗣","color":"aqua","bold":true}]'}
execute at @s[scores={class=5}] run summon marker ~ ~ ~ {Tags:["current_class"],CustomName:'[{"text":"耀骑士","color":"aqua","bold":true}]'}
execute at @s[scores={class=6}] run summon marker ~ ~ ~ {Tags:["current_class"],CustomName:'[{"text":"有用之人","color":"aqua","bold":true}]'}
execute at @s[scores={class=7}] run summon marker ~ ~ ~ {Tags:["current_class"],CustomName:'[{"text":"牧师","color":"aqua","bold":true}]'}
execute at @s[scores={class=8}] run summon marker ~ ~ ~ {Tags:["current_class"],CustomName:'[{"text":"夹子","color":"aqua","bold":true}]'}
execute at @s[scores={class=9}] run summon marker ~ ~ ~ {Tags:["current_class"],CustomName:'[{"text":"千机","color":"aqua","bold":true}]'}
execute at @s[scores={class=10}] run summon marker ~ ~ ~ {Tags:["current_class"],CustomName:'[{"text":"召唤师","color":"aqua","bold":true}]'}

execute at @s[scores={class=99}] run summon marker ~ ~ ~ {Tags:["current_class"],CustomName:'[{"text":"一击必杀","color":"aqua","bold":true}]'}

title @s actionbar ["当前职业：",{"selector":"@e[tag=current_class]"}]
kill @e[tag=current_class]