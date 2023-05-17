advancement revoke @s only modules:mino1/10_1_zombie

scoreboard players set @s mino_type_now 10010

# 指定攻击者
tag @s add mino_victim
execute as @s[team=red] as @e[type=zombie,team=!red,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=blue] as @e[type=zombie,team=!blue,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=green] as @e[type=zombie,team=!green,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=yellow] as @e[type=zombie,team=!yellow,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder