item modify entity @s[tag=!detail] hotbar.0 class:7_nurse/0
item modify entity @s[tag=detail] hotbar.0 class:7_nurse/0_detail

execute if score $is_day mem matches 0 run item modify entity @s[tag=!detail] hotbar.1 class:7_nurse/1_night
execute if score $is_day mem matches 0 run item modify entity @s[tag=detail] hotbar.1 class:7_nurse/1_night_detail
execute if score $is_day mem matches 1 run item modify entity @s[tag=!detail] hotbar.1 class:7_nurse/1_day
execute if score $is_day mem matches 1 run item modify entity @s[tag=detail] hotbar.1 class:7_nurse/1_day_detail

execute if score $is_day mem matches 0 run item modify entity @s[tag=!detail] hotbar.2 class:7_nurse/2_night
execute if score $is_day mem matches 0 run item modify entity @s[tag=detail] hotbar.2 class:7_nurse/2_night_detail
execute if score $is_day mem matches 1 run item modify entity @s[tag=!detail] hotbar.2 class:7_nurse/2_day
execute if score $is_day mem matches 1 run item modify entity @s[tag=detail] hotbar.2 class:7_nurse/2_day_detail

execute if score $is_day mem matches 0 run item modify entity @s[tag=!detail] hotbar.3 class:7_nurse/3_night
execute if score $is_day mem matches 0 run item modify entity @s[tag=detail] hotbar.3 class:7_nurse/3_night_detail
execute if score $is_day mem matches 1 run item modify entity @s[tag=!detail] hotbar.3 class:7_nurse/3_day
execute if score $is_day mem matches 1 run item modify entity @s[tag=detail] hotbar.3 class:7_nurse/3_day_detail

execute if score $is_day mem matches 0 run item modify entity @s[tag=!detail] hotbar.4 class:7_nurse/4_night
execute if score $is_day mem matches 0 run item modify entity @s[tag=detail] hotbar.4 class:7_nurse/4_night_detail
execute if score $is_day mem matches 1 run item modify entity @s[tag=!detail] hotbar.4 class:7_nurse/4_day
execute if score $is_day mem matches 1 run item modify entity @s[tag=detail] hotbar.4 class:7_nurse/4_day_detail

item modify entity @s[tag=!detail] hotbar.8 class:7_nurse/8
item modify entity @s[tag=detail] hotbar.8 class:7_nurse/8_detail
