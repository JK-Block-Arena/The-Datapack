# 避免挨个手动添加
$scoreboard objectives add statPlayerClassDeath$(num1) dummy "玩家职业 $(num1) 死亡"
$scoreboard objectives add statPlayerClassKill$(num1) dummy "玩家职业 $(num1) 击杀"
$scoreboard objectives add Monthly_statPlayerClassKill$(num1) dummy "本月玩家职业 $(num1) 击杀"

$scoreboard players add $$(num1) statClassKill 0
$scoreboard players add $$(num1) statClassDeath 0
$scoreboard players add $$(num1) statClassSelectReal 0
$scoreboard players add $$(num1)->$$(num2) statClassCrossKill 0