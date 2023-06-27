# 计算循环
scoreboard players add @s tip_cycle_head 1
scoreboard players add @s[scores={tip_cycle_head=11}] tip_cycle_times 1
scoreboard players set @s[scores={tip_cycle_head=11,tip_cycle_times=..2}] tip_cycle_head 1
scoreboard players set @s[scores={tip_cycle_head=11,tip_cycle_times=3..}] tip_cycle_head 3

tellraw @s[scores={tip_cycle_head=1}] ["\n",{"text":" ⚜ ","color":"light_purple"},{"text":" 公平游戏","color":"light_purple"},"\n     使用显示玩家或生物位置的 Mod 是妥妥的作弊行为！\n     血量显示等 Mod 最好也不要安装……\n"]
tellraw @s[scores={tip_cycle_head=2}] ["\n",{"text":" ⚜ ","color":"light_purple"},{"text":" 武器冷却","color":"light_purple"},"\n     近战武器在攻击后需要冷却，冷却进度显示在准心下方。\n     如果狂点鼠标，攻击力会大幅降低！\n"]
tellraw @s[scores={tip_cycle_head=3}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"先跳跃，然后在下落期间进行近战攻击，可以触发暴击！\n"]
tellraw @s[scores={tip_cycle_head=4}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"上方进度条的颜色即为你所在队伍的颜色！\n"]
tellraw @s[scores={tip_cycle_head=5}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"方块竞技场是有背景音乐的，把 “音乐” 音量拉满吧！\n"]
tellraw @s[scores={tip_cycle_head=6}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"部分技能的冷却时间会随着昼夜交替发生变化。\n"]
tellraw @s[scores={tip_cycle_head=7}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"在跳跃的下落期间，近战攻击会造成 1.5 倍暴击伤害！\n"]
tellraw @s[scores={tip_cycle_head=8}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"查看职业技能时，按 [",{"keybind":"key.drop"},"] 可以显示细节。\n"]
tellraw @s[scores={tip_cycle_head=9}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"不要关闭游戏的声音！音效中也蕴含着丰富的信息……\n"]
tellraw @s[scores={tip_cycle_head=10}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"在1.20，只要你的脚底接触到干草块，就能减轻摔伤！\n"]
