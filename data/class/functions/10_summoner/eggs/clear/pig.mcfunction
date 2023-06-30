scoreboard players remove @s[scores={mem=1..}] mem 1
tag @s add fall_immune
execute as @s[scores={mem=0},nbt={OnGround:1b}] run ride @p[gamemode=adventure,distance=..1] dismount
kill @s[scores={mem=0},nbt={OnGround:1b}]
execute if block ~ ~.13 ~ water run ride @p[gamemode=adventure,distance=..1] dismount
execute as @s[scores={mem=1}] run function class:10_summoner/eggs/trigger/pig_throw