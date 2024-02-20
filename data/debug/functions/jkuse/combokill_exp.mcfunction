title @s times 0 80 6
title @s subtitle [{"text":"✒  ","color":"gold"},{"text":"100 连杀！"}]
title @s title ""
tellraw @s [{"text":"传奇连杀 ✒  ","color":"gold"},{"selector":"@s"},{"text":" 体验了一次连杀100！","color":"gold"}]
playsound entity.ender_dragon.growl player @s 0 1000000 0 1000000 0.7
playsound block.anvil.land player @s 0 1000000 0 1000000 0
playsound entity.player.levelup player @s 0 1000000 0 1000000 0.5
