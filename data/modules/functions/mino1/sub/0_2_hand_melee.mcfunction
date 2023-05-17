advancement revoke @s only modules:mino1/0_2_hand_melee

# 排除其他职业的物理攻击
scoreboard players set @s[scores={mino_type_now=..01000}] mino_type_now 00020

# 要求寻找攻击者
tag @s add mino_victim