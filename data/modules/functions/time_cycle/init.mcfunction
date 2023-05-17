# 更新 is_day
execute store result score $daytime mem run time query daytime
scoreboard players set $is_day mem 1
execute if score $daytime mem matches 13000..23000 run scoreboard players set $is_day mem 0

stopsound @a music