scoreboard players set @s[scores={particle_cherry=1}] particle 5
execute unless score @s particle_cherry matches 1 run tellraw @s ["",{"text":" ❇  悄悄告诉你：这个尾迹需要在某些神秘的时间解锁噢！","color":"dark_green"}]
tellraw @s[scores={particle_cherry=1}] [{"text":" ❇  选择","color":"green"},{"text":" 樱花尾迹 ","color":"light_purple"},"成功！"]
playsound entity.experience_orb.pickup player @s[scores={particle_cherry=1}]
execute unless score @s particle_cherry matches 1 run playsound entity.villager.no player @s