function debug:jkuse/particle/trigger/clear0
#tag @s add particle_cherry
tellraw @s [{"text":" ❇  暂未开放","color":"green"},{"text":" 樱花尾迹 ","color":"light_purple","bold": true},"！"]
playsound entity.experience_orb.pickup player @s[tag=particle_cherry]
playsound entity.villager.no player @s[tag=!particle_cherry]