scoreboard players set @s afkTime 0
# 玩家状态 4：1v1战斗中
scoreboard players set @s state 4

# 重置位置
function modules:map/sub/enter_v1
attribute @s minecraft:generic.max_health base set 20
function class:modules/reset_modifiers
title @s clear

# 初始状态：无敌与回血
effect clear @s absorption
effect clear @s blindness
effect clear @s night_vision
effect clear @s slow_falling
effect clear @s resistance
effect clear @s poison
effect clear @s speed
effect give @s instant_health 20 5 true
effect give @s blindness 1 0 true
effect give @s resistance 2 5 true
effect give @s invisibility 1 5 true
effect give @s absorption 300 4 true
attribute @s minecraft:generic.attack_damage base set 1

# 重置伤害信息
scoreboard players set @s killCombo 0
function modules:mino2/sub/forgive

# 调用事件
execute at @s run function class:events/player_spawn

# 队伍ID
scoreboard players set @s[team=red_v1] team 5
scoreboard players set @s[team=blue_v1] team 6

# 刷新物品栏
scoreboard players reset @s throw
tag @s remove detail
tag @s add refresh_inventory