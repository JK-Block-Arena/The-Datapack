# 每 2 Tick 执行一次
clear @a[gamemode=creative,team=!creator]
execute as @a[gamemode=creative,team=!creator] run function debug:jkuse/2_book
effect clear @a[team=creator] glowing
effect clear @a[team=creator] blindness
effect clear @a[team=creator] weakness
execute as @a[team=creator,gamemode=adventure] run function debug:jkuse/1_back_spawn
execute as @a[team=creator,nbt={SelectedItem:{tag:{stand_pose:["012"]}}}] at @s run function debug:jkuse/stand_pose/0