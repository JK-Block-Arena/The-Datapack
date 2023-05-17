kill @e[tag=map_name]
kill @e[tag=map_author]
execute if score $map mem matches 1 run summon marker 0 0.1 0 {CustomName:'"村庄"',Tags:["map_name"]}
execute if score $map mem matches 2 run summon marker 0 0.1 0 {CustomName:'"冰树"',Tags:["map_name"]}
execute if score $map mem matches 3 run summon marker 0 0.1 0 {CustomName:'"沙滩"',Tags:["map_name"]}
execute if score $map mem matches 4 run summon marker 0 0.1 0 {CustomName:'"瀑布"',Tags:["map_name"]}
execute if score $map mem matches 5 run summon marker 0 0.1 0 {CustomName:'"丛林"',Tags:["map_name"]}
execute if score $map mem matches 6 run summon marker 0 0.1 0 {CustomName:'"古堡"',Tags:["map_name"]}
execute if score $map mem matches 7 run summon marker 0 0.1 0 {CustomName:'"商店"',Tags:["map_name"]}
execute if score $map mem matches 8 run summon marker 0 0.1 0 {CustomName:'"舞台"',Tags:["map_name"]}
execute if score $map mem matches 9 run summon marker 0 0.1 0 {CustomName:'"矿洞"',Tags:["map_name"]}
execute if score $map mem matches 100 run summon marker 0 0.1 0 {CustomName:'"玄素（活动图）"',Tags:["map_name"]}

execute if score $map mem matches 1..2 run summon marker 0 0.1 0 {CustomName:'"龙猫建筑团"',Tags:["map_author"]}
execute if score $map mem matches 3 run summon marker 0 0.1 0 {CustomName:'"JK服玩家们"',Tags:["map_author"]}
execute if score $map mem matches 4 run summon marker 0 0.1 0 {CustomName:'"俩3094"',Tags:["map_author"]}
execute if score $map mem matches 5 run summon marker 0 0.1 0 {CustomName:'"Joseph3094"',Tags:["map_author"]}
execute if score $map mem matches 6 run summon marker 0 0.1 0 {CustomName:'"龙猫建筑团"',Tags:["map_author"]}
execute if score $map mem matches 7..9 run summon marker 0 0.1 0 {CustomName:'"Joseph3094"',Tags:["map_author"]}
execute if score $map mem matches 100 run summon marker 0 0.1 0 {CustomName:'"龙猫建筑团"',Tags:["map_author"]}

bossbar set bossbar:white name ["",{"text":"✧ 当前地图 ✧  ", "color":"gold"},{"selector":"@e[tag=map_name]"},{"text":"  ♥ 作者 ♥  ", "color":"gold"},{"selector":"@e[tag=map_author]"}]
bossbar set bossbar:red name ["",{"text":"✧ 当前地图 ✧  ", "color":"red"},{"selector":"@e[tag=map_name]"},{"text":"  ♥ 作者 ♥  ", "color":"red"},{"selector":"@e[tag=map_author]"}]
bossbar set bossbar:blue name ["",{"text":"✧ 当前地图 ✧  ", "color":"aqua"},{"selector":"@e[tag=map_name]"},{"text":"  ♥ 作者 ♥  ", "color":"aqua"},{"selector":"@e[tag=map_author]"}]
bossbar set bossbar:green name ["",{"text":"✧ 当前地图 ✧  ", "color":"green"},{"selector":"@e[tag=map_name]"},{"text":"  ♥ 作者 ♥  ", "color":"green"},{"selector":"@e[tag=map_author]"}]
bossbar set bossbar:yellow name ["",{"text":"✧ 当前地图 ✧  ", "color":"yellow"},{"selector":"@e[tag=map_name]"},{"text":"  ♥ 作者 ♥  ", "color":"yellow"},{"selector":"@e[tag=map_author]"}]
