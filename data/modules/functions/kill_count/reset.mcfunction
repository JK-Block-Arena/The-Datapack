# 触发重置
tellraw @a[scores={state=0..2,tip_0_tutorial=7..}] ["",{"text":"\n ❇  本轮循环重置，战场已经改变，突变已经结束！\n","color":"aqua"},{"text":"     红队","color":"red"},"击杀：",{"score":{"name":"§c红队§r","objective":"teamKill"},"color": "red"},{"text":"     蓝队","color":"blue"},"击杀：",{"score":{"name":"§9蓝队§r","objective":"teamKill"},"color": "blue"},{"text":"     绿队","color":"green"},"击杀：",{"score":{"name":"§a绿队§r","objective":"teamKill"},"color": "green"},{"text":"     黄队","color":"yellow"},"击杀：",{"score":{"name":"§e黄队§r","objective":"teamKill"},"color": "yellow"},"\n"]
execute as @a[scores={state=0..2,tip_0_tutorial=7..}] at @s run playsound minecraft:entity.ender_dragon.growl player @s 0 1000000 0 1000000
scoreboard players add @a[scores={state=1..2,tip_0_tutorial=7..}] Monthly_statPlayerRound 1
scoreboard players add @a[scores={state=1..2,tip_0_tutorial=7..}] statPlayerRound 1
execute as @a[team=!creator,scores={state=0..2,tip_0_tutorial=7..}] at @s run function pvp:state/lobby/enter
function modules:kill_count/init
function modules:mutation/sub/off
function pvp:class/ban_class

# 轮换1v1地图
scoreboard players add $map_v1 mem 1
execute if score $map_v1 mem matches 3.. run scoreboard players set $map_v1 mem 1
scoreboard players set #1v1_red mem 0
scoreboard players set #1v1_blue mem 0

# 轮换主战场地图
scoreboard players operation $map_last2 mem = $map_last mem
scoreboard players operation $map_last mem = $map mem
function modules:map/randomize

# 清理实体
kill @e[type=#modules:clean]