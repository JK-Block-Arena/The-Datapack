advancement revoke @s only modules:regen/using_item
tag @s add brRegenBreak
execute if score $mutation mem matches 8 run effect give @s[scores={state=2,team=1..4}] glowing 3