# 检测死亡接口
# 需要测试：
# tp @a[x=0,y=100,z=0,dx=10000,dy=1000000,dz=10000,scores={state=2}] ~ ~3 ~
# gamerule doImmediateRespawn false
execute as @a[scores={death=1..,hp=1..},tag=!mino_hurt] at @s run function modules:basic/on_player_death
