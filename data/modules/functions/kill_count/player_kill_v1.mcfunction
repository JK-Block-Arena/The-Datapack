# 触发击杀反馈
scoreboard players add @s killCombo 1
scoreboard players set @s[scores={statPlayerLevel=1}] killComboReset 55
scoreboard players set @s[scores={statPlayerLevel=2}] killComboReset 45
scoreboard players set @s[scores={statPlayerLevel=3}] killComboReset 40
scoreboard players set @s[scores={statPlayerLevel=4}] killComboReset 30
scoreboard players add @s[scores={class=2}] killComboReset 20
execute as @s[scores={state=2}] at @s run function modules:kill_count/combo_feedback

# ------------------------
#  重置条
# ------------------------

# 设置新值
execute store result bossbar bossbar:red_v1 value run scoreboard players get #process_v1 mem
execute store result bossbar bossbar:blue_v1 value run scoreboard players get #process_v1 mem