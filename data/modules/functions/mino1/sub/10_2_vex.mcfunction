advancement revoke @s only modules:mino1/10_2_vex

scoreboard players set @s mino_type_now 10020

# 指定攻击者
tag @s add mino_victim
execute as @s[team=red] as @e[type=vex,team=!red,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=blue] as @e[type=vex,team=!blue,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=green] as @e[type=vex,team=!green,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=yellow] as @e[type=vex,team=!yellow,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=red_v1] as @e[type=vex,team=!red_v1,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=blue_v1] as @e[type=vex,team=!blue_v1,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder