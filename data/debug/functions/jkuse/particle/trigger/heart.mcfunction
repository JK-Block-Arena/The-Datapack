function debug:jkuse/particle/trigger/clear0
tag @s add particle_heart
tellraw @s [{"text":" ❇  选择","color":"green"},{"text":" 爱心尾迹 ","color":"red"},"成功！"]
playsound entity.experience_orb.pickup player @s