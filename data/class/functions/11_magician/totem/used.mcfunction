advancement revoke @s only class:11_magician/totem

effect clear @s[scores={team=5..6}] absorption
tag @s add 11_totem_used
schedule function class:11_magician/totem/clear_buff 1t replace
execute as @s[scores={team=1..}] run tellraw @a[tag=pass] ["",{"text":"逃脱 ✒  ","color":"gray"},{"selector":"@s"}," 屹立不倒！"]

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory
scoreboard players set @s 11_totem_st 0

tp @s[scores={team=0}] 1043.5 92 1079.5 180 0
execute as @s[scores={team=1..4}] run function modules:map/sub/enter
execute as @s[scores={team=5..6}] run function modules:map/sub/enter_v1