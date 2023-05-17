# 轮换
scoreboard players add @s 5_tip 1
scoreboard players set @s[scores={5_tip=20..}] 5_tip 3

# 显示提示
tellraw @s[scores={5_tip=1}] ["\n",{"text":" ⚜ ","color":"light_purple"},{"text":" 武器冷却","color":"light_purple"},"\n     近战武器在攻击后需要冷却，冷却进度显示在准心下方。\n     如果狂点鼠标，攻击力会大幅降低！\n"]
tellraw @s[scores={5_tip=2}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"长按 [",{"keybind":"key.use","color":"white"},"] 可以用骑士塔盾进行防御。\n"]
tellraw @s[scores={5_tip=3}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"烁光新星的速度会逐渐变慢，远处的敌人会受到多次伤害！\n"]
tellraw @s[scores={5_tip=4}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"骑士塔盾在防御弓箭与长剑时非常有用，但它会被战斧破开！\n"]
tellraw @s[scores={5_tip=5}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"烁光新星可以伤害敌方召唤物，例如劫掠兽和辉煌裂片！\n"]
tellraw @s[scores={5_tip=6}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"灿焰长剑的属性其实与带火焰附加 I 的铁剑一样！\n"]
tellraw @s[scores={5_tip=7}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"烁光新星会使敌人发光，这可以用于探测隐身的敌人。\n"]
tellraw @s[scores={5_tip=8}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"骑士塔盾无法防御烁光新星、毒沼等非物理攻击的伤害。\n"]
tellraw @s[scores={5_tip=9}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"烁光新星的烁字不是砂砾的砾，更不是乐，它是闪烁的烁！\n"]
tellraw @s[scores={5_tip=10}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"烁光新星在白昼的冷却时间是夜晚的一半！\n"]
tellraw @s[scores={5_tip=11}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"烁光新星可以穿墙，站在树下向上发射就能将你传送到树顶！\n"]
tellraw @s[scores={5_tip=12}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"考虑到耀骑士在夜晚比较弱，所以不建议参与寻昼行动。\n"]
tellraw @s[scores={5_tip=13}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"与敌人的距离越远，烁光新星所能造成的伤害次数越多。\n"]
tellraw @s[scores={5_tip=14}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"持盾只能防御前方的攻击，绕到背后攻击就不会被盾格挡了！\n"]
tellraw @s[scores={5_tip=15}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"耀骑士自己并不会发光。\n"]
tellraw @s[scores={5_tip=16}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"如果用盾格挡了战斧，盾会被强制禁用一段时间。\n"]
tellraw @s[scores={5_tip=17}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"如果不慎坠崖，立即用烁光新星传送，或许能救你一命……\n"]
tellraw @s[scores={5_tip=18}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"不要低头发射烁光新星，如果飞进地底，可就没法传送了……\n"]
tellraw @s[scores={5_tip=19}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"耀骑士的技能设计灵感是由玄素提供的！\n"]
