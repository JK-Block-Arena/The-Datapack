particle minecraft:poof ~ ~ ~ 0.3 0.8 0.3 0 40
playsound entity.enderman.teleport player @a
# 传送回去
tag @s add 11_tp_now
execute as @e[tag=11_back_marker] if score @s player_id = @p[tag=11_tp_now] player_id run tag @s add 11_tp_real
tp @s @e[limit=1,tag=11_tp_real]

# 隐身
effect give @s[scores={statPlayerLevel=1}] invisibility 4
effect give @s[scores={statPlayerLevel=2..3}] invisibility 3
effect give @s[scores={statPlayerLevel=4}] invisibility 2

# 清理
tag @a remove 11_tp_now
kill @e[tag=11_tp_real]

# 玩家
scoreboard players set @s 11_tp_last 0
scoreboard players remove @s 11_tp_st 1
item replace entity @s weapon.offhand with air

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory