# 效果
tag @s add eye_tp_owner

execute as @s[team=green,tag=eye_tp_owner] unless entity @p[team=green,distance=8..200,tag=!eye_tp_owner] run function class:7_nurse/tele_eye/trigger_no
execute as @s[team=green,tag=eye_tp_owner] if entity @p[team=green,distance=8..200,tag=!eye_tp_owner] run function class:7_nurse/tele_eye/trigger_yes

execute as @s[team=yellow,tag=eye_tp_owner] unless entity @p[team=yellow,distance=8..200,tag=!eye_tp_owner] run function class:7_nurse/tele_eye/trigger_no
execute as @s[team=yellow,tag=eye_tp_owner] if entity @p[team=yellow,distance=8..200,tag=!eye_tp_owner] run function class:7_nurse/tele_eye/trigger_yes

execute as @s[team=red,tag=eye_tp_owner] unless entity @p[team=red,distance=8..200,tag=!eye_tp_owner] run function class:7_nurse/tele_eye/trigger_no
execute as @s[team=red,tag=eye_tp_owner] if entity @p[team=red,distance=8..200,tag=!eye_tp_owner] run function class:7_nurse/tele_eye/trigger_yes

execute as @s[team=blue,tag=eye_tp_owner] unless entity @p[team=blue,distance=8..200,tag=!eye_tp_owner] run function class:7_nurse/tele_eye/trigger_no
execute as @s[team=blue,tag=eye_tp_owner] if entity @p[team=blue,distance=8..200,tag=!eye_tp_owner] run function class:7_nurse/tele_eye/trigger_yes

execute as @s[team=lobby,tag=eye_tp_owner] unless entity @p[team=lobby,distance=8..60,tag=!eye_tp_owner] run function class:7_nurse/tele_eye/trigger_no
execute as @s[team=lobby,tag=eye_tp_owner] if entity @p[team=lobby,distance=8..60,tag=!eye_tp_owner] run function class:7_nurse/tele_eye/trigger_yes

tag @s remove eye_tp_owner

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory
