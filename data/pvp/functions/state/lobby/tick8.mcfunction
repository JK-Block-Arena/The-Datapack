# 旁观者处理
effect clear @s[gamemode=spectator] blindness
scoreboard players enable @s[gamemode=spectator] back_spawn
execute as @s[gamemode=spectator,scores={back_spawn=1..}] run function debug:jkuse/1_back_spawn
scoreboard players set @s back_spawn 0
execute as @s[team=!creator,gamemode=spectator] unless entity @p[scores={state=1..2},gamemode=adventure] run function debug:jkuse/1_back_spawn
# 禁止旁观上rick
execute as @s[team=!creator,gamemode=spectator,x=8,y=300,z=8,distance=..20] run tellraw @s {"text": "你干嘛~哈哈哈~哎哟~","color": "yellow"}
execute as @s[team=!creator,gamemode=spectator,x=8,y=300,z=8,distance=..20] run playsound entity.chicken.ambient player @s
execute as @s[team=!creator,gamemode=spectator,x=8,y=300,z=8,distance=..20] run function debug:jkuse/1_back_spawn

# 状态效果
effect give @s weakness 1 0 true
effect give @s[x=8,y=235,z=8,scores={hp=..19},distance=..16] instant_health 1 9 true
effect give @s[x=-888,y=38,z=8,scores={hp=..19},distance=..50] minecraft:instant_health 1 9 true
execute if block ~ ~-1 ~ diamond_block run effect give @s[x=-888,y=38,z=8,distance=..50] minecraft:speed 1 4 true

# 检查、刷新物品栏
execute as @s[gamemode=adventure,scores={state=0}] run function pvp:state/lobby/tick1
execute as @s[gamemode=adventure,scores={state=0}] run function pvp:state/lobby/refresh_inventory

# 职业类型重置
execute unless score @s class_type matches 1.. run scoreboard players set @s class_type 0