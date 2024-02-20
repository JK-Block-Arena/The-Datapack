# 锁方块
execute as @a[nbt={SelectedItem: {tag: {lock: ["this"]}}}] at @s at @e[tag=lock,tag=pot,type=interaction,distance=..8] run particle wax_off ~ ~.5 ~ 0.1 0 0.1 1 1 normal @a[team=creator]
execute as @a[nbt={SelectedItem: {tag: {lock: ["this"]}}}] at @s at @e[tag=lock,tag=block,type=interaction,distance=..8] run particle end_rod ~ ~1.1 ~ 0.1 0 0.1 0.01 1 normal @a[team=creator]
execute at @e[tag=lock,tag=pot,type=marker] align xyz run summon interaction ~.5 ~ ~.5 {width:0.4f,height:0.4f,Tags:["lock","pot"]}
execute at @e[tag=lock,tag=block,type=marker] align xyz run summon interaction ~.5 ~-1 ~.5 {width:1.01f,height:1.01f,Tags:["lock","block"]}
execute at @e[tag=lock,tag=kill,type=marker] align xyz run kill @e[type=interaction,distance=..3]
kill @e[tag=lock,type=marker]