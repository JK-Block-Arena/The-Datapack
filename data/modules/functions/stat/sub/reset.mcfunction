scoreboard objectives remove statClassKill
scoreboard objectives remove statClassDeath
scoreboard objectives remove statClassSelectReal
scoreboard objectives remove statClassSelectPossible
scoreboard objectives remove statClassCrossKill
scoreboard objectives remove statClassDeathCycle
scoreboard objectives remove statClassSelectCycle
function modules:stat/init
tellraw @s "已重置本版本击杀与死亡数据！"