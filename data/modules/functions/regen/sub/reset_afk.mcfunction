execute if score #team mem matches 2.. run tag @s[scores={afkTime=100..,tip_1_afk=..1,state=1..2}] add tip_1_afk
execute if score #team mem matches 2.. run tag @s[scores={afkTime=300..,state=1..2}] add tip_1_afk
scoreboard players set @s afkTime 0
