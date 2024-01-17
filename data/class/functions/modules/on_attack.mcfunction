advancement revoke @s only class:on_attack
execute as @s[scores={2_sneak_state=1,class=2,state=2..3}] run function class:2_shadow/sneak/off
execute as @s[scores={class=11,state=2..3}] run function class:11_magician/charm/invisi_clear