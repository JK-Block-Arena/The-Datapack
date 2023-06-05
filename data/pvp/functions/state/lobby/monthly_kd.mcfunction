scoreboard players operation @s Monthly_statPlayerKD = @s Monthly_statPlayerKill
scoreboard players operation @s Monthly_statPlayerKD *= #1000 mem
scoreboard players operation @s Monthly_statPlayerKD /= @s Monthly_statPlayerDeath
scoreboard players operation @s Monthly_statPlayerKD_1 = @s Monthly_statPlayerKD
scoreboard players operation @s Monthly_statPlayerKD_2 = @s Monthly_statPlayerKD
scoreboard players operation @s Monthly_statPlayerKD_1 /= #1000 mem
scoreboard players operation @s Monthly_statPlayerKD_2 %= #1000 mem