advancement revoke @s only class:2_shadow/attack/on_attack

# 灌注触发
scoreboard players remove @s[scores={2_attack_stack=1..}] 2_attack_stack 1
scoreboard players set @s[scores={statPlayerLevel=1,2_attack_stack=1..}] 2_attack_time 7500
scoreboard players set @s[scores={statPlayerLevel=2,2_attack_stack=1..}] 2_attack_time 6500
scoreboard players set @s[scores={statPlayerLevel=3,2_attack_stack=1..}] 2_attack_time 6000
scoreboard players set @s[scores={statPlayerLevel=4,2_attack_stack=1..}] 2_attack_time 5000
attribute @s[scores={2_attack_stack=..0}] minecraft:generic.attack_damage base set 1

function class:2_shadow/attack/update_xp