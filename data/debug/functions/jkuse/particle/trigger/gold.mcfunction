function debug:jkuse/particle/trigger/clear0
tag @s[scores={pck_max=1..}] add particle_gold
tellraw @s[scores={pck_max=1..}] [{"text":" ❇  选择","color":"green"},{"text":" 黄金尾迹 ","color":"yellow"},"成功！"]
tellraw @s[scores={pck_max=0}] ["",{"text":" ❇  你需要完成任意的","color":"green"},{"text":" 返璞归真 ","color":"yellow","bold": true},{"text":"成就才能解锁噢！","color":"green"}]
playsound entity.experience_orb.pickup player @s[scores={pck_max=1..}]
playsound entity.villager.no player @s[scores={pck_max=0}]