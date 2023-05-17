function debug:jkuse/particle/trigger/clear0
tag @s[scores={particle_rainbow=1}] add particle_rainbow
execute unless score @s particle_rainbow matches 1 run tellraw @s ["",{"text":" ❇  悄悄告诉你：这个尾迹需要在某个隐秘的地方解锁噢！","color":"green"}]
tellraw @s[scores={particle_rainbow=1}] [{"text":" ❇  选择","color":"green"},{"text":" 彩虹尾迹 ","color":"light_purple"},"成功！"]
playsound entity.experience_orb.pickup player @s[scores={particle_rainbow=1}]
execute unless score @s particle_rainbow matches 1 run playsound entity.villager.no player @s