# 每 3 s 执行一次
schedule function modules:basic/events/sec3 3s replace

execute as @a[tag=7_healer,scores={class=7,state=2..4}] at @s run function class:7_nurse/healing
