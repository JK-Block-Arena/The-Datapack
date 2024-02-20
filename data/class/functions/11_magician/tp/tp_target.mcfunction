particle poof ~ ~ ~ 0.3 0.8 0.3 0 40
playsound entity.enderman.teleport player @a
# 开始传送
tag @s add 11_tp_now
execute as @e[tag=11_target_marker] if score @s player_id = @p[tag=11_tp_now] player_id run tag @s add 11_tp_real
tp @s @e[limit=1,tag=11_tp_real]

execute unless entity @e[tag=11_tp_real] run title @s actionbar {"text": ":( 奇怪的是，传送失败了。","color": "red","bold": true}

# 防止卡住
function modules:anti_stuck/sub/player

# 清理
tag @a remove 11_tp_now
kill @e[tag=11_tp_real]

# 玩家
scoreboard players set @s 11_tp_wait -1

scoreboard players set @s[scores={statPlayerLevel=1}] 11_tp_last_wait 25
scoreboard players set @s[scores={statPlayerLevel=2..3}] 11_tp_last_wait 30
scoreboard players set @s[scores={statPlayerLevel=4}] 11_tp_last_wait 35

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory