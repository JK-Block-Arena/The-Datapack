# 当前位置生成标记
summon marker ~ ~ ~ {Tags:["11_marker","11_back_marker","new_minion"]}
tp @e[tag=new_minion,limit=1] @s

# 目标位置生成隐形兔子
execute at @e[sort=nearest,limit=1,tag=11_target] run summon rabbit ~ ~ ~ {Invulnerable:1b,Silent:1b,Tags:["11_marker","11_target_marker","new_minion"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}]}

# 设置玩家信息
scoreboard players operation @e[tag=new_minion] player_id = @s player_id
scoreboard players set @e[tag=new_minion,tag=11_target_marker] mem 60
scoreboard players set @e[tag=new_minion,tag=11_back_marker] mem 160
tag @e remove new_minion
tag @a remove 11_target

scoreboard players set @s[scores={statPlayerLevel=1}] 11_tp_wait 10
scoreboard players set @s[scores={statPlayerLevel=2..3}] 11_tp_wait 15
scoreboard players set @s[scores={statPlayerLevel=4}] 11_tp_wait 20
scoreboard players add @s 11_totem_score 2

title @s actionbar {"color":"aqua","text":"⚜  已经锁定，即将传送..."}
playsound minecraft:block.beacon.activate ambient @s ~ ~ ~ 0.8 1.3