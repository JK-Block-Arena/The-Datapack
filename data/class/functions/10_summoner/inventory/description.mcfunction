execute if score $is_day mem matches 0 run item modify entity @s[tag=!detail] hotbar.0 class:10_summoner/0_night
execute if score $is_day mem matches 0 run item modify entity @s[tag=detail] hotbar.0 class:10_summoner/0_night_detail
execute if score $is_day mem matches 1 run item modify entity @s[tag=!detail] hotbar.0 class:10_summoner/0_day
execute if score $is_day mem matches 1 run item modify entity @s[tag=detail] hotbar.0 class:10_summoner/0_day_detail

execute if score $is_day mem matches 0 run item modify entity @s[tag=!detail] hotbar.1 class:10_summoner/1_night
execute if score $is_day mem matches 0 run item modify entity @s[tag=detail] hotbar.1 class:10_summoner/1_night_detail
execute if score $is_day mem matches 1 run item modify entity @s[tag=!detail] hotbar.1 class:10_summoner/1_day
execute if score $is_day mem matches 1 run item modify entity @s[tag=detail] hotbar.1 class:10_summoner/1_day_detail

item modify entity @s[tag=!detail] hotbar.2 class:10_summoner/2
item modify entity @s[tag=detail] hotbar.2 class:10_summoner/2_detail

execute if score $is_day mem matches 0 run item modify entity @s[tag=!detail] hotbar.3 class:10_summoner/3_night
execute if score $is_day mem matches 0 run item modify entity @s[tag=detail] hotbar.3 class:10_summoner/3_night_detail
execute if score $is_day mem matches 1 run item modify entity @s[tag=!detail] hotbar.3 class:10_summoner/3_day
execute if score $is_day mem matches 1 run item modify entity @s[tag=detail] hotbar.3 class:10_summoner/3_day_detail

execute if score $is_day mem matches 0 run item modify entity @s[tag=!detail] hotbar.4 class:10_summoner/4_night
execute if score $is_day mem matches 0 run item modify entity @s[tag=detail] hotbar.4 class:10_summoner/4_night_detail
execute if score $is_day mem matches 1 run item modify entity @s[tag=!detail] hotbar.4 class:10_summoner/4_day
execute if score $is_day mem matches 1 run item modify entity @s[tag=detail] hotbar.4 class:10_summoner/4_day_detail

item modify entity @s[tag=!detail] hotbar.5 class:10_summoner/5
item modify entity @s[tag=detail] hotbar.5 class:10_summoner/5_detail