scoreboard players add @s 11_charm_time 1
effect give @s slowness 1 0

title @s[scores={11_charm_time=0..20}] actionbar [{"color":"gray","text":""},{"color":"aqua","text":"⚜ "},{"color":"green","text":" 书 "},{"color":"aqua","text":" >>> "}," 石锄  >>>  石剑  >>>  石斧  ⚜"]
title @s[scores={11_charm_time=21..40}] actionbar [{"color":"gray","text":""},"⚜  书 ",{"text":" >>> ","color": "aqua"},{"color":"green","text":" 石锄 "},{"color":"aqua","text":" >>> "}," 石剑  >>>  石斧  ⚜"]
title @s[scores={11_charm_time=41..60}] actionbar [{"color":"gray","text":""},"⚜  书  >>>  石锄 ",{"text":" >>> ","color": "aqua"},{"color":"green","text":" 石剑 "},{"color":"aqua","text":" >>> "}," 石斧  ⚜"]
title @s[scores={11_charm_time=61..80}] actionbar [{"color":"gray","text":""},"⚜  书  >>>  石锄  >>>  石剑 ",{"text":" >>> ","color": "aqua"},{"color":"green","text":" 石斧 "},{"color":"aqua","text":" ⚜"}]