scoreboard players add #command_lvl3 mem 1
execute if score #command_lvl3 mem matches 2.. run scoreboard players reset #command_lvl3 mem
execute if score #command_lvl3 mem matches 1 run tellraw @s {"text": "\n※  已禁用涉及权限等级3的命令及相关玩法！\n下列是波及到的部分：\n突变-天堂制造\n","color": "gold"}
execute unless score #command_lvl3 mem matches 1 run tellraw @s {"text": "\n※  已启用涉及权限等级3的命令及相关玩法！\n下列是波及到的部分：\n突变-天堂制造\n","color": "aqua"}
playsound block.note_block.bell player @s