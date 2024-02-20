scoreboard players add #cherry mem 1
execute if score #cherry mem matches 2.. run scoreboard players reset #cherry mem
execute if score #cherry mem matches 1 run tellraw @s {"text": "\n※  已启用樱花粒子解锁！\n","color": "aqua"}
execute unless score #cherry mem matches 1 run tellraw @s {"text": "\n※  已禁用樱花粒子解锁！\n","color": "gold"}
playsound block.note_block.bell player @s