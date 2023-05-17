# 冲刺持续
scoreboard players remove @s[nbt={OnGround:1b}] 3_dash_last 1
execute as @s[scores={state=2..4,3_dash_last=0..1}] run function class:3_illager/dash/end
