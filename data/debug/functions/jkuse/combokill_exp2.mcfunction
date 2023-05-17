title @s times 0 100 25
title @s subtitle {"text":"传奇连杀 ✒ 100","color":"#FF41E7"}
title @s title ""
tellraw @s [{"text":"传奇连杀 ✒  ","color":"#FF41E7"},{"selector":"@s"},{"text":" 体验了一次连杀100！"}]
playsound minecraft:block.anvil.land player @s 0 1000000 0 1000000 1.8
playsound minecraft:block.anvil.land player @s 0 1000000 0 1000000 0.5
playsound minecraft:entity.ender_dragon.growl player @s 0 1000000 0 200000 1.2
playsound minecraft:ui.toast.challenge_complete player @s 0 1000000 0 120000 0.8
