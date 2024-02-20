# 计算循环
scoreboard players add @s tip_minor_head 1
scoreboard players set @s[scores={tip_minor_head=14}] tip_minor_head 1

# 显示提示
tellraw @s[scores={tip_minor_head=1}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"JK服管理员可以通过 切换为创造模式 获得命令书！\n"]
tellraw @s[scores={tip_minor_head=2}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"在JK服，你可以使用",{"text": "/trigger ignore_tips","underlined": true,"clickEvent": {"action":"suggest_command","value": "/trigger ignore_tips"}},"关掉小知识！\n"]
tellraw @s[scores={tip_minor_head=3}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"如果正在疾跑，或者武器冷却还远没有结束，则不会触发暴击。\n"]
tellraw @s[scores={tip_minor_head=4}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"不同职业有不同的偏好时段，尽量使用符合当前时段的职业吧！\n"]
tellraw @s[scores={tip_minor_head=5}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"受伤会进入 0.5 秒无敌时间，使你不再受相同或更低的伤害。\n"]
tellraw @s[scores={tip_minor_head=6}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"训练场里的卫道士几乎被削弱到了僵尸的地步……\n"]
tellraw @s[scores={tip_minor_head=7}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"在视频设置中把粒子打开吧，粒子能帮助你追踪敌人的踪迹！\n"]
tellraw @s[scores={tip_minor_head=8}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"小知识也可能是没用的小知识，例如这一条。\n"]
tellraw @s[scores={tip_minor_head=9}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"多看看技能的细节介绍吧！里面有很多有用的知识的！\n"]
tellraw @s[scores={tip_minor_head=10}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"在JK服，战场中退游戏会得到惩罚。\n"]
tellraw @s[scores={tip_minor_head=11}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"静息治疗的时间越长，生命恢复的速度越快。\n"]
tellraw @s[scores={tip_cycle_head=12}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"每一轮游戏结束后，系统会禁用其中的 3 个职业！\n"]
tellraw @s[scores={tip_minor_head=13}] ["",{"text":"\n ⚜  小知识： ","color":"light_purple"},"其实，小知识的显示频率是会逐渐降低的……\n"]