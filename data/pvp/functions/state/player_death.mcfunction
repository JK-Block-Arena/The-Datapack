# 常规死亡
execute as @s[scores={state=0..2,tip_0_tutorial=7..}] run function pvp:state/respawn/enter
# 训练场
execute as @s[scores={state=3}] run function pvp:state/train/player_death