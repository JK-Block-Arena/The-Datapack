execute if entity @e[tag=xmas_1,distance=..5] unless entity @s[scores={xmas_1=1}] run playsound entity.experience_orb.pickup player @s
execute if entity @e[tag=xmas_2,distance=..5] unless entity @s[scores={xmas_2=1}] run playsound entity.experience_orb.pickup player @s
execute if entity @e[tag=xmas_3,distance=..5] unless entity @s[scores={xmas_3=1}] run playsound entity.experience_orb.pickup player @s
execute if entity @e[tag=xmas_4,distance=..5] unless entity @s[scores={xmas_4=1}] run playsound entity.experience_orb.pickup player @s
execute if entity @e[tag=xmas_5,distance=..5] unless entity @s[scores={xmas_5=1}] run playsound entity.experience_orb.pickup player @s
execute if entity @e[tag=xmas_6,distance=..5] unless entity @s[scores={xmas_6=1}] run playsound entity.experience_orb.pickup player @s
execute if entity @e[tag=xmas_7,distance=..5] unless entity @s[scores={xmas_7=1}] run playsound entity.experience_orb.pickup player @s
execute if entity @e[tag=xmas_8,distance=..5] unless entity @s[scores={xmas_8=1}] run playsound entity.experience_orb.pickup player @s
execute if entity @e[tag=xmas_9,distance=..5] unless entity @s[scores={xmas_9=1}] run playsound entity.experience_orb.pickup player @s
execute if entity @e[tag=xmas_10,distance=..5] unless entity @s[scores={xmas_10=1}] run playsound entity.experience_orb.pickup player @s
execute if entity @e[tag=xmas_11,distance=..5] unless entity @s[scores={xmas_11=1}] run playsound entity.experience_orb.pickup player @s
execute if entity @e[tag=xmas_12,distance=..5] unless entity @s[scores={xmas_12=1}] run playsound entity.experience_orb.pickup player @s
execute if entity @e[tag=xmas_13,distance=..5] unless entity @s[scores={xmas_13=1}] run playsound entity.experience_orb.pickup player @s
execute if entity @e[tag=xmas_14,distance=..5] unless entity @s[scores={xmas_14=1}] run playsound entity.experience_orb.pickup player @s
execute if entity @e[tag=xmas_15,distance=..5] unless entity @s[scores={xmas_15=1}] run playsound entity.experience_orb.pickup player @s
#=============
execute if entity @e[tag=xmas_1,distance=..5] run scoreboard players set @s xmas_1 1
execute if entity @e[tag=xmas_2,distance=..5] run scoreboard players set @s xmas_2 1
execute if entity @e[tag=xmas_3,distance=..5] run scoreboard players set @s xmas_3 1
execute if entity @e[tag=xmas_4,distance=..5] run scoreboard players set @s xmas_4 1
execute if entity @e[tag=xmas_5,distance=..5] run scoreboard players set @s xmas_5 1
execute if entity @e[tag=xmas_6,distance=..5] run scoreboard players set @s xmas_6 1
execute if entity @e[tag=xmas_7,distance=..5] run scoreboard players set @s xmas_7 1
execute if entity @e[tag=xmas_8,distance=..5] run scoreboard players set @s xmas_8 1
execute if entity @e[tag=xmas_9,distance=..5] run scoreboard players set @s xmas_9 1
execute if entity @e[tag=xmas_10,distance=..5] run scoreboard players set @s xmas_10 1
execute if entity @e[tag=xmas_11,distance=..5] run scoreboard players set @s xmas_11 1
execute if entity @e[tag=xmas_12,distance=..5] run scoreboard players set @s xmas_12 1
execute if entity @e[tag=xmas_13,distance=..5] run scoreboard players set @s xmas_13 1
execute if entity @e[tag=xmas_14,distance=..5] run scoreboard players set @s xmas_14 1
execute if entity @e[tag=xmas_15,distance=..5] run scoreboard players set @s xmas_15 1
#=============
scoreboard players reset @s xmas_all
scoreboard players operation @s xmas_all += @s xmas_1
scoreboard players operation @s xmas_all += @s xmas_2
scoreboard players operation @s xmas_all += @s xmas_3
scoreboard players operation @s xmas_all += @s xmas_4
scoreboard players operation @s xmas_all += @s xmas_5
scoreboard players operation @s xmas_all += @s xmas_6
scoreboard players operation @s xmas_all += @s xmas_7
scoreboard players operation @s xmas_all += @s xmas_8
scoreboard players operation @s xmas_all += @s xmas_9
scoreboard players operation @s xmas_all += @s xmas_10
scoreboard players operation @s xmas_all += @s xmas_11
scoreboard players operation @s xmas_all += @s xmas_12
scoreboard players operation @s xmas_all += @s xmas_13
scoreboard players operation @s xmas_all += @s xmas_14
scoreboard players operation @s xmas_all += @s xmas_15
#=============
execute as @s[scores={xmas_all=..14}] if entity @e[tag=xmas_presents,distance=..5] run tellraw @s [{"text":" ❇  你收集到了一份圣诞礼物！","color":"green"},"(",{"score":{"name":"@s","objective":"xmas_all"},"color":"gold"},"/",{"text":"15","color":"red"},")"]
execute as @s[scores={xmas_all=15}] run function debug:jkuse/xmas/get_presents_all