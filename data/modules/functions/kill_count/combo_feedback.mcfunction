stopsound @s player
# 连杀：1
playsound minecraft:block.anvil.land player @s[scores={killCombo=1}] 0 1000000 0 1000000 1
playsound minecraft:entity.ender_dragon.flap player @s[scores={killCombo=1}] 0 1000000 0 1000000 1
playsound minecraft:entity.player.levelup player @s[scores={killCombo=1}] 0 1000000 0 1000000 1
title @s[scores={killCombo=1}] times 0 35 4
execute if entity @a[tag=victim,scores={killCombo=..2}] run title @s[scores={killCombo=1}] subtitle {"text":"✒  击杀",    "color":"#E6ED67"}
execute if entity @a[tag=victim,scores={killCombo=3..}] run title @s[scores={killCombo=1}] subtitle {"text":"✒  终结！",    "color":"#E6ED67"}
# 连杀：2
playsound minecraft:block.anvil.land player @s[scores={killCombo=2}] 0 1000000 0 1000000 1.2
playsound minecraft:block.anvil.land player @s[scores={killCombo=2}] 0 1000000 0 1000000 0.5
playsound minecraft:entity.ender_dragon.growl player @s[scores={killCombo=2}] 0 1000000 0 300000 1.2
playsound minecraft:entity.player.levelup player @s[scores={killCombo=2}] 0 1000000 0 1000000 0.8
title @s[scores={killCombo=2}] times 0 50 6
title @s[scores={killCombo=2}] subtitle {"text":"✒  双杀！",  "color":"#FDA61D"}
# 连杀：3
playsound minecraft:block.anvil.land player @s[scores={killCombo=3}] 0 1000000 0 1000000 1.4
playsound minecraft:block.anvil.land player @s[scores={killCombo=3}] 0 1000000 0 1000000 0.5
playsound minecraft:entity.ender_dragon.growl player @s[scores={killCombo=3}] 0 1000000 0 1000000 1.2
playsound minecraft:entity.ender_dragon.growl player @s[scores={killCombo=3}] 0 1000000 0 150000 0.7
playsound minecraft:entity.player.levelup player @s[scores={killCombo=3}] 0 1000000 0 1000000 0.65
title @s[scores={killCombo=3..4}] times 0 65 8
title @s[scores={killCombo=3}] subtitle {"text":"✒  三连杀！","color":"#FDA61D"}
# 连杀：4~7
playsound minecraft:block.anvil.land player @s[scores={killCombo=4..5}] 0 1000000 0 1000000 1.6
playsound minecraft:block.anvil.land player @s[scores={killCombo=6..7}] 0 1000000 0 10000000 1.75
playsound minecraft:block.anvil.land player @s[scores={killCombo=6..7}] 0 1000000 0 10000000 1.85
playsound minecraft:block.anvil.land player @s[scores={killCombo=4..7}] 0 1000000 0 1000000 0.5
playsound minecraft:entity.ender_dragon.growl player @s[scores={killCombo=4..7}] 0 1000000 0 200000 1.2
playsound minecraft:entity.ender_dragon.growl player @s[scores={killCombo=4..7}] 0 1000000 0 1000000 0.7
playsound minecraft:entity.player.levelup player @s[scores={killCombo=4..7}] 0 1000000 0 1000000 0.5
title @s[scores={killCombo=5..7}] times 0 70 10
title @s[scores={killCombo=4}] subtitle {"text":"✒  四连杀！","color":"red"}
title @s[scores={killCombo=5}] subtitle {"text":"✒  五连杀！","color":"red"}
title @s[scores={killCombo=6}] subtitle {"text":"✒  六连杀！","color":"#FF41E7"}
title @s[scores={killCombo=7}] subtitle {"text":"✒  七连杀！","color":"#FF41E7"}
# 连杀：8+
playsound minecraft:block.anvil.land player @s[scores={killCombo=8..}] 0 1000000 0 1000000 1.8
playsound minecraft:block.anvil.land player @s[scores={killCombo=8..}] 0 1000000 0 1000000 0.5
playsound minecraft:entity.ender_dragon.growl player @s[scores={killCombo=8..}] 0 1000000 0 200000 1.2
playsound minecraft:ui.toast.challenge_complete player @s[scores={killCombo=8..}] 0 1000000 0 120000 0.8
title @s[scores={killCombo=8..}] subtitle [{"text":"传奇连杀 ✒ ","color":"#FF41E7"},{"score":{"name":"*","objective":"killCombo"}}]
title @s[scores={killCombo=8..}] times 0 100 25

# 显示文本
execute if score $mutation_anim mem matches 0 run title @s title ""

# 击杀治疗
tag @s[scores={hp=..15,tip_2_killregen=..2}] add tip_2_killregen
effect give @s minecraft:regeneration 2 3

# 统计数据
scoreboard players add @s[scores={killCombo=2}] statPlayerCombo2 1
scoreboard players add @s[scores={killCombo=3}] statPlayerCombo3 1
scoreboard players add @s[scores={killCombo=4}] statPlayerCombo4 1
scoreboard players add @s[scores={killCombo=5}] statPlayerCombo5 1
scoreboard players add @s[scores={killCombo=6}] statPlayerCombo6 1
scoreboard players add @s[scores={killCombo=7}] statPlayerCombo7 1
scoreboard players add @s[scores={killCombo=8..}] statPlayerCombo_much 1