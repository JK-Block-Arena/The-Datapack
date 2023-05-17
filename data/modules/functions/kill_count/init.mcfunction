scoreboard objectives remove teamKill
scoreboard objectives add teamKill dummy "击杀数"
execute if score $info_hud debug matches 0 run scoreboard objectives setdisplay sidebar.team.red teamKill
execute if score $info_hud debug matches 0 run scoreboard objectives setdisplay sidebar.team.blue teamKill
execute if score $info_hud debug matches 0 run scoreboard objectives setdisplay sidebar.team.green teamKill
execute if score $info_hud debug matches 0 run scoreboard objectives setdisplay sidebar.team.yellow teamKill

scoreboard players set §c红队§r teamKill 0
scoreboard players set §9蓝队§r teamKill 0
scoreboard players set §a绿队§r teamKill 0
scoreboard players set §e黄队§r teamKill 0

scoreboard objectives remove killCombo
scoreboard objectives add killCombo dummy "连杀次数"
scoreboard objectives remove killComboReset
scoreboard objectives add killComboReset dummy "连杀次数清零"

bossbar add bossbar:white ""
bossbar set bossbar:white style notched_6
bossbar set bossbar:white max 6000
bossbar set bossbar:white value 0
bossbar set bossbar:white color white

bossbar add bossbar:red ""
bossbar set bossbar:red style notched_6
bossbar set bossbar:red max 6000
bossbar set bossbar:red value 0
bossbar set bossbar:red color red

bossbar add bossbar:blue ""
bossbar set bossbar:blue style notched_6
bossbar set bossbar:blue max 6000
bossbar set bossbar:blue value 0
bossbar set bossbar:blue color blue

bossbar add bossbar:green ""
bossbar set bossbar:green style notched_6
bossbar set bossbar:green max 6000
bossbar set bossbar:green value 0
bossbar set bossbar:green color green

bossbar add bossbar:yellow ""
bossbar set bossbar:yellow style notched_6
bossbar set bossbar:yellow max 6000
bossbar set bossbar:yellow value 0
bossbar set bossbar:yellow color yellow

bossbar add bossbar:red_v1 ""
bossbar set bossbar:red_v1 style notched_6
bossbar set bossbar:red_v1 max 6
bossbar set bossbar:red_v1 value 0
bossbar set bossbar:red_v1 color red

bossbar add bossbar:blue_v1 ""
bossbar set bossbar:blue_v1 style notched_6
bossbar set bossbar:blue_v1 max 6
bossbar set bossbar:blue_v1 value 0
bossbar set bossbar:blue_v1 color blue

function modules:update_bossbar