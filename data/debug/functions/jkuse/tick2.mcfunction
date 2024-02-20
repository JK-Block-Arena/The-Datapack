execute as @a[gamemode=adventure,tag=!invisible] at @s unless score @s state matches 1 run function debug:jkuse/particle/loop
function debug:jkuse/particle/tick2
function debug:jkuse/rickroll/loop
function debug:jkuse/creator
function debug:jkuse/interaction
execute as @e[tag=torso_dummy] run function debug:jkuse/torso_dummy/check
execute if score #cherry mem matches 1 run scoreboard players set @a particle_cherry 1