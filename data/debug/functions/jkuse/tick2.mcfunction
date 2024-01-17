execute as @a[gamemode=adventure,tag=!invisible] at @s unless score @s state matches 1 run function debug:jkuse/particle/loop
execute as @a[team=creator,gamemode=adventure] run function debug:jkuse/1_back_spawn

function debug:jkuse/particle/tick2

function debug:jkuse/rickroll/loop
function debug:jkuse/creator

execute as @e[tag=torso_dummy] run function debug:jkuse/torso_dummy/check