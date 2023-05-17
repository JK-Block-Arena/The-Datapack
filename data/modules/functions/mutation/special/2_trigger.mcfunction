# 随机更换职业
function modules:mutation/special/2_random_loop
scoreboard players operation @s class = #random mem

# 额外处理
effect clear @s water_breathing
effect clear @s night_vision
effect clear @s slow_falling
effect clear @s jump_boost
effect clear @s speed
effect clear @s resistance
effect clear @s invisibility
scoreboard players set #xp mem 0
scoreboard players set #level mem 0
function class:modules/reset_modifiers
attribute @s minecraft:generic.attack_damage base set 1
function modules:set_xp
function class:events/player_spawn
function class:modules/inventory/run
function class:4_oceancat/trident/clear

# 特效
playsound minecraft:block.beacon.power_select player @s 0 1000000 0 1000000 2
particle witch ~ ~1.3 ~ 0.4 0.4 0.4 0 100
execute if score $mutation mem matches 2 run tellraw @s ["",{"text":" ⚕ 突变效果触发 ⚕ ","color":"light_purple"}," 你的职业已改变！"]
execute if score $mutation mem matches 8 run tellraw @s ["",{"text":" ⚕ 突变效果触发 ⚕ ","color":"light_purple"}," 你的职业已替换为",{"text":" 一击必杀 ","color":"aqua","bold":true},"！"]

execute unless score $mutation mem matches 8 run tellraw @s[tag=class99p] ["",{"text":" ⚕ ???效果触发 ⚕ ","color":"light_purple"}," 你的职业，",{"text":"一击必杀 ","color":"aqua","bold":true},"被换掉了！"]
execute unless score $mutation mem matches 8 run effect give @s[tag=class99p] instant_health 2 4 true

#tag @a remove class2p
tag @a remove class99p

# 刷新多余血量
execute unless score @s class matches 3 run effect give @s[scores={state=2..4,hp=21..}] minecraft:instant_health 2 0 true