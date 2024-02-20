tag @e[limit=1,sort=nearest,distance=..3,type=armor_stand] add stand_pose

execute as @s[scores={key_use=1..}] as @e[tag=stand_pose] run function debug:jkuse/stand_pose/1

scoreboard players reset @s key_use
scoreboard players reset @s sneak_time

effect give @e[tag=stand_pose] glowing 1 0 true
tag @e[tag=stand_pose] remove stand_pose