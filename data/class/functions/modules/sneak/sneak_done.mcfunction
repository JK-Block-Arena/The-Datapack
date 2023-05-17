execute as @s[scores={sneak_time=1..5}] run function class:modules/sneak/events/sneak_click
scoreboard players set @s sneak_time 0
scoreboard players set @s sneak_last 0