# 触发重置
tellraw @a[scores={state=0..2,tip_0_tutorial=7..}] ["",{"text":"\n ❇  本轮循环重置，战场已经改变，突变已经结束！\n","color":"aqua"},{"text":"     红队","color":"red"},"击杀：",{"score":{"name":"§c红队§r","objective":"teamKill"},"color": "red"},{"text":"     蓝队","color":"blue"},"击杀：",{"score":{"name":"§9蓝队§r","objective":"teamKill"},"color": "blue"},{"text":"\n     绿队","color":"green"},"击杀：",{"score":{"name":"§a绿队§r","objective":"teamKill"},"color": "green"},{"text":"     黄队","color":"yellow"},"击杀：",{"score":{"name":"§e黄队§r","objective":"teamKill"},"color": "yellow"},"\n"]
execute if score #match_mode mem matches 1 run tellraw @a ["",{"text": "红队：","color": "red"},{"selector":"@a[team=red]"},{"text": "\n蓝队：","color": "blue"},{"selector":"@a[team=blue]"},{"text": "\n绿队：","color": "green"},{"selector":"@a[team=green]"},{"text": "\n黄队：","color": "yellow"},{"selector":"@a[team=yellow]"}]
execute as @a[scores={state=0..2,tip_0_tutorial=7..}] at @s run playsound minecraft:entity.ender_dragon.growl player @s 0 1000000 0 1000000
scoreboard players add @a[scores={state=1..2,tip_0_tutorial=7..}] Monthly_statPlayerRound 1
scoreboard players add @a[scores={state=1..2,tip_0_tutorial=7..}] statPlayerRound 1
execute as @a[gamemode=adventure,scores={state=0..2,tip_0_tutorial=7..}] at @s run function pvp:state/lobby/enter
function modules:kill_count/init
function modules:mutation/sub/off
execute unless score #class_switch mem matches 1 run function pvp:class/ban
execute if score #match_mode mem matches 1 if score #match_type mem matches 1 run function debug:jkuse/match/v1/end
# 轮换1v1地图
execute unless score #match_mode mem matches 1 run scoreboard players add $map_v1 mem 1
execute unless score #match_mode mem matches 1 if score $map_v1 mem matches 3.. run scoreboard players set $map_v1 mem 1

# 轮换主战场地图
execute unless score #match_mode mem matches 1 run scoreboard players operation $map_last2 mem = $map_last mem
execute unless score #match_mode mem matches 1 run scoreboard players operation $map_last mem = $map mem
execute unless score #match_mode mem matches 1 run function modules:map/randomize

# 清理实体
kill @e[type=#modules:clean]