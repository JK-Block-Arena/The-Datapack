# 重复职业
tag @s remove match_same_class
execute if score @s[team=red] class = @r[team=red,scores={state=2}] class run tag @s add match_same_class
execute if score @s[team=blue] class = @r[team=blue,scores={state=2}] class run tag @s add match_same_class
execute if score @s[team=green] class = @r[team=green,scores={state=2}] class run tag @s add match_same_class
execute if score @s[team=yellow] class = @r[team=yellow,scores={state=2}] class run tag @s add match_same_class
scoreboard players set @s[tag=match_same_class] respawn_time 20
title @s[tag=match_same_class] subtitle {"text": "请切换职业！","color": "green"}
title @s[tag=!match_same_class] subtitle ""
scoreboard players remove @s[tag=!match_same_class] respawn_time 1