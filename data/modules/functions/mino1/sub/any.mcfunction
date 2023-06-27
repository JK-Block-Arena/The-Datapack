advancement revoke @s only modules:mino1/any

tag @s add mino_hurt

# 摔落伤害的特殊处理
scoreboard players set @s[scores={mino_type_now=00000},tag=4_fly] mino_type_now 04050
scoreboard players set @s[scores={mino_type_now=00000,mino_type_last=01010,mino_forgive_timer=5..}] mino_type_now 01011
scoreboard players set @s[scores={mino_type_now=00000},nbt={FallFlying:1b}] mino_type_now 09000

execute if score $mutation mem matches 8 run effect give @s[scores={state=2,team=1..4}] glowing 3