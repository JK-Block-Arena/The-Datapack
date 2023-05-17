#scoreboard players enable @a password
tag @a remove pass

# 检测是否正确
execute unless score #on password matches 1 run tag @a add pass
execute if score #on password matches 1 as @a if score @s password = #target password run tag @s add pass

# 未通过处理
execute as @a[tag=!pass] at @s run function modules:password/nopass