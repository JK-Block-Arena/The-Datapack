# 检查挂机
execute if score $info_ignore_afk debug matches 0 run scoreboard players add @a[gamemode=adventure,tag=pass,scores={tip_0_tutorial=7..}] afkTime 1
execute as @a unless entity @s[tag=!brRegenBreak,scores={brRegenSneak=0,brRegenBreak1=0,brRegenBreak3=..3,brRegenBreak6=0}] at @s run function modules:regen/sub/reset_afk
title @a[scores={state=1..2,afkTime=300..399}] actionbar {"color":"gold","text":"⚠ 即将由于未操作返回大厅","bold":true}
execute as @a[scores={state=1..2,afkTime=400}] run tellraw @a[tag=pass] ["",{"text":" ❇  "},{"selector":"@s"}," 由于长时间未操作，已自动离开战场"]
execute as @a[scores={state=1..2,afkTime=400}] run function pvp:state/lobby/enter

# 重置细节
execute as @a unless entity @s[tag=!brRegenBreak,scores={brRegenBreak2=..20,brRegenBreak3=..20,brRegenBreak4=..20,brRegenBreak5=..20,brRegenBreak6=0}] run tag @s remove detail

# 检查是否允许回血，若通过则带有 brRegenCheck 的 tag
#   brRegenSneak=1..：正在潜行
#   tag=!brRegenBreak：技能要求打断
#   brRegenBreak1~5=0：数个记分板判据执行打断
#   OnGround:1b：正站在地板上
tag @a remove brRegenCheck
tag @a[tag=!brRegenBreak,scores={brRegenSneak=6..,state=2..4}] add brRegenCheck
execute as @a[tag=brRegenCheck] unless entity @s[scores={brRegenBreak0=..10,brRegenBreak1=0,brRegenBreak2=..3,brRegenBreak3=..3,brRegenBreak4=..3,brRegenBreak5=..3,brRegenBreak6=0},nbt={OnGround:1b}] run tag @s remove brRegenCheck

# 隐身状态无法回血
title @a[tag=brRegenCheck,tag=invisible] actionbar [{"color":"red","text":"✖ "},{"text":"隐身时无法静息治疗","bold":true}]
tag @a[tag=brRegenCheck,tag=invisible] remove brRegenCheck

# 不祥之兆下无法回血
tag @a remove bad_omen
tag @a[nbt={ActiveEffects:[{Id:31}]}] add bad_omen
title @a[tag=brRegenCheck,tag=bad_omen] actionbar [{"color":"red","text":"✖ "},{"text":"不祥之兆下无法静息治疗","bold":true}]
tag @a[tag=brRegenCheck,tag=bad_omen] remove brRegenCheck

# 杀戮光环突变无法回血
execute if score $mutation mem matches 6 run title @a[tag=brRegenCheck,scores={state=2}] actionbar [{"color":"red","text":"✖ "},{"text":"杀戮光环突变无法静息治疗","bold":true}]
execute if score $mutation mem matches 6 run tag @a[tag=brRegenCheck,scores={state=2}] remove brRegenCheck

# 1v1模式无法回血
title @a[tag=brRegenCheck,scores={state=4}] actionbar [{"color":"red","text":"✖ "},{"text":"1v1模式下无法静息治疗","bold":true}]
tag @a[tag=brRegenCheck,scores={state=4}] remove brRegenCheck

# 清理上述判据，以供下一轮检查
tag @a remove brRegenBreak
scoreboard players set @a brRegenSneak 0
scoreboard players set @a brRegenBreak0 0
scoreboard players set @a brRegenBreak1 0
scoreboard players set @a brRegenBreak2 0
scoreboard players set @a brRegenBreak3 0
scoreboard players set @a brRegenBreak4 0
scoreboard players set @a brRegenBreak5 0
scoreboard players set @a brRegenBreak6 0

# 未通过
effect clear @a[tag=!brRegenCheck,scores={brRegen=..0}] regeneration
scoreboard players set @a[tag=!brRegenCheck] brRegen 5

# 通过
execute if score $skill_heal debug matches 1 run effect give @a[tag=brRegenCheck] instant_health 1 3 true
scoreboard players remove @a[tag=brRegenCheck] brRegen 1
execute as @a[scores={brRegen=4}] at @s run playsound block.note_block.cow_bell player @s ~ ~ ~ 0.2 1.3
execute as @a[scores={brRegen=3}] at @s run playsound block.note_block.cow_bell player @s ~ ~ ~ 0.2 1
execute as @a[scores={brRegen=2}] at @s run playsound block.note_block.cow_bell player @s ~ ~ ~ 0.2 0.5
execute as @a[scores={brRegen=1}] at @s run playsound block.note_block.cow_bell player @s ~ ~ ~ 0.2 0.75
# 实际触发
execute as @a[scores={brRegen=..0}] at @s run function modules:regen/trigger

# 呼吸回血提示
tag @a[scores={brRegen=4}] remove tip_1_regen
scoreboard players add @a[scores={brRegen=1}] tip_1_regen 1
execute as @a[scores={state=2..4,mino_forgive_timer=1,hp=..12,brRegen=5,tip_1_regen=..1},nbt=!{ActiveEffects:[{Id:31b}]}] run tag @s add tip_1_regen
execute as @a[scores={state=2..4,mino_forgive_timer=-40,hp=..12,brRegen=5,tip_1_regen=..10}] run tag @s add tip_1_regen
