scoreboard players set @s[advancements={pvp:hidden/campfire=true}] particle 2
tellraw @s[advancements={pvp:hidden/campfire=true}] [{"text":" ❇  选择","color":"green"},{"text":" 火焰尾迹 ","color":"gold"},"成功！"]
tellraw @s[advancements={pvp:hidden/campfire=false}] ["",{"text":" ❇  你需要完成","color":"green"},{"text":" 希望之火 ","color":"gold","bold": true},{"text":"成就才能解锁噢！","color":"green"}]
playsound entity.experience_orb.pickup player @s[advancements={pvp:hidden/campfire=true}]
playsound entity.villager.no player @s[advancements={pvp:hidden/campfire=false}]