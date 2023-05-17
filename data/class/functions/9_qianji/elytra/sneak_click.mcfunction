execute if block ~ ~ ~ #modules:harmful run title @s actionbar [{"color":"red","text":"✖ "},{"text":"你无法在水中展开翅膀","bold":true}]
execute if block ~ ~ ~ #modules:harmful run playsound minecraft:block.note_block.didgeridoo player @s 0 1000000 0 1000000

execute unless block ~ ~ ~ #modules:harmful as @s[scores={9_elytra_storage=1..,9_elytra_last=..0}] run function class:9_qianji/elytra/trigger