scoreboard players set @s[advancements={pvp:rickroll/rick5=true}] particle 4
tellraw @s[advancements={pvp:rickroll/rick5=true}] [{"text":" ❇  选择","color":"green"},{"text":" 音符尾迹 ","color":"#9100c9"},"成功！"]
tellraw @s[advancements={pvp:rickroll/rick5=false}] ["",{"text":" ❇  你需要完成","color":"green"},{"text":" R i c k 解 锁 ","color":"#9100c9","bold": true},{"text":"成就才能解锁噢！","color":"green"}]
playsound entity.experience_orb.pickup player @s[advancements={pvp:rickroll/rick5=true}]
playsound entity.villager.no player @s[advancements={pvp:rickroll/rick5=false}]