execute as @s[x=-24,y=233,z=-24,dx=72,dy=-10,dz=72] run particle end_rod ~ ~-0.1 ~ 0.2 0 0.2 0.04 2
effect give @s[x=-24,y=233,z=-24,dx=72,dy=-10,dz=72] minecraft:levitation 1 2 true
# 检查副手
execute as @s[nbt={Inventory:[{Slot:-106b}]}] at @s run function pvp:state/lobby/check_offhand
