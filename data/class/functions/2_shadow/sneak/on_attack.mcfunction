advancement revoke @s only class:2_shadow/sneak/on_attack
execute as @s[scores={2_sneak_state=1,class=2,state=2..3}] run title @s actionbar {"color":"gold","text":"⚠ 暗影形态已解除","bold":true}
execute as @s[scores={2_sneak_state=1,class=2,state=2..3}] run function class:2_shadow/sneak/off