execute as @a[gamemode=adventure,tag=!invisible] at @s unless score @s state matches 1 run function debug:jkuse/particle/loop
execute as @a[team=creator,gamemode=adventure] at @s run function debug:jkuse/1_back_spawn

function debug:jkuse/rickroll/loop
function debug:jkuse/creator