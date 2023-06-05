advancement revoke @s only modules:mino1/10_4_golem

scoreboard players set @s mino_type_now 10040

# 指定攻击者
tag @s add mino_victim
execute as @s[team=red] as @e[type=iron_golem,team=!red,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=blue] as @e[type=iron_golem,team=!blue,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=green] as @e[type=iron_golem,team=!green,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=yellow] as @e[type=iron_golem,team=!yellow,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=red_v1] as @e[type=iron_golem,team=!red_v1,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder
execute as @s[team=blue_v1] as @e[type=iron_golem,team=!blue_v1,sort=nearest,limit=1] at @s run function modules:mino1/sub/murder