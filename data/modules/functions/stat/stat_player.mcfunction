# ---------------------------------------------------------------
#  基础统计
# ---------------------------------------------------------------

# 击杀
scoreboard players add @s statPlayerKill 1
scoreboard players add @s MstatPlayerKill 1
$scoreboard players add @s statPlayerClassKill$(classKill) 1
$scoreboard players add @s MstatPlayerClassKill$(classKill) 1

# 死亡
execute unless score $mutation mem matches 11 run scoreboard players add @a[tag=victim] statPlayerDeath 1
execute unless score $mutation mem matches 11 run scoreboard players add @a[tag=victim] MstatPlayerDeath 1
$scoreboard players add @a[tag=victim] statPlayerClassDeath$(classDeath) 1

execute unless score $mutation mem matches 11 unless score #match_mode mem matches 1 run function modules:stat/stat_player1