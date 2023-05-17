scoreboard players reset @s throw
execute as @s[scores={class=3}] run playsound minecraft:block.stone_button.click_on player @s 0 1000000 0 1000000
execute as @s[scores={class=3}] run scoreboard players add @s class_type 1
scoreboard players set @s[scores={class_type=2..}] class_type 0