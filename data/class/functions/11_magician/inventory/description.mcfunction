item modify entity @s[tag=!detail,scores={11_charm_mode=0}] hotbar.0 class:11_magician/0
item modify entity @s[tag=detail,scores={11_charm_mode=0}] hotbar.0 class:11_magician/0_detail
item modify entity @s[scores={11_charm_mode=1}] hotbar.0 class:11_magician/0_1
item modify entity @s[scores={11_charm_mode=2}] hotbar.0 class:11_magician/0_2
item modify entity @s[scores={11_charm_mode=3}] hotbar.0 class:11_magician/0_3
item modify entity @s[scores={11_charm_mode=4}] hotbar.0 class:11_magician/0_4

execute if score $is_day mem matches 1 run item modify entity @s[tag=!detail] hotbar.1 class:11_magician/1_day
execute if score $is_day mem matches 1 run item modify entity @s[tag=detail] hotbar.1 class:11_magician/1_day_detail
execute if score $is_day mem matches 0 run item modify entity @s[tag=!detail] hotbar.1 class:11_magician/1_night
execute if score $is_day mem matches 0 run item modify entity @s[tag=detail] hotbar.1 class:11_magician/1_night_detail

execute if score $is_day mem matches 1 run item modify entity @s[tag=!detail] hotbar.2 class:11_magician/2_day
execute if score $is_day mem matches 1 run item modify entity @s[tag=detail] hotbar.2 class:11_magician/2_day_detail
execute if score $is_day mem matches 0 run item modify entity @s[tag=!detail] hotbar.2 class:11_magician/2_night
execute if score $is_day mem matches 0 run item modify entity @s[tag=detail] hotbar.2 class:11_magician/2_night_detail

item modify entity @s[tag=!detail] hotbar.8 class:11_magician/8
item modify entity @s[tag=detail] hotbar.8 class:11_magician/8_detail