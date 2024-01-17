# 按照充能时长选择
scoreboard players set @s[scores={11_charm_time=1..20}] 11_charm_mode 1
scoreboard players set @s[scores={11_charm_time=21..40}] 11_charm_mode 2
scoreboard players set @s[scores={11_charm_time=41..60}] 11_charm_mode 3
scoreboard players set @s[scores={11_charm_time=61..80}] 11_charm_mode 4

scoreboard players set @s 11_charm_time 300
scoreboard players set @s 11_charm_skill 1
tag @s add refresh_inventory