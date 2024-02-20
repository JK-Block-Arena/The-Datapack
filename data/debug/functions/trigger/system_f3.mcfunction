playsound block.note_block.bell player @s
scoreboard players add $system_f3 debug 1
execute if score $system_f3 debug matches 2.. run scoreboard players set $system_f3 debug 0
execute if score $system_f3 debug matches 0 run gamerule reducedDebugInfo true
execute if score $system_f3 debug matches 0 run tellraw @s {"text": "F3面板当前为关！","color": "red"}
execute if score $system_f3 debug matches 1 run gamerule reducedDebugInfo false
execute if score $system_f3 debug matches 1 run tellraw @s {"text": "F3面板当前为开！","color": "green"}