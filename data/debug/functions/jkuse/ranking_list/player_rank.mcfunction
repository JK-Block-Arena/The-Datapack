scoreboard players add #p_r mem 1
playsound block.note_block.bell player @s
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[玩家生涯排行]","color":"green","clickEvent":{"action":"run_command","value":"/function debug:jkuse/ranking_list/player_rank"},"hoverEvent":{"action":"show_text","value":"下个排行榜"}}
execute if score #p_r mem matches 0 run tellraw @s {"text":"\n\n *玩家生涯计分板到此为止，往后为循环。\n","color":"aqua"}
execute if score #p_r mem matches 0 run scoreboard objectives setdisplay sidebar.team.light_purple
execute if score #p_r mem matches 1 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerRound
execute if score #p_r mem matches 2 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerKill
execute if score #p_r mem matches 3 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerDeath
execute if score #p_r mem matches 4 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerDeathReal
execute if score #p_r mem matches 5 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerCombo2
execute if score #p_r mem matches 6 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerCombo3
execute if score #p_r mem matches 7 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerCombo4
execute if score #p_r mem matches 8 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerCombo5
execute if score #p_r mem matches 9 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerCombo6
execute if score #p_r mem matches 10 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerCombo7
execute if score #p_r mem matches 11 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerCombo_much
execute if score #p_r mem matches 12 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill1
execute if score #p_r mem matches 13 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill2
execute if score #p_r mem matches 14 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill3
execute if score #p_r mem matches 15 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill4
execute if score #p_r mem matches 16 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill5
execute if score #p_r mem matches 17 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill6
execute if score #p_r mem matches 18 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill7
execute if score #p_r mem matches 19 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill8
execute if score #p_r mem matches 20 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill9
execute if score #p_r mem matches 21 run scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill10
execute if score #p_r mem matches 21.. run scoreboard players set #p_r mem -1