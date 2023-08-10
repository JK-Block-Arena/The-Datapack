# 清理
execute as @e[type=zombie] at @s run function class:10_summoner/eggs/clear/undeath
execute as @e[type=vex] at @s run function class:10_summoner/eggs/clear/vex
execute as @e[type=iron_golem,tag=!torso_dummy] at @s run function class:10_summoner/eggs/clear/golem
kill @e[type=zombified_piglin]
#effect clear @e[type=creeper]