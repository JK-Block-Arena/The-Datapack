# 更新 is_day
scoreboard players set $is_day mem 1
execute if score $daytime mem matches 13000..23000 run scoreboard players set $is_day mem 0

# 进入白昼
execute if score $is_day mem matches 1 run tellraw @a[tag=pass] [{"text":" ❇ ","color":"aqua"}," 白昼已经到来……"]
execute if score $is_day mem matches 1 run playsound minecraft:ui.toast.challenge_complete player @a 0 1000000 0 1 0.6 0.6

# 进入夜晚
execute if score $is_day mem matches 0 run tellraw @a[tag=pass] [{"text":" ❇ ","color":"aqua"}," 夜幕已经降临……"]
execute if score $is_day mem matches 0 run playsound minecraft:entity.elder_guardian.curse player @a 0 1000000 0 1 0 0.6
