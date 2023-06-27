scoreboard players add #switch_bossbar mem 1
execute if score #switch_bossbar mem matches 2.. run scoreboard players reset #switch_bossbar mem

# 1v1
execute if score #switch_bossbar mem matches 1 run bossbar set sp:white_v1 visible true
execute if score #switch_bossbar mem matches 1 run bossbar set sp:white_v1 players @a[gamemode=spectator]
execute if score #switch_bossbar mem matches 1 run bossbar set sp:white visible false
# 主战场
execute unless score #switch_bossbar mem matches 1 run bossbar set sp:white players @a[gamemode=spectator]
execute unless score #switch_bossbar mem matches 1 run bossbar set sp:white visible true
execute unless score #switch_bossbar mem matches 1 run bossbar set sp:white_v1 visible false
# 提示
execute if score #switch_bossbar mem matches 1 run tellraw @s {"text": "\n ❇  boss条切换为1v1！\n","color": "gold"}
execute unless score #switch_bossbar mem matches 1 run tellraw @s {"text": "\n ❇  boss条切换为主战场！\n","color": "white"}