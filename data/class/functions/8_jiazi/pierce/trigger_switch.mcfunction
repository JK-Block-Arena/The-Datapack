scoreboard players add @s 8_pierce_tp 1
scoreboard players set @s[scores={8_pierce_tp=2..}] 8_pierce_tp 0
title @s[scores={8_pierce_tp=0}] actionbar {"text":"已关闭穿刺后移！","bold":true}
title @s[scores={8_pierce_tp=1}] actionbar {"text":"已开启穿刺后移！","bold":true}
playsound minecraft:entity.arrow.hit_player player @s

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory