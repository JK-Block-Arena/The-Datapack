execute if data entity @s interaction run scoreboard players set @s mem 4
execute as @s[scores={mem=1..}] run fill -2016 36 2043 -2016 35 2043 minecraft:air
execute as @s[scores={mem=0}] run fill -2016 36 2043 -2016 35 2043 minecraft:chiseled_stone_bricks
scoreboard players remove @s[scores={mem=1..}] mem 1
data remove entity @s interaction