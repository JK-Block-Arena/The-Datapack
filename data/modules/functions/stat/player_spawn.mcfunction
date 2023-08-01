execute unless score #match_mode mem matches 1 run function modules:stat/sub/balance_refresh

# 记录职业选择信息
execute if score @s class matches 1 run scoreboard players add $1 statClassSelectReal 1
execute if score @s class matches 2 run scoreboard players add $2 statClassSelectReal 1
execute if score @s class matches 3 run scoreboard players add $3 statClassSelectReal 1
execute if score @s class matches 4 run scoreboard players add $4 statClassSelectReal 1
execute if score @s class matches 5 run scoreboard players add $5 statClassSelectReal 1
execute if score @s class matches 6 run scoreboard players add $6 statClassSelectReal 1
execute if score @s class matches 7 run scoreboard players add $7 statClassSelectReal 1
execute if score @s class matches 8 run scoreboard players add $8 statClassSelectReal 1
execute if score @s class matches 9 run scoreboard players add $9 statClassSelectReal 1
execute if score @s class matches 10 run scoreboard players add $10 statClassSelectReal 1