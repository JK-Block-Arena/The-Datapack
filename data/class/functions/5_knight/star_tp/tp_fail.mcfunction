# 显示提示
execute as @a[tag=current_ray_owner] at @s run playsound minecraft:block.note_block.didgeridoo player @s 0 1000000 0 1000000
title @a[tag=current_ray_owner] actionbar [{"color":"red","text":"✖ "},{"text":"传送目标无法到达","bold":true}]
