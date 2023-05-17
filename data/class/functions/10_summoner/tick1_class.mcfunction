function class:10_summoner/eggs/tick1_class
function class:10_summoner/flag/tick1_class
scoreboard players set @s[scores={10_mana=10000..}] 10_mana 10000
execute unless score $mutation mem matches 6 as @s[scores={brRegen=..0}] run scoreboard players add @s 10_mana 10