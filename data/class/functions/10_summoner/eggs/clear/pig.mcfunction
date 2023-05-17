execute unless score @s mem matches 1.. run scoreboard players set @s mem 0
kill @s[scores={mem=..0},nbt={OnGround:1b}]
scoreboard players remove @s[scores={mem=1..}] mem 1
tag @s add fall_immune
execute as @s[scores={mem=1}] run function class:10_summoner/eggs/trigger/pig_throw