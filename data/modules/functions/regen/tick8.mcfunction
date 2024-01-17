# 检查挂机
execute if score $info_ignore_afk debug matches 0 run scoreboard players add @s[scores={tip_0_tutorial=7..}] afkTime 1
execute unless entity @s[tag=!brRegenBreak,scores={brRegenSneak=0,brRegenBreak1=0,brRegenBreak3=..3,brRegenBreak6=0}] run function modules:regen/sub/reset_afk
title @s[scores={state=1..2,afkTime=300..399}] actionbar {"color":"gold","text":"⚠ 即将由于未操作返回大厅","bold":true}
execute as @s[scores={state=1..2,afkTime=400}] run tellraw @a[tag=pass] ["",{"text":" ❇  "},{"selector":"@s"}," 由于长时间未操作，已自动离开战场"]
execute as @s[scores={state=1..2,afkTime=400}] run function pvp:state/lobby/enter

# 重置细节
execute unless entity @s[tag=!brRegenBreak,scores={brRegenBreak2=..20,brRegenBreak3=..20,brRegenBreak4=..20,brRegenBreak5=..20,brRegenBreak6=0}] run tag @s remove detail

# 检查是否允许回血，若通过则带有 brRegenCheck 的 tag
#   brRegenSneak=1..：正在潜行
#   tag=!brRegenBreak：技能要求打断
#   brRegenBreak1~5=0：数个记分板判据执行打断
#   OnGround:1b：正站在地板上
tag @s remove brRegenCheck
tag @s[tag=!brRegenBreak,scores={brRegenSneak=6..,state=2..3}] add brRegenCheck
execute as @s[tag=brRegenCheck] unless entity @s[scores={brRegenBreak0=..10,brRegenBreak1=0,brRegenBreak2=..3,brRegenBreak3=..3,brRegenBreak4=..3,brRegenBreak5=..3,brRegenBreak6=0},nbt={OnGround:1b}] run tag @s remove brRegenCheck

## 以下状态去除debuff和回血都不行
# 隐身状态无法回血
execute unless score $mutation mem matches 8 run title @s[tag=brRegenCheck,tag=invisible] actionbar [{"color":"red","text":"✖ "},{"text":"隐身时无法静息治疗","bold":true}]
execute unless score $mutation mem matches 8 run tag @s[tag=brRegenCheck,tag=invisible] remove brRegenCheck

# 不祥之兆下无法回血
tag @s remove bad_omen
tag @s[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] add bad_omen
title @s[tag=brRegenCheck,tag=bad_omen] actionbar [{"color":"red","text":"✖ "},{"text":"不祥之兆下无法静息治疗","bold":true}]
tag @s[tag=brRegenCheck,tag=bad_omen] remove brRegenCheck

# 清理上述判据，以供下一轮检查
tag @s remove brRegenBreak
scoreboard players set @s brRegenSneak 0
scoreboard players set @s brRegenBreak0 0
scoreboard players set @s brRegenBreak1 0
scoreboard players set @s brRegenBreak2 0
scoreboard players set @s brRegenBreak3 0
scoreboard players set @s brRegenBreak4 0
scoreboard players set @s brRegenBreak5 0
scoreboard players set @s brRegenBreak6 0

# 未通过
effect clear @s[tag=!brRegenCheck,scores={brRegen=..0}] regeneration
scoreboard players set @s[tag=!brRegenCheck] brRegen 5

# 通过
execute if score $skill_heal debug matches 1 run effect give @s[tag=brRegenCheck] instant_health 1 3 true
scoreboard players remove @s[tag=brRegenCheck] brRegen 1
execute as @s[scores={brRegen=4}] run playsound block.note_block.cow_bell player @s ~ ~ ~ 0.2 1.3
execute as @s[scores={brRegen=3}] run playsound block.note_block.cow_bell player @s ~ ~ ~ 0.2 1
execute as @s[scores={brRegen=2}] run playsound block.note_block.cow_bell player @s ~ ~ ~ 0.2 0.5
execute as @s[scores={brRegen=1}] run playsound block.note_block.cow_bell player @s ~ ~ ~ 0.2 0.75
# 实际触发0
execute as @s[scores={brRegen=0}] run function modules:regen/treat

## 以下状态只能去除debuff
# 杀戮光环突变无法回血
execute if score $mutation mem matches 6 run title @s[tag=brRegenCheck,scores={state=2,brRegen=..0}] actionbar [{"color":"red","text":"⚠ "},{"text":"杀戮光环突变只能去除debuff","bold":true}]
execute if score $mutation mem matches 6 run tag @s[tag=brRegenCheck,scores={state=2,brRegen=..0}] remove brRegenCheck

# 牧师在厄难之血突变无法回血
execute if score $mutation mem matches 4 run title @s[tag=brRegenCheck,scores={state=2,class=7,brRegen=..0}] actionbar [{"color":"red","text":"⚠ "},{"text":"厄难之血突变时牧师无法静息减少冷却","bold":true}]
execute if score $mutation mem matches 4 run tag @s[tag=brRegenCheck,scores={state=2,class=7,brRegen=..0}] remove brRegenCheck

# 1v1模式无法回血
title @s[tag=brRegenCheck,scores={team=5..6,brRegen=..0}] actionbar [{"color":"red","text":"⚠ "},{"text":"1v1模式下只能去除debuff","bold":true}]
tag @s[tag=brRegenCheck,scores={team=5..6,brRegen=..0}] remove brRegenCheck

# 实际触发1
execute as @s[scores={brRegen=..0},tag=brRegenCheck] run function modules:regen/trigger

# 呼吸回血提示
tag @s[scores={brRegen=4}] remove tip_1_regen
scoreboard players add @s[scores={brRegen=1}] tip_1_regen 1
tag @s[scores={state=2..3,mino_forgive_timer=1,hp=..12,brRegen=5,tip_1_regen=..1},tag=!bad_omen] add tip_1_regen
tag @s[scores={state=2..3,mino_forgive_timer=-40,hp=..12,brRegen=5,tip_1_regen=..10}] add tip_1_regen