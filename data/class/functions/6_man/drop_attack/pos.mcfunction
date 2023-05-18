# 固定位置及特效
execute as @e[limit=1,distance=.1..1.6,type=#modules:living] run function class:6_man/drop_attack/victim
particle sweep_attack
playsound entity.player.attack.sweep player @a[distance=..6]