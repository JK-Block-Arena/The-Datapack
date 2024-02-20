# 显示提示
execute as @a[tag=current_ray_owner] at @s run playsound block.note_block.didgeridoo player @s 0 1000000 0 1000000
title @a[tag=current_ray_owner] actionbar [{"color":"red","text":"✖ "},{"text":"折跃目标无法到达","bold":true}]

# 返还精髓
execute if score $is_day mem matches 0 run scoreboard players remove @a[tag=current_ray_owner] 2_pearl_cd 12000
execute if score $is_day mem matches 1 run scoreboard players remove @a[tag=current_ray_owner] 2_pearl_cd 18000