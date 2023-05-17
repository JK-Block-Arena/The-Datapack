# 标记自己
tag @s add self
# 检测主人
execute as @a[scores={state=2..4}] if score @s player_id = @e[type=arrow,limit=1,tag=self] player_id run tag @s add arrow_owner
# 具体的处理
execute as @a[tag=arrow_owner] at @s run playsound minecraft:block.note_block.didgeridoo player @s 0 1000000 0 1000000
title @a[tag=arrow_owner] actionbar [{"color":"red","text":"✖ "},{"text":"折跃箭已落入水中","bold":true}]
scoreboard players set @a[tag=arrow_owner] 1_cd51 0
# 清理tag
tag @a remove arrow_owner
tag @s remove self