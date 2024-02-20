# 连杀数
execute unless entity @e[tag=death_info] run summon marker 8.5 240.5 8.5 {Tags:["death_info"]}
execute if score #death_type mem matches 0 run data modify entity @e[limit=1,tag=death_info] CustomName set value '{"text":"自杀 ✒  ","color":"gray"}'
execute if score #death_type mem matches 1 run data modify entity @e[limit=1,tag=death_info] CustomName set value '{"text":"误杀 ✒  ","color":"gray"}'
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches ..1 if score @s killCombo matches ..2 run data modify entity @e[limit=1,tag=death_info] CustomName set value '{"text":"击杀 ✒  ","color":"#E6ED67"}'
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches ..1 if score @s killCombo matches 3.. run data modify entity @e[limit=1,tag=death_info] CustomName set value '{"text":"终结 ✒  ","color":"#E6ED67"}'
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches 2 run data modify entity @e[limit=1,tag=death_info] CustomName set value '{"text":"双杀 ✒  ","color":"#FDA61D"}'
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches 3 run data modify entity @e[limit=1,tag=death_info] CustomName set value '{"text":"三连杀 ✒  ","color":"#FDA61D"}'
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches 4 run data modify entity @e[limit=1,tag=death_info] CustomName set value '{"text":"四连杀 ✒  ","color":"red"}'
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches 5 run data modify entity @e[limit=1,tag=death_info] CustomName set value '{"text":"五连杀 ✒  ","color":"red"}'
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches 6 run data modify entity @e[limit=1,tag=death_info] CustomName set value '{"text":"六连杀 ✒  ","color":"#FF41E7"}'
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches 7 run data modify entity @e[limit=1,tag=death_info] CustomName set value '{"text":"七连杀 ✒  ","color":"#FF41E7"}'
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches 8.. run data modify entity @e[limit=1,tag=death_info] CustomName set value '{"text":"传奇连杀 ✒  ","color":"#FF41E7"}'

# 摔落0
execute if score @s mino_type_last matches 00000 if score #death_type mem matches 0 as @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 从高处坠下，粉身碎骨"]
execute if score @s mino_type_last matches 00000 if score #death_type mem matches 0 as @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 摔死了"]
execute if score @s mino_type_last matches 00000 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 if score @s mino_forgive_timer matches 0.. as @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时从高处坠下，粉身碎骨"]
execute if score @s mino_type_last matches 00000 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 if score @s mino_forgive_timer matches 0.. as @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时不幸摔死了"]
execute if score @s mino_type_last matches 00000 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 if score @s mino_forgive_timer matches ..-1 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在逃离 ",{"selector":"@p[tag=murder]"}," 后不慎摔死了"]
execute if score @s mino_type_last matches 00000 if score #death_type mem matches 1.. if score @s mino_type_real matches 00080 as @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 换位后，被摔成了肉饼"]
execute if score @s mino_type_last matches 00000 if score #death_type mem matches 1.. if score @s mino_type_real matches 00080 as @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 换位后被摔死了"]

# 其他通用

execute if score @s mino_type_last matches 00010 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在火焰中看到了希望"]
execute if score @s mino_type_last matches 00010 if score #death_type mem matches 0 run scoreboard players set @s hidden_campfire 1
execute if score @s mino_type_last matches 00010 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时被烧成了焦炭"]
execute if score @s mino_type_last matches 00010 if score #death_type mem matches 1.. if score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 换位后，被烧成了焦炭"]

execute if score @s mino_type_last matches 00020 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 太弱小了，以至于被 ",{"selector":"@p[tag=murder]"}," 一巴掌揍死了"]

execute if score @s mino_type_last matches 00030 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 凋零了"]
execute if score @s mino_type_last matches 00030 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 if score @s mino_type_real matches 01020 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的巫毒箭命中，最终凋谢了"]
execute if score @s mino_type_last matches 00030 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 unless score @s mino_type_real matches 01020 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时凋零了"]
execute if score @s mino_type_last matches 00030 if score #death_type mem matches 1.. if score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 换位后凋零了"]

execute if score @s mino_type_last matches 00050 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在水中溶解了"]
execute if score @s mino_type_last matches 00050 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 if score @s mino_forgive_timer matches 0.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时落入水中，溶解殆尽"]
execute if score @s mino_type_last matches 00050 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 if score @s mino_forgive_timer matches ..-1 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在逃离 ",{"selector":"@p[tag=murder]"}," 后不慎落入水中，溶解殆尽"]
execute if score @s mino_type_last matches 00050 if score #death_type mem matches 1.. if score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 换位后，落入水中溶解殆尽"]

execute if score @s mino_type_last matches 00060 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 把自己塞进了方块里"]
execute if score @s mino_type_last matches 00060 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 为了躲开 ",{"selector":"@p[tag=murder]"},"，不惜将自己塞入方块里"]
execute if score @s mino_type_last matches 00060 if score #death_type mem matches 1.. if score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 换位后，被塞进了方块里"]

execute if score @s mino_type_last matches 00061 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 溺水了"]
execute if score @s mino_type_last matches 00061 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 为了躲避 ",{"selector":"@p[tag=murder]"},"，忘记了换气"]
execute if score @s mino_type_last matches 00061 if score #death_type mem matches 1.. if score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 换位后，不慎变成了溺尸"]

execute if score @s mino_type_last matches 00070 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 自杀了"]
execute if score @s mino_type_last matches 00070 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 不愿意和 ",{"selector":"@p[tag=murder]"}," 活在同一世界"]

# 游侠

execute if score @s mino_type_last matches 01011 as @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的强击箭击下了悬崖，粉身碎骨"]
execute if score @s mino_type_last matches 01011 as @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的强击箭击飞后摔死了"]

execute if score @s mino_type_last matches 01010 if score #death_type mem matches 1.. as @s[tag=mino_story_large] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的强击箭射穿了心脏"]
execute if score @s mino_type_last matches 01010 if score #death_type mem matches 1.. as @s[tag=!mino_story_large] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的强击箭射杀了"]
execute if score @s mino_type_last matches 01020 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的凋亡箭射杀了"]
execute if score @s mino_type_last matches 01030 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的光焰箭射杀了"]
execute if score @s mino_type_last matches 01040 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的巫毒箭射杀了"]
execute if score @s mino_type_last matches 01050 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的折跃箭不幸射杀了"]
execute if score @s mino_type_last matches 01010 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己的强击箭射杀了"]
execute if score @s mino_type_last matches 01020 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己的凋亡箭射杀了"]
execute if score @s mino_type_last matches 01030 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己的光焰箭射杀了"]
execute if score @s mino_type_last matches 01040 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己的巫毒箭射杀了"]
execute if score @s mino_type_last matches 01050 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 幸运地被自己的折跃箭射杀了"]
# 暗影

execute if score @s mino_type_last matches 02010 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 用死神之镰杀死了"]
execute if score @s mino_type_last matches 02011 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 的灵魂被 ",{"selector":"@p[tag=murder]"}," 的死神之镰收割了"]

# 突袭者

execute if score @s mino_type_last matches 03010 as @s[tag=mino_story_large] if entity @a[tag=murder] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的战斧劈成了两半"]
execute if score @s mino_type_last matches 03010 as @s[tag=!mino_story_large] if entity @a[tag=murder] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 用战斧杀死了"]

execute if score @s mino_type_last matches 03020 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己换队前的泥头车创死了"]
execute if score @s mino_type_last matches 03020 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的泥头车创死了"]

# 海嗣

execute if score @s mino_type_last matches 04010 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己引来的天雷劈死了"]
execute if score @s mino_type_last matches 04010 if score #death_type mem matches 1.. if score @s mino_source_last matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时，引来的闪电不幸劈中了自己"]
execute if score @s mino_type_last matches 04010 if score #death_type mem matches 1.. if score @s mino_source_last matches 1.. if score @s mino_source_real = @s mino_source_last run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 引来的闪电劈死了"]
execute if score @s mino_type_last matches 04010 if score #death_type mem matches 1.. if score @s mino_source_last matches 1.. unless score @s mino_source_real = @s mino_source_last run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时被闪电劈死了"]

execute if score @s mino_type_last matches 04011 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的辉煌裂片劈成了焦炭"]
execute if score @s mino_type_last matches 04012 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 所激活的辉煌裂片劈成了焦炭"]

execute if score @s mino_type_last matches 04020 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 用海神戟刺杀了"]
execute if score @s mino_type_last matches 04030 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被忠诚过度的海神戟贯穿了"]
execute if score @s mino_type_last matches 04030 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 投掷的海神戟贯穿了"]

execute if score @s mino_type_last matches 04040 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 拥抱了辉煌裂片上的尖刺"]
execute if score @s mino_type_last matches 04040 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时被辉煌裂片上的尖刺戳死了"]
execute if score @s mino_type_last matches 04040 run scoreboard players set @s hidden_spike 1

execute if score @s mino_type_last matches 04050 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 借助激流飞上高空，但没能安全降落"]
execute if score @s mino_type_last matches 04050 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 借助激流与 ",{"selector":"@p[tag=murder]"}," 拉开距离，但没能安全降落"]

execute if score @s mino_type_last matches 04060 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在水中浸泡了太久，最终溶解了"]
execute if score @s mino_type_last matches 04060 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 与 ",{"selector":"@p[tag=murder]"}," 战斗时在水中浸泡了太久"]
execute if score @s mino_type_last matches 04060 if score #death_type mem matches 1.. if score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 换位后落入水中，再也没能上岸"]

# 耀骑士

execute if score @s mino_type_last matches 05010 as @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的灿焰长剑杀死了"]
execute if score @s mino_type_last matches 05010 as @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 用灿焰长剑斩杀了"]

execute if score @s mino_type_last matches 05020 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 与自己的烁光新星一起化为了星光"]
execute if score @s mino_type_last matches 05020 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 与 ",{"selector":"@p[tag=murder]"}," 的烁光新星一起化为了星光"]

# 有用之人

execute if score @s mino_type_last matches 06010 as @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的桃木剑杀死了"]
execute if score @s mino_type_last matches 06010 as @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 用桃木剑斩杀了"]

execute if score @s mino_type_last matches 06020 as @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的剑气吹散了"]
execute if score @s mino_type_last matches 06020 as @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 用剑气斩杀了"]
# 牧师

execute if score @s mino_type_last matches 07010 as @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的圣书呼死了"]
execute if score @s mino_type_last matches 07010 as @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的圣书呼死了"]

execute if score @s mino_type_last matches 07020 if score #death_type mem matches 1.. as @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的蜜汁药水砸死了"]
execute if score @s mino_type_last matches 07020 if score #death_type mem matches 1.. as @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的圣水感化了"]

execute if score @s mino_type_last matches 07020 if score #death_type mem matches 0 as @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己的蜜汁药水砸死了"]
execute if score @s mino_type_last matches 07020 if score #death_type mem matches 0 as @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己的圣水感化了"]

# 夹子

execute if score @s mino_type_last matches 08010 as @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的手中夹剪断了"]
execute if score @s mino_type_last matches 08010 as @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的手中夹剪成了两半"]

execute if score @s mino_type_last matches 08020 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 自愿成为自己夹子的饵料"]
execute if score @s mino_type_last matches 08020 if score #death_type mem matches 1.. if score @s mino_source_last matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时，被自己召唤的夹子吞噬了"]
execute if score @s mino_type_last matches 08020 if score #death_type mem matches 1.. if score @s mino_source_last matches 1.. if score @s mino_source_real = @s mino_source_last run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 召唤的夹子吃掉了"]
execute if score @s mino_type_last matches 08020 if score #death_type mem matches 1.. if score @s mino_source_last matches 1.. unless score @s mino_source_real = @s mino_source_last run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时被夹子吃掉了"]

# 千机
execute if score @s mino_type_last matches 09000 if score #death_type mem matches 1.. as @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 的战斗中感受到了动能"]
execute if score @s mino_type_last matches 09000 if score #death_type mem matches 1.. as @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 的战斗中忘记了如何滑翔"]

execute if score @s mino_type_last matches 09000 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 感受到了动能"]

execute if score @s mino_type_last matches 09010 if score #death_type mem matches 1.. as @s[tag=mino_story_large] unless entity @s[scores={class=9}] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的极速箭爆头了"]
execute if score @s mino_type_last matches 09010 if score #death_type mem matches 1.. as @s[tag=!mino_story_large] unless entity @s[scores={class=9}] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的极速箭射杀了"]

execute if score @s mino_type_last matches 09010 if score #death_type mem matches 1.. as @s[scores={class=9},tag=mino_story_large] if entity @p[scores={class=9},tag=murder] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[scores={class=9},tag=murder]"}," 的西部快枪手决斗中失败了"]
execute if score @s mino_type_last matches 09010 if score #death_type mem matches 1.. as @s[scores={class=9},tag=!mino_story_large] if entity @p[scores={class=9},tag=murder] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[scores={class=9},tag=murder]"}," 的西部快枪手决斗中慢了一步"]

execute if score @s mino_type_last matches 09010 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己的极速箭射杀了"]

execute if score @s mino_type_last matches 09020 if score #death_type mem matches 1.. as @s[tag=mino_story_large] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的穿云箭爆头了"]
execute if score @s mino_type_last matches 09020 if score #death_type mem matches 1.. as @s[tag=!mino_story_large] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的穿云箭射杀了"]
execute if score @s mino_type_last matches 09020 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己的穿云箭射杀了"]

execute if score @s mino_type_last matches 09030 if score #death_type mem matches 1.. as @s[tag=mino_story_large] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的三连箭爆头了"]
execute if score @s mino_type_last matches 09030 if score #death_type mem matches 1.. as @s[tag=!mino_story_large] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的三连箭射杀了"]
execute if score @s mino_type_last matches 09030 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己的三连箭射杀了"]

execute if score @s mino_type_last matches 09040 if score #death_type mem matches 1.. as @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的烟花炸死了"]
execute if score @s mino_type_last matches 09040 if score #death_type mem matches 1.. as @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 赠送上天大礼包"]
execute if score @s mino_type_last matches 09040 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 随着一声巨响消失了"]

# 召唤师

execute if score @s mino_type_last matches 10000 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的招魂幡吸走了灵魂"]
execute if score @s mino_type_last matches 10000 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己换队前招魂幡吸走了灵魂"]

execute if score @s mino_type_last matches 10010 if score #death_type mem matches 1.. as @s[tag=mino_story_large] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的僵尸击杀了"]
execute if score @s mino_type_last matches 10010 if score #death_type mem matches 1.. as @s[tag=!mino_story_large] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的僵尸吃掉了脑袋"]
execute if score @s mino_type_last matches 10010 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己换队前的僵尸击杀了"]

execute if score @s mino_type_last matches 10020 if score #death_type mem matches 1.. as @s[tag=mino_story_large] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的恼鬼击杀了"]
execute if score @s mino_type_last matches 10020 if score #death_type mem matches 1.. as @s[tag=!mino_story_large] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的恼鬼杀死了"]
execute if score @s mino_type_last matches 10020 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己换队前的恼鬼击杀了"]

execute if score @s mino_type_last matches 10030 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己的苦力怕炸死了"]
execute if score @s mino_type_last matches 10030 if score #death_type mem matches 1.. if score @s mino_source_last matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时，被自己的苦力怕炸死了"]
execute if score @s mino_type_last matches 10030 if score #death_type mem matches 1.. if score @s mino_source_last matches 1.. if score @s mino_source_real = @s mino_source_last run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的苦力怕炸死了"]
execute if score @s mino_type_last matches 10030 if score #death_type mem matches 1.. if score @s mino_source_last matches 1.. unless score @s mino_source_real = @s mino_source_last run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时，被苦力怕炸死了"]

execute if score @s mino_type_last matches 10031 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己的闪电苦力怕炸死了"]
execute if score @s mino_type_last matches 10031 if score #death_type mem matches 1.. if score @s mino_source_last matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时，被自己的闪电苦力怕炸死了"]
execute if score @s mino_type_last matches 10031 if score #death_type mem matches 1.. if score @s mino_source_last matches 1.. if score @s mino_source_real = @s mino_source_last run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的闪电苦力怕炸死了"]
execute if score @s mino_type_last matches 10031 if score #death_type mem matches 1.. if score @s mino_source_last matches 1.. unless score @s mino_source_real = @s mino_source_last run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时，被闪电苦力怕炸死了"]

execute if score @s mino_type_last matches 10040 if score #death_type mem matches 1.. as @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的铁傀儡打扁了"]
execute if score @s mino_type_last matches 10040 if score #death_type mem matches 1.. as @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的铁傀儡砸死了"]
execute if score @s mino_type_last matches 10040 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己换队前的铁傀儡击杀了"]

# 魔术师

execute if score @s mino_type_last matches 11010 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 用百变符挠死了"]
execute if score @s mino_type_last matches 11011 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 用书呼死了"]
execute if score @s mino_type_last matches 11012 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 用石锄刨开了"]
execute if score @s mino_type_last matches 11013 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 用石剑击杀了"]
execute if score @s mino_type_last matches 11014 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 用石斧劈开了"]

execute if score @s mino_type_last matches 11020 if score #death_type mem matches 1.. as @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 发射的火球炸飞了"]
execute if score @s mino_type_last matches 11020 if score #death_type mem matches 1.. as @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 发射的火球送上了天"]
execute if score @s mino_type_last matches 11020 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己发射的火球炸飞了"]

# 一击必杀

execute if score @s mino_type_last matches 99010 if score #death_type mem matches 1.. as @s run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 炸得灰都不剩"]
execute if score @s mino_type_last matches 99010 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己送上天了"]

execute if score @s mino_type_last matches 99020 if score #death_type mem matches 1.. as @s run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 戳穿了"]
execute if score @s mino_type_last matches 99020 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 戳穿了自己"]

execute if score @s mino_type_last matches 99030 if score #death_type mem matches 1.. as @s run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 射爆了"]
execute if score @s mino_type_last matches 99030 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 射爆了自己"]

# 清理
#kill @e[tag=death_info]