playsound block.note_block.bell player @s
tellraw @s ["",{"text":"\n\n\n\n\n【玩家生涯排行】","color":"gold","bold": true},"    ",{"text": "[指令提示开]","color": "gray","clickEvent": {"action":"run_command","value": "/gamerule sendCommandFeedback true"}},"    ",{"text": "[指令提示关]","color": "gray","clickEvent": {"action":"run_command","value": "/gamerule sendCommandFeedback false"}},"\n\n全局：",{"text": "[循环]","color": "green","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerRound"}},"  ",{"text": "[击杀]","color": "green","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerKill"}},"  ",{"text": "[KD]","color": "green","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerKD"}},"  ",{"text": "[死亡]","color": "green","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerDeath"}},"  ",{"text": "[真死亡]","color": "green","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerDeathReal"}},"  ",{"text": "[关闭]","color": "white","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple"}},"\n\n连杀：",{"text": "[2]","color": "yellow","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerCombo2"}},"  ",{"text": "[3]","color": "yellow","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerCombo3"}},"  ",{"text": "[4]","color": "yellow","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerCombo4"}},"  ",{"text": "[5]","color": "yellow","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerCombo5"}},"  ",{"text": "[6]","color": "yellow","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerCombo6"}},"  ",{"text": "[7]","color": "yellow","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerCombo7"}},"  ",{"text": "[传奇]","color": "yellow","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerCombo_much"}},"\n\n职业：",{"text": "[1]","color": "blue","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill1"}},"  ",{"text": "[2]","color": "blue","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill2"}},"  ",{"text": "[3]","color": "blue","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill3"}},"  ",{"text": "[4]","color": "blue","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill4"}},"  ",{"text": "[5]","color": "blue","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill5"}},"  ",{"text": "[6]","color": "blue","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill6"}},"  ",{"text": "[7]","color": "blue","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill7"}},"  ",{"text": "[8]","color": "blue","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill8"}},"  ",{"text": "[9]","color": "blue","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill9"}},"  ",{"text": "[10]","color": "blue","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill10"}},"  ",{"text": "[11]","color": "blue","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar.team.light_purple statPlayerClassKill11"}},"\n"]