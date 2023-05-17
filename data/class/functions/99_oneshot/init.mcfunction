scoreboard objectives add 99_tip dummy
# 计分板都写这了
scoreboard objectives remove 99_shot
scoreboard objectives add 99_shot minecraft.used:minecraft.crossbow "射箭检测"
scoreboard objectives remove 99_arrow
scoreboard objectives add 99_arrow dummy "载箭检测"
scoreboard objectives remove 99_trident_st
scoreboard objectives add 99_trident_st dummy "手中三叉戟检测"
scoreboard objectives remove 99_trident_use
scoreboard objectives add 99_trident_use minecraft.used:minecraft.trident "手中三叉戟使用"