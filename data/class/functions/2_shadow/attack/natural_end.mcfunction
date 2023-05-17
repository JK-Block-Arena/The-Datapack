# 灌注超时
scoreboard players remove @s 2_attack_stack 1
scoreboard players set @s[scores={statPlayerLevel=1,2_attack_stack=1..}] 2_attack_time 4000
scoreboard players set @s[scores={statPlayerLevel=2,2_attack_stack=1..}] 2_attack_time 3500
scoreboard players set @s[scores={statPlayerLevel=3,2_attack_stack=1..}] 2_attack_time 3000
scoreboard players set @s[scores={statPlayerLevel=4,2_attack_stack=1..}] 2_attack_time 2500
attribute @s[scores={2_attack_stack=..0}] minecraft:generic.attack_damage base set 1

title @s[scores={2_attack_stack=1..}] actionbar {"color":"gold","text":"⚠ 暗影灌注的其中一份能量已消散","bold":true}
title @s[scores={2_attack_stack=0}] actionbar {"color":"gold","text":"⚠ 暗影灌注的能量已消散","bold":true}
playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 0.7 0.7

function class:2_shadow/attack/update_xp