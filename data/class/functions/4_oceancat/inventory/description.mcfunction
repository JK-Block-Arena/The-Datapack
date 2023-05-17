item modify entity @s[tag=!detail] hotbar.0 class:4_oceancat/0
item modify entity @s[tag=detail] hotbar.0 class:4_oceancat/0_detail
execute if score $is_day mem matches 0 run item modify entity @s[tag=!detail] hotbar.1 class:4_oceancat/1_night
execute if score $is_day mem matches 0 run item modify entity @s[tag=detail] hotbar.1 class:4_oceancat/1_night_detail
execute if score $is_day mem matches 1 run item modify entity @s[tag=!detail] hotbar.1 class:4_oceancat/1_day
execute if score $is_day mem matches 1 run item modify entity @s[tag=detail] hotbar.1 class:4_oceancat/1_day_detail
item modify entity @s[tag=!detail] hotbar.8 class:4_oceancat/8
item modify entity @s[tag=detail] hotbar.8 class:4_oceancat/8_detail