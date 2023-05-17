function debug:jkuse/particle/trigger/clear0
tag @s[advancements={pvp:hidden/world_border=true}] add particle_water
tellraw @s[advancements={pvp:hidden/world_border=true}] [{"text":" ❇  选择","color":"green"},{"text":" 水尾迹 ","color":"aqua"},"成功！"]
tellraw @s[advancements={pvp:hidden/world_border=false}] ["",{"text":" ❇  你需要完成","color":"green"},{"text":" 探索之旅 ","color":"aqua","bold": true},{"text":"成就才能解锁噢！","color":"green"}]
playsound entity.experience_orb.pickup player @s[advancements={pvp:hidden/world_border=true}]
playsound entity.villager.no player @s[advancements={pvp:hidden/world_border=false}]