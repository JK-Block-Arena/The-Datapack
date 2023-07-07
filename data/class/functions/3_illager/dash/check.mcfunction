execute as @s[scores={3_dash_st=..0}] run title @s actionbar [{"color":"red","text":"✖ "},{"text":"技能冷却中","bold":true}]
execute as @s[scores={3_dash_st=..0}] run playsound minecraft:block.note_block.didgeridoo player @s 0 1000000 0 1000000
execute as @s[scores={3_dash_st=1..}] run function class:3_illager/dash/trigger