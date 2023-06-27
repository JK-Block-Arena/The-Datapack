## 蛙跳训练
scoreboard players set @a[tag=9_select_player,scores={sneak_time=1..},nbt={OnGround:true}] select_jump 0
scoreboard players set @a[tag=9_select_player,scores={sneak_time=1..,select_jump=0},nbt=!{OnGround:true}] select_jump 1
execute as @a[tag=9_select_player,scores={select_jump=1}] run scoreboard players add @s select_jump_real 1
scoreboard players reset @a[tag=9_select_player,scores={select_jump=1}] select_jump
scoreboard players set @s[scores={sneak_time=1..}] sneak_time 0