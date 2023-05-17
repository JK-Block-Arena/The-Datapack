# 刷新队伍人数信息

# 获取队伍人数
execute store result score #red mem if entity @a[team=red,scores={state=1..2}]
execute store result score #blue mem if entity @a[team=blue,scores={state=1..2}]
execute store result score #green mem if entity @a[team=green,scores={state=1..2}]
execute store result score #yellow mem if entity @a[team=yellow,scores={state=1..2}]
# 获取队伍数
scoreboard players set #team mem 0
execute if score #red mem matches 1.. run scoreboard players add #team mem 1
execute if score #blue mem matches 1.. run scoreboard players add #team mem 1
execute if score #green mem matches 1.. run scoreboard players add #team mem 1
execute if score #yellow mem matches 1.. run scoreboard players add #team mem 1
# 获取最大人数
scoreboard players set #max mem -1000
scoreboard players operation #max mem > #red mem
scoreboard players operation #max mem > #blue mem
scoreboard players operation #max mem > #green mem
scoreboard players operation #max mem > #yellow mem
# 获取最小人数
scoreboard players set #min mem 1000
execute if score #red mem matches 1.. run scoreboard players operation #min mem < #red mem
execute if score #blue mem matches 1.. run scoreboard players operation #min mem < #blue mem
execute if score #green mem matches 1.. run scoreboard players operation #min mem < #green mem
execute if score #yellow mem matches 1.. run scoreboard players operation #min mem < #yellow mem
execute if score #team mem matches 0 run scoreboard players set #min mem 0
# 获取人数差
scoreboard players operation $team_diff mem = #max mem
scoreboard players operation $team_diff mem -= #min mem
