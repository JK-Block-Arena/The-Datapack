scoreboard players add #r_n mem 1

execute if score #r_n mem matches 0 run scoreboard objectives setdisplay sidebar.team.gray
execute if score #r_n mem matches 0 run tellraw @a[team=team_ranking] "\n为防数据竞技场，生涯数据已隐去，个人数据请于左上方查询。\n"

execute if score #r_n mem matches 1 run scoreboard objectives setdisplay sidebar.team.gray play_time
execute if score #r_n mem matches 1 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"在线时长","color":"aqua","bold":true},"：",{"score":{"name":"@s","objective":"play_time"},"color":"gold"}]
execute if score #r_n mem matches 1 run tellraw @a[team=team_ranking] [{"text":"你可以使用 ","color":"green"},{"text":"/trigger play_time_show","color":"gold"}," 在大厅随时查看在线时长。"]

execute if score #r_n mem matches 2 run scoreboard objectives setdisplay sidebar.team.gray Monthly_statPlayerRound
execute if score #r_n mem matches 2 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"总循环","color":"aqua","bold":true},"数：",{"score":{"name":"@s","objective":"Monthly_statPlayerRound"},"color":"gold"}]

execute if score #r_n mem matches 3 run scoreboard objectives setdisplay sidebar.team.gray Monthly_statPlayerKill
execute if score #r_n mem matches 3 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"总击杀","color":"aqua","bold":true},"数：",{"score":{"name":"@s","objective":"Monthly_statPlayerKill"},"color":"gold"}]

execute if score #r_n mem matches 4 run scoreboard objectives setdisplay sidebar.team.gray Monthly_statPlayerKD
execute if score #r_n mem matches 4 as @a[team=team_ranking,scores={Monthly_statPlayerKill=60..}] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"K/D","color":"aqua","bold":true},"值：",{"score":{"name":"@s","objective":"Monthly_statPlayerKD_1"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"@s","objective":"Monthly_statPlayerKD_2"},"color":"gold"}]
execute if score #r_n mem matches 4 as @a[team=team_ranking] run tellraw @s [{"text":"提示：","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"K/D","color":"aqua","bold":true},"值仅在",{"text":"本月","color":"red","bold":true},{"text":"总击杀","color":"aqua","bold":true},"数多于",{"text":" 60 ","color":"gold"},"才显示。"]

execute if score #r_n mem matches 5 run scoreboard objectives setdisplay sidebar.team.gray Monthly_statPlayerClassKill1
execute if score #r_n mem matches 5 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"游侠","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"Monthly_statPlayerClassKill1"},"color":"gold"}]

execute if score #r_n mem matches 6 run scoreboard objectives setdisplay sidebar.team.gray Monthly_statPlayerClassKill2
execute if score #r_n mem matches 6 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"暗影","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"Monthly_statPlayerClassKill2"},"color":"gold"}]

execute if score #r_n mem matches 7 run scoreboard objectives setdisplay sidebar.team.gray Monthly_statPlayerClassKill3
execute if score #r_n mem matches 7 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"突袭者","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"Monthly_statPlayerClassKill3"},"color":"gold"}]

execute if score #r_n mem matches 8 run scoreboard objectives setdisplay sidebar.team.gray Monthly_statPlayerClassKill4
execute if score #r_n mem matches 8 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"海嗣","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"Monthly_statPlayerClassKill4"},"color":"gold"}]

execute if score #r_n mem matches 9 run scoreboard objectives setdisplay sidebar.team.gray Monthly_statPlayerClassKill5
execute if score #r_n mem matches 9 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"耀骑士","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"Monthly_statPlayerClassKill5"},"color":"gold"}]

execute if score #r_n mem matches 10 run scoreboard objectives setdisplay sidebar.team.gray Monthly_statPlayerClassKill6
execute if score #r_n mem matches 10 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"有用之人","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"Monthly_statPlayerClassKill6"},"color":"gold"}]

execute if score #r_n mem matches 11 run scoreboard objectives setdisplay sidebar.team.gray Monthly_statPlayerClassKill7
execute if score #r_n mem matches 11 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"牧师","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"Monthly_statPlayerClassKill7"},"color":"gold"}]

execute if score #r_n mem matches 12 run scoreboard objectives setdisplay sidebar.team.gray Monthly_statPlayerClassKill8
execute if score #r_n mem matches 12 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"夹子","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"Monthly_statPlayerClassKill8"},"color":"gold"}]

execute if score #r_n mem matches 13 run scoreboard objectives setdisplay sidebar.team.gray Monthly_statPlayerClassKill9
execute if score #r_n mem matches 13 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"千机","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"Monthly_statPlayerClassKill9"},"color":"gold"}]

execute if score #r_n mem matches 14 run scoreboard objectives setdisplay sidebar.team.gray Monthly_statPlayerClassKill10
execute if score #r_n mem matches 14 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"召唤师","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"Monthly_statPlayerClassKill10"},"color":"gold"}]

#execute if score #r_n mem matches 14 run scoreboard objectives setdisplay sidebar.team.gray Monthly_statPlayerClassKill99
#execute if score #r_n mem matches 14 as @a[team=team_ranking] run tellraw @s [{"text":"你的","color":"green"},{"text":"本月","color":"red","bold":true},{"text":"一击必杀","color":"aqua","bold":true},"击杀数：",{"score":{"name":"@s","objective":"Monthly_statPlayerClassKill99"},"color":"gold"}]

execute if score #r_n mem matches 14.. run scoreboard players set #r_n mem -1