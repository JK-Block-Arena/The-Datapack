# 轮换
scoreboard players add @s 10_tip 1
scoreboard players set @s[scores={10_tip=11..}] 10_tip 1

# 显示提示
tellraw @s[scores={10_tip=1}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"召唤师的新机制，不仅使用冷却，还使用魔力值！\n"]
tellraw @s[scores={10_tip=2}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"召唤师只依靠魔法与生物攻击，近战只是顺手...\n"]
tellraw @s[scores={10_tip=3}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"猪猪发射器绝对不是从hyp的猪猪大炮得来的！\n"]
tellraw @s[scores={10_tip=4}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"上一个为你保家护航的铁傀儡还在起床战争。\n"]
tellraw @s[scores={10_tip=5}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"苦力怕伤害没法调，所以只能缩小伤害半径...\n"]
tellraw @s[scores={10_tip=6}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"如果苦力怕在爆炸前获得了药效，它会在爆炸后生成药水云。\n"]
tellraw @s[scores={10_tip=7}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"召唤师绝对是还需要更新的，你看那头盔和旗帜那么氵...\n"]
tellraw @s[scores={10_tip=8}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"“魔力值”在本数据包对应单词是mana，但mana一词起源于哪呢...\n"]