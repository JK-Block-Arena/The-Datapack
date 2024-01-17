execute as @s[scores={class=1}] run function class:1_ranger/tick1_class
execute as @s[scores={class=2}] run function class:2_shadow/tick1_class
execute as @s[scores={class=3}] run function class:3_illager/tick1_class
execute as @s[scores={class=4}] run function class:4_oceancat/tick1_class
execute as @s[scores={class=5}] run function class:5_knight/tick1_class
execute as @s[scores={class=6}] run function class:6_man/tick1_class
execute as @s[scores={class=7}] run function class:7_nurse/tick1_class
execute as @s[scores={class=8}] run function class:8_jiazi/tick1_class
execute as @s[scores={class=9}] run function class:9_qianji/tick1_class
execute as @s[scores={class=10}] run function class:10_summoner/tick1_class
execute as @s[scores={class=11}] run function class:11_magician/tick1_class

execute as @s[scores={class=99}] run function class:99_oneshot/tick1_class

function class:modules/inventory/tick1_class
function class:modules/sneak/tick1_class
function class:modules/inventory/invisibility_changed

#title @s actionbar [{"score":{"name": "@s","objective": "brRegenBreak0"}}," ",{"score":{"name": "@s","objective": "brRegenBreak1"}}," ",{"score":{"name": "@s","objective": "brRegenBreak2"}}," ",{"score":{"name": "@s","objective": "brRegenBreak3"}}," ",{"score":{"name": "@s","objective": "brRegenBreak4"}}," ",{"score":{"name": "@s","objective": "brRegenBreak5"}}," ",{"score":{"name": "@s","objective": "brRegenBreak6"}}]