# 轮换
scoreboard players add @s 99_tip 1
scoreboard players set @s[scores={99_tip=9..}] 99_tip 1

# 显示提示
tellraw @s[scores={99_tip=1}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"本突变不会对你造成摔伤的。\n"]
tellraw @s[scores={99_tip=2}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"原来这个突变是CPU杀手（特指烟花很多），现在不是了。\n"]
tellraw @s[scores={99_tip=3}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"这么强的药效谁还需要位移技能啊。（战术后仰）\n"]
tellraw @s[scores={99_tip=4}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"由于这个突变的娱乐性质，死亡数是不会记录的。\n"]
tellraw @s[scores={99_tip=5}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"不要停下来！我要看到血流成河。\n"]