# ---------------------------------------------------------------
#  基础统计
# ---------------------------------------------------------------

# 击杀
scoreboard players add @s statPlayerKill 1
scoreboard players add @s[scores={class=1}] statPlayerClassKill1 1
scoreboard players add @s[scores={class=2}] statPlayerClassKill2 1
scoreboard players add @s[scores={class=3}] statPlayerClassKill3 1
scoreboard players add @s[scores={class=4}] statPlayerClassKill4 1
scoreboard players add @s[scores={class=5}] statPlayerClassKill5 1
scoreboard players add @s[scores={class=6}] statPlayerClassKill6 1
scoreboard players add @s[scores={class=7}] statPlayerClassKill7 1
scoreboard players add @s[scores={class=8}] statPlayerClassKill8 1
scoreboard players add @s[scores={class=9}] statPlayerClassKill9 1
scoreboard players add @s[scores={class=10}] statPlayerClassKill10 1

scoreboard players add @s Monthly_statPlayerKill 1
scoreboard players add @s[scores={class=1}] Monthly_statPlayerClassKill1 1
scoreboard players add @s[scores={class=2}] Monthly_statPlayerClassKill2 1
scoreboard players add @s[scores={class=3}] Monthly_statPlayerClassKill3 1
scoreboard players add @s[scores={class=4}] Monthly_statPlayerClassKill4 1
scoreboard players add @s[scores={class=5}] Monthly_statPlayerClassKill5 1
scoreboard players add @s[scores={class=6}] Monthly_statPlayerClassKill6 1
scoreboard players add @s[scores={class=7}] Monthly_statPlayerClassKill7 1
scoreboard players add @s[scores={class=8}] Monthly_statPlayerClassKill8 1
scoreboard players add @s[scores={class=9}] Monthly_statPlayerClassKill9 1
scoreboard players add @s[scores={class=10}] Monthly_statPlayerClassKill10 1
scoreboard players add @s[scores={class=99}] Monthly_statPlayerClassKill99 1

# 死亡
execute unless score $mutation mem matches 10 run scoreboard players add @a[tag=victim] statPlayerDeath 1
execute unless score $mutation mem matches 10 run scoreboard players add @a[tag=victim] Monthly_statPlayerDeath 1
scoreboard players add @a[tag=victim,scores={class=1}] statPlayerClassDeath1 1
scoreboard players add @a[tag=victim,scores={class=2}] statPlayerClassDeath2 1
scoreboard players add @a[tag=victim,scores={class=3}] statPlayerClassDeath3 1
scoreboard players add @a[tag=victim,scores={class=4}] statPlayerClassDeath4 1
scoreboard players add @a[tag=victim,scores={class=5}] statPlayerClassDeath5 1
scoreboard players add @a[tag=victim,scores={class=6}] statPlayerClassDeath6 1
scoreboard players add @a[tag=victim,scores={class=7}] statPlayerClassDeath7 1
scoreboard players add @a[tag=victim,scores={class=8}] statPlayerClassDeath8 1
scoreboard players add @a[tag=victim,scores={class=9}] statPlayerClassDeath9 1
scoreboard players add @a[tag=victim,scores={class=10}] statPlayerClassDeath10 1

execute unless score $mutation mem matches 10 unless score #match_mode mem matches 1 run function modules:stat/stat_player1