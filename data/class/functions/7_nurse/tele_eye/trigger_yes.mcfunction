playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 1 0.6
particle reverse_portal ~ ~0.8 ~ 0.2 0.6 0.2 0.02 50
scoreboard players remove @s 7_eye_st 1
tp @s[team=yellow] @r[distance=8..200,team=yellow,tag=!eye_tp_owner]
tp @s[team=red] @r[distance=8..200,team=red,tag=!eye_tp_owner]
tp @s[team=blue] @r[distance=8..200,team=blue,tag=!eye_tp_owner]
tp @s[team=green] @r[distance=8..200,team=green,tag=!eye_tp_owner]
tp @s[team=lobby] @r[distance=8..60,team=lobby,tag=!eye_tp_owner]
particle reverse_portal ~ ~0.8 ~ 0.2 0.6 0.2 0.02 50
