
# 检测副手
execute as @s[scores={2_attack_stack=2..}] run title @s actionbar [{"color":"red","text":"✖ "},{"text":"灌注叠加次数已达上限","bold":true}]
execute as @s[scores={2_pearl_st=..0}] run title @s actionbar [{"color":"red","text":"✖ "},{"text":"暗影精髓不足","bold":true}]
execute unless entity @s[scores={2_pearl_st=1..,2_attack_stack=..1}] run playsound block.note_block.didgeridoo player @s 0 1000000 0 1000000
execute as @s[scores={2_pearl_st=1..,2_attack_stack=..1}] run function class:2_shadow/attack/trigger
