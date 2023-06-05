# 随机值
scoreboard players set #random_min mem 1
scoreboard players set #random_max mem 100
function modules:random

# 子标题
execute if score $mutation_anim mem matches 56..140 run title @a[scores={state=0..2,team=1..4}] subtitle {"selector":"@e[tag=mutation_name]"}
# 1~32: 不显示
execute if score $mutation_anim mem matches ..32 run title @a[scores={state=0..2,team=1..4}] subtitle ""
# 33: 显示乱码
execute if score $mutation_anim mem matches 33 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"你猜是啥", "obfuscated": true}
# 34~45: 10% 显示乱码，90% 不显示
execute if score $mutation_anim mem matches 34..45 if score #random mem matches ..10 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"你猜是啥", "obfuscated": true}
execute if score $mutation_anim mem matches 34..45 if score #random mem matches 11.. run title @a[scores={state=0..2,team=1..4}] subtitle ""
# 46~55: 30% 显示乱码，70% 不显示
execute if score $mutation_anim mem matches 46..55 if score #random mem matches ..30 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"你猜是啥", "obfuscated": true}
execute if score $mutation_anim mem matches 46..55 if score #random mem matches 31.. run title @a[scores={state=0..2,team=1..4}] subtitle ""
# 56~65: 5% 显示文本，45% 显示乱码，50% 不显示
execute if score $mutation_anim mem matches 56..65 if score #random mem matches 6..50 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"你猜是啥", "obfuscated": true}
execute if score $mutation_anim mem matches 56..65 if score #random mem matches 51.. run title @a[scores={state=0..2,team=1..4}] subtitle ""
# 66~80: 20% 显示文本，40% 显示乱码，40% 不显示
execute if score $mutation_anim mem matches 66..80 if score #random mem matches 21..60 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"你猜是啥", "obfuscated": true}
execute if score $mutation_anim mem matches 66..80 if score #random mem matches 61.. run title @a[scores={state=0..2,team=1..4}] subtitle ""
# 81~90: 60% 显示文本，35% 显示乱码，5% 不显示
execute if score $mutation_anim mem matches 81..90 if score #random mem matches 61..95 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"你猜是啥", "obfuscated": true}
execute if score $mutation_anim mem matches 81..90 if score #random mem matches 96.. run title @a[scores={state=0..2,team=1..4}] subtitle ""
# 91~140: 97% 显示文本，3% 显示乱码
execute if score $mutation_anim mem matches 91..140 if score #random mem matches 98.. run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"你猜是啥", "obfuscated": true}
# 141~150: 显示增量掩码
execute if score $mutation_anim mem matches 141 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"一二三四五", "obfuscated": true}
execute if score $mutation_anim mem matches 142 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"一二三四五一", "obfuscated": true}
execute if score $mutation_anim mem matches 143 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"一二三四五一二", "obfuscated": true}
execute if score $mutation_anim mem matches 144 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"一二三四五一二三四", "obfuscated": true}
execute if score $mutation_anim mem matches 145 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"一二三四五一二三四五一", "obfuscated": true}
execute if score $mutation_anim mem matches 146 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"一二三四五一二三四五一二三", "obfuscated": true}
execute if score $mutation_anim mem matches 147 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"一二三四五一二三四五一二三四五", "obfuscated": true}
execute if score $mutation_anim mem matches 148 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"一二三四五一二三四五一二三四五一", "obfuscated": true}
execute if score $mutation_anim mem matches 149 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"一二三四五一二三四五一二三四五一二", "obfuscated": true}
execute if score $mutation_anim mem matches 150 run title @a[scores={state=0..2,team=1..4}] subtitle {"text":"一二三四五一二三四五一二三四五一二三", "obfuscated": true}
# 151~305: 97% 显示文本，3% 显示乱码
execute if score $mutation_anim mem matches 151..305 if score #random mem matches ..97 run title @a[scores={state=0..2,team=1..4}] subtitle {"selector":"@e[tag=mutation_desc]"}
execute if score $mutation_anim mem matches 151..305 if score #random mem matches 98.. run title @a[scores={state=0..2,team=1..4}] subtitle {"selector":"@e[tag=mutation_desc]", "obfuscated": true}
# 301~302: 覆盖显示乱码
execute if score $mutation_anim mem matches 301..302 run title @a[scores={state=0..2,team=1..4}] subtitle {"selector":"@e[tag=mutation_desc]", "obfuscated": true}
# 306~314: 20% 显示乱码，80% 不显示
execute if score $mutation_anim mem matches 306..314 if score #random mem matches ..20 run title @a[scores={state=0..2,team=1..4}] subtitle {"selector":"@e[tag=mutation_desc]", "obfuscated": true}
execute if score $mutation_anim mem matches 306..314 if score #random mem matches 21.. run title @a[scores={state=0..2,team=1..4}] subtitle ""
# 315+: 清空
execute if score $mutation_anim mem matches 315.. run title @a[scores={state=0..2,team=1..4}] subtitle ""

# 随机值
execute if score $mutation_anim mem matches ..300 run scoreboard players set #random_min mem 1
execute if score $mutation_anim mem matches ..300 run scoreboard players set #random_max mem 100
execute if score $mutation_anim mem matches ..300 run function modules:random

# 主标题
title @a[scores={state=0..2,team=1..4}] times 0 6 0
# 1: 显示乱码
execute if score $mutation_anim mem matches 1 run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 突变 ⚕", "color":"gold", "obfuscated": true}
# 2~4: 不显示
execute if score $mutation_anim mem matches 2..4 run title @a[scores={state=0..2,team=1..4}] title ""
# 5~30: 6% 显示乱码，94% 不显示
execute if score $mutation_anim mem matches 5..30 if score #random mem matches ..6 run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 突变 ⚕", "color":"gold", "obfuscated": true}
execute if score $mutation_anim mem matches 5..30 if score #random mem matches 7.. run title @a[scores={state=0..2,team=1..4}] title ""
# 31~50: 10% 显示文本，40% 显示乱码，50% 不显示
execute if score $mutation_anim mem matches 31..50 if score #random mem matches ..10 run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 突变 ⚕", "color":"gold"}
execute if score $mutation_anim mem matches 31..50 if score #random mem matches 11..50 run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 突变 ⚕", "color":"gold", "obfuscated": true}
execute if score $mutation_anim mem matches 31..50 if score #random mem matches 51.. run title @a[scores={state=0..2,team=1..4}] title ""
# 51~70: 60% 显示文本，35% 显示乱码，5% 不显示
execute if score $mutation_anim mem matches 51..70 if score #random mem matches ..60 run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 突变 ⚕", "color":"gold"}
execute if score $mutation_anim mem matches 51..70 if score #random mem matches 61..94 run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 突变 ⚕", "color":"gold", "obfuscated": true}
execute if score $mutation_anim mem matches 51..70 if score #random mem matches 95.. run title @a[scores={state=0..2,team=1..4}] title ""
# 71~84: 80% 显示文本，20% 显示乱码
execute if score $mutation_anim mem matches 71..84 if score #random mem matches ..80 run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 突变 ⚕", "color":"gold"}
execute if score $mutation_anim mem matches 71..84 if score #random mem matches 81.. run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 突变 ⚕", "color":"gold", "obfuscated": true}
# 85~140: 97% 显示文本，3% 显示乱码
execute if score $mutation_anim mem matches 85..140 if score #random mem matches ..97 run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 突变 ⚕", "color":"gold"}
execute if score $mutation_anim mem matches 85..140 if score #random mem matches 98.. run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 突变 ⚕", "color":"gold", "obfuscated": true}
# 141~150: 显示增量掩码
execute if score $mutation_anim mem matches 141..153 run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 你猜 ⚕", "color":"gold", "obfuscated": true}
execute if score $mutation_anim mem matches 144..157 run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 你猜啥 ⚕", "color":"gold", "obfuscated": true}
execute if score $mutation_anim mem matches 148..150 run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 你猜是啥 ⚕", "color":"gold", "obfuscated": true}
# 151~300: 97% 显示文本，3% 显示乱码
execute if score $mutation_anim mem matches 151..305 if score #random mem matches ..97 run title @a[scores={state=0..2,team=1..4}] title [{"text":"⚕ ", "color":"gold"},{"selector":"@e[tag=mutation_name]"}," ⚕"]
execute if score $mutation_anim mem matches 151..305 if score #random mem matches 98.. run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 你猜是啥 ⚕", "color":"gold", "obfuscated": true}
# 301~302: 显示乱码
execute if score $mutation_anim mem matches 301..302 run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 你猜是啥 ⚕", "color":"gold", "obfuscated": true}
# 303~305: 显示文本
execute if score $mutation_anim mem matches 303..305 run title @a[scores={state=0..2,team=1..4}] title [{"text":"⚕ ", "color":"gold"},{"selector":"@e[tag=mutation_name]"}," ⚕"]
# 306~314: 20% 显示乱码，80% 不显示
execute if score $mutation_anim mem matches 306..314 if score #random mem matches ..20 run title @a[scores={state=0..2,team=1..4}] title {"text":"⚕ 你猜是啥 ⚕", "color":"gold", "obfuscated": true}
execute if score $mutation_anim mem matches 306..314 if score #random mem matches 21.. run title @a[scores={state=0..2,team=1..4}] title ""
# 315+: 清空
execute if score $mutation_anim mem matches 315.. run title @a[scores={state=0..2,team=1..4}] title ""

# 音效
execute if score $mutation_anim mem matches 11 run playsound minecraft:block.respawn_anchor.ambient player @a[scores={state=0..2,team=1..4}] 0 1000000 0 1000000 0.5
execute if score $mutation_anim mem matches 12 run playsound minecraft:block.respawn_anchor.ambient player @a[scores={state=0..2,team=1..4}] 0 1000000 0 1000000 0.5
execute if score $mutation_anim mem matches 102 run playsound minecraft:entity.zombie_villager.converted player @a[scores={state=0..2,team=1..4}] 0 1000000 0 1000000 0.5
execute if score $mutation_anim mem matches 103 run playsound minecraft:entity.zombie_villager.converted player @a[scores={state=0..2,team=1..4}] 0 1000000 0 1000000 0.5
execute if score $mutation_anim mem matches 134 run playsound minecraft:block.end_portal.spawn player @a[scores={state=0..2,team=1..4}] 0 1000000 0 1 0.5 0.6

# 正式启用
execute if score $mutation_anim mem matches 151 run function modules:mutation/on_enabled

# 增加计时
scoreboard players add $mutation_anim mem 1
execute if score $mutation_anim mem matches 316.. run scoreboard players set $mutation_anim mem 0