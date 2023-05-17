# 轮换
scoreboard players add @s 3_tip_old 1
scoreboard players set @s[scores={3_tip_old=19..}] 3_tip_old 3

# 显示提示
tellraw @s[scores={3_tip_old=1}] ["\n",{"text":" ⚜ ","color":"light_purple"},{"text":" 武器冷却","color":"light_purple"},"\n     近战武器在攻击后需要冷却，冷却进度显示在准心下方。\n     如果狂点鼠标，攻击力会大幅降低！\n"]
tellraw @s[scores={3_tip_old=2}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"在冲刺期间，你受到的所有伤害都会大幅降低！\n"]
tellraw @s[scores={3_tip_old=3}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"如果角度恰当，劫掠兽可以被扔上房顶和树顶！\n"]
tellraw @s[scores={3_tip_old=4}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"你只能在着地时获得冲刺加速。双脚离地了，冲刺就嗝屁了。\n"]
tellraw @s[scores={3_tip_old=5}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"烟尘对敌方的视野遮蔽比友方更严重。请不要深究其中的原理。\n"]
tellraw @s[scores={3_tip_old=6}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"劫掠兽能用来拦截远程攻击，帮助你拉近距离。\n"]
tellraw @s[scores={3_tip_old=7}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"由于劫掠兽不打卫道士，所以它在训练场实际上毫无卵用。\n"]
tellraw @s[scores={3_tip_old=8}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"如果在冲刺快结束时起跳，就能保留冲刺的超高速直到落地！\n"]
tellraw @s[scores={3_tip_old=9}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"劫掠兽之卵在夜晚的冷却时间比白昼更长。\n"]
tellraw @s[scores={3_tip_old=10}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"劫掠兽可以用来触发海嗣的辉煌裂片！\n"]
tellraw @s[scores={3_tip_old=11}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"用劫掠兽堵死敌人的退路往往比放在面前效果更好。\n"]
tellraw @s[scores={3_tip_old=12}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"你可以用泥头车称呼这个职业和劫掠兽，确信。\n"]
tellraw @s[scores={3_tip_old=13}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"在你和队友需要静息治疗的时候，劫掠兽是可靠的保镖！\n"]
tellraw @s[scores={3_tip_old=14}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"劫掠兽不打劫掠兽。太可惜了。\n"]
tellraw @s[scores={3_tip_old=15}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"冲刺时，落水伤害和摔落伤害也会被大幅降低！\n"]
tellraw @s[scores={3_tip_old=16}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"在空中开始冲刺并不会让你变得更快，但至少能听个响。\n"]
tellraw @s[scores={3_tip_old=17}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"如果有游侠给正在天上飞的劫掠兽来一发冲击箭……\n"]
tellraw @s[scores={3_tip_old=18}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"你和队友可以看见烟尘中的敌人，而敌方则几乎看不穿烟尘……\n"]
