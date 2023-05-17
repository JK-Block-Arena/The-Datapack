# 每 2 Tick 执行一次
item replace entity @a[gamemode=creative,team=!creator] armor.chest with air
item replace entity @a[gamemode=creative,team=!creator] armor.feet with air
item replace entity @a[gamemode=creative,team=!creator] armor.head with air
item replace entity @a[gamemode=creative,team=!creator] armor.feet with air
clear @a[gamemode=creative,team=!creator]
execute as @a[gamemode=creative,team=!creator] at @s run function debug:jkuse/2_book
team join creator @a[gamemode=creative,team=!creator]
effect give @a[team=creator] invisibility infinite 0 true
effect clear @a[team=creator] glowing
effect clear @a[team=creator] blindness