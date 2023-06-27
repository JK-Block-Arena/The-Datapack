scoreboard players add $info_hud debug 1
execute if score $info_hud debug matches 3.. run scoreboard players set $info_hud debug 0

execute if score $info_hud debug matches 0 run scoreboard objectives setdisplay sidebar.team.red teamKill
execute if score $info_hud debug matches 0 run scoreboard objectives setdisplay sidebar.team.blue teamKill
execute if score $info_hud debug matches 0 run scoreboard objectives setdisplay sidebar.team.green teamKill
execute if score $info_hud debug matches 0 run scoreboard objectives setdisplay sidebar.team.yellow teamKill
execute if score $info_hud debug matches 1..2 run scoreboard objectives setdisplay sidebar
execute if score $info_hud debug matches 1..2 run scoreboard objectives setdisplay sidebar.team.white
execute if score $info_hud debug matches 1..2 run scoreboard objectives setdisplay sidebar.team.red
execute if score $info_hud debug matches 1..2 run scoreboard objectives setdisplay sidebar.team.blue
execute if score $info_hud debug matches 1..2 run scoreboard objectives setdisplay sidebar.team.green
execute if score $info_hud debug matches 1..2 run scoreboard objectives setdisplay sidebar.team.yellow

execute if score $info_hud debug matches 0..1 run bossbar set bossbar:white visible true
execute if score $info_hud debug matches 0..1 run bossbar set bossbar:red visible true
execute if score $info_hud debug matches 0..1 run bossbar set bossbar:blue visible true
execute if score $info_hud debug matches 0..1 run bossbar set bossbar:green visible true
execute if score $info_hud debug matches 0..1 run bossbar set bossbar:yellow visible true
execute if score $info_hud debug matches 0..1 run bossbar set bossbar:red_v1 visible true
execute if score $info_hud debug matches 0..1 run bossbar set bossbar:blue_v1 visible true
execute if score $info_hud debug matches 0..1 run bossbar set sp:white visible true
execute if score $info_hud debug matches 0..1 run bossbar set modules:mutation visible true

execute if score $info_hud debug matches 2 run bossbar set bossbar:white visible false
execute if score $info_hud debug matches 2 run bossbar set bossbar:red visible false
execute if score $info_hud debug matches 2 run bossbar set bossbar:blue visible false
execute if score $info_hud debug matches 2 run bossbar set bossbar:green visible false
execute if score $info_hud debug matches 2 run bossbar set bossbar:yellow visible false
execute if score $info_hud debug matches 2 run bossbar set bossbar:red_v1 visible false
execute if score $info_hud debug matches 2 run bossbar set bossbar:blue_v1 visible false
execute if score $info_hud debug matches 2 run bossbar set sp:white visible false
execute if score $info_hud debug matches 2 run bossbar set modules:mutation visible false

function debug
