# 轮换
scoreboard players add @s 2_tip 1
scoreboard players set @s[scores={2_tip=21..}] 2_tip 2

# 显示提示
tellraw @s[scores={2_tip=1}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"你手持的物品不会隐形！不要拿着镰刀到处跑！\n"]
tellraw @s[scores={2_tip=2}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"如果被箭矢射中，箭也会暴露你。你应该按 [",{"keybind":"key.inventory"},"] 检查是否插着箭。\n"]
tellraw @s[scores={2_tip=3}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"在跳跃的下落期间攻击会触发暴击，造成 1.5 倍伤害！\n"]
tellraw @s[scores={2_tip=4}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"在白昼，暗影的技能冷却时间会明显变长。\n"]
tellraw @s[scores={2_tip=5}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"不要站在两个人的正中间看戏，这是血的教训。\n"]
tellraw @s[scores={2_tip=6}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"小心游侠的光焰箭！它会让你显形，并且大大降低你的攻击力！\n"]
tellraw @s[scores={2_tip=7}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"脚步声和疾跑时的扬尘也会让敌人警觉！\n"]
tellraw @s[scores={2_tip=8}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"如果找不到敌人，那可能全都在隐身……今天的街道真是安静呢。\n"]
tellraw @s[scores={2_tip=9}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"暗影的长期作战能力不佳。如果一击不成，不妨先行撤退。\n"]
tellraw @s[scores={2_tip=10}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"其实在 MC 原版，下界合金锄的攻击能力与拳头一模一样……\n"]
tellraw @s[scores={2_tip=11}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"你可以连续进行两次灌注，其生效次数会叠加。\n"]
tellraw @s[scores={2_tip=12}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"即使大家知道镰刀不会隐形，也总有人在隐身时拿着镰刀跑。\n"]
tellraw @s[scores={2_tip=13}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"用暗影精髓传送时摔落速度会被重置。这可不是 Portal。\n"]
tellraw @s[scores={2_tip=14}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"如果复活后身上还插着箭，可以重新进出一次服务器……\n"]
tellraw @s[scores={2_tip=15}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"当你觉得只有你在盯着某人时，其他人可能也是这么想的。\n"]
tellraw @s[scores={2_tip=16}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"如果敌人足够敏锐，甚至能借助隐身的效果粒子发现你……\n"]
tellraw @s[scores={2_tip=17}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"在围观大家打架的时候，请自备瓜子。\n"]
tellraw @s[scores={2_tip=18}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"减少疾跑，也不要静止不动，这样敌人才更难发现你的痕迹。\n"]
tellraw @s[scores={2_tip=19}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"在不慎坠崖时使用暗影精髓，能避免受到摔落伤害！\n"]
tellraw @s[scores={2_tip=20}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"若被怪物发现，即使进入隐身也会被继续追杀。太不合理了。\n"]
