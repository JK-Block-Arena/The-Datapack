execute unless score @s death matches 1.. as @s[scores={tip_0_tutorial=0}] run function modules:tip/0_tutorial/1_go_start
execute unless score @s death matches 1.. as @s[scores={tip_0_tutorial=1},x=1050,y=100,z=1050,distance=500..] run function modules:tip/0_tutorial/1_go_start

scoreboard players add @s[scores={tip_0_tutorial=1},x=1038.5,y=90.5,z=1031.0,distance=..1.5] tip_0_jump 1
execute as @s[scores={tip_0_tutorial=1,tip_0_jump=5..}] run function modules:tip/0_tutorial/2_jump

execute as @s[scores={tip_0_tutorial=1..2},x=1040.0,y=92.0,z=1039.0,dx=7,dy=10,dz=4] run function modules:tip/0_tutorial/3_class_start
execute as @s[scores={tip_0_tutorial=3}] run function modules:tip/0_tutorial/3_class_hold

execute unless score @s death matches 1.. as @s[scores={tip_0_tutorial=3,class=1..}] run function modules:tip/0_tutorial/5_skill_start

scoreboard players add @s[scores={tip_0_tutorial=5},x=1043.5,y=88.5,z=1068.5,distance=..5] tip_0_skill 1
execute as @s[scores={tip_0_tutorial=5,tip_0_skill=8..}] run function modules:tip/0_tutorial/6_skill2

execute as @s[scores={tip_0_tutorial=5..6,state=0}] run function modules:tip/0_tutorial/7_start

execute as @s[scores={tip_0_tutorial=7,state=2}] run function modules:tip/0_tutorial/9_target
