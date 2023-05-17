execute if block ~ ~ ~ #modules:harmful run title @s actionbar [{"color":"red","text":"✖ "},{"text":"你无法在水中跳跃","bold":true}]
execute if block ~ ~ ~ #modules:harmful run playsound minecraft:block.note_block.didgeridoo player @s 0 1000000 0 1000000

execute if score @s 3_axe_last matches 1.. run title @s actionbar [{"color":"red","text":"✖ "},{"text":"你目前无法移动","bold":true}]
execute if score @s 3_axe_last matches 1.. run playsound minecraft:block.note_block.didgeridoo player @s 0 1000000 0 1000000

execute unless block ~ ~ ~ #modules:harmful as @s[scores={3_jump_storage=1..,3_axe_last=0}] run function class:3_illager/jump/skill_trigger
