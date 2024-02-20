scoreboard players add #r_n mem 1

execute if score #r_n mem matches 0 run scoreboard objectives setdisplay sidebar.team.gray
execute if score #r_n mem matches 0 run tellraw @a[team=team_ranking] ["\n为防数据竞技场，生涯数据已隐去，个人数据请于左上方查询。\n"]
#你现在可以 ",{"text":"/trigger disable_month","color":"yellow","underlined": true,"clickEvent": {"action":"run_command","value": "/trigger disable_month"}},{"text": " 禁用你的月计分板"}]

execute if score #r_n mem matches 1 run scoreboard objectives setdisplay sidebar.team.gray play_time
execute if score #r_n mem matches 1 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"在线时长","color":"aqua","bold":true},"：",{"score":{"name":"@s","objective":"play_time"},"color":"gold"}]
execute if score #r_n mem matches 1 run tellraw @a[team=team_ranking] [{"text":"你可以使用 ","color":"green"},{"text":"/trigger play_time_show","color":"yellow","underlined": true,"clickEvent": {"action":"run_command","value": "/trigger play_time_show"}}," 在大厅随时查看在线时长。"]

execute if score #r_n mem matches 2 run scoreboard objectives setdisplay sidebar.team.gray MstatPlayerRound
execute if score #r_n mem matches 2 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"总循环","color":"aqua","bold":true},"数：",{"score":{"name":"@s","objective":"MstatPlayerRound"},"color":"gold"}]

execute if score #r_n mem matches 3 run scoreboard objectives setdisplay sidebar.team.gray MstatPlayerKill
execute if score #r_n mem matches 3 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"总击杀","color":"aqua","bold":true},"数：",{"score":{"name":"@s","objective":"MstatPlayerKill"},"color":"gold"}]

execute if score #r_n mem matches 4 run scoreboard objectives setdisplay sidebar.team.gray MstatPlayerKD
execute if score #r_n mem matches 4 as @a[team=team_ranking,scores={MstatPlayerKill=60..}] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"K/D","color":"aqua","bold":true},"值 * 1k：",{"score":{"name":"@s","objective":"MstatPlayerKD"},"color":"gold"}]
execute if score #r_n mem matches 4 as @a[team=team_ranking] run tellraw @s [{"text":"提示：","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"K/D","color":"aqua","bold":true},"值仅在",{"text":"本月","color":"red","bold":true},{"text":"总击杀","color":"aqua","bold":true},"数多于",{"text":" 100 ","color":"gold"},"时显示。"]

execute if score #r_n mem matches 5 run scoreboard objectives setdisplay sidebar.team.gray MstatPlayerClassKill1
execute if score #r_n mem matches 5 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"游侠","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"MstatPlayerClassKill1"},"color":"gold"}]

execute if score #r_n mem matches 6 run scoreboard objectives setdisplay sidebar.team.gray MstatPlayerClassKill2
execute if score #r_n mem matches 6 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"暗影","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"MstatPlayerClassKill2"},"color":"gold"}]

execute if score #r_n mem matches 7 run scoreboard objectives setdisplay sidebar.team.gray MstatPlayerClassKill3
execute if score #r_n mem matches 7 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"突袭者","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"MstatPlayerClassKill3"},"color":"gold"}]

execute if score #r_n mem matches 8 run scoreboard objectives setdisplay sidebar.team.gray MstatPlayerClassKill4
execute if score #r_n mem matches 8 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"海嗣","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"MstatPlayerClassKill4"},"color":"gold"}]

execute if score #r_n mem matches 9 run scoreboard objectives setdisplay sidebar.team.gray MstatPlayerClassKill5
execute if score #r_n mem matches 9 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"耀骑士","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"MstatPlayerClassKill5"},"color":"gold"}]

execute if score #r_n mem matches 10 run scoreboard objectives setdisplay sidebar.team.gray MstatPlayerClassKill6
execute if score #r_n mem matches 10 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"有用之人","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"MstatPlayerClassKill6"},"color":"gold"}]

execute if score #r_n mem matches 11 run scoreboard objectives setdisplay sidebar.team.gray MstatPlayerClassKill7
execute if score #r_n mem matches 11 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"牧师","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"MstatPlayerClassKill7"},"color":"gold"}]

execute if score #r_n mem matches 12 run scoreboard objectives setdisplay sidebar.team.gray MstatPlayerClassKill8
execute if score #r_n mem matches 12 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"夹子","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"MstatPlayerClassKill8"},"color":"gold"}]

execute if score #r_n mem matches 13 run scoreboard objectives setdisplay sidebar.team.gray MstatPlayerClassKill9
execute if score #r_n mem matches 13 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"千机","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"MstatPlayerClassKill9"},"color":"gold"}]

execute if score #r_n mem matches 14 run scoreboard objectives setdisplay sidebar.team.gray MstatPlayerClassKill10
execute if score #r_n mem matches 14 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"召唤师","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"MstatPlayerClassKill10"},"color":"gold"}]

execute if score #r_n mem matches 15 run scoreboard objectives setdisplay sidebar.team.gray MstatPlayerClassKill11
execute if score #r_n mem matches 15 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"魔术师","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"MstatPlayerClassKill11"},"color":"gold"}]

execute if score #r_n mem matches 15.. run scoreboard players set #r_n mem -1