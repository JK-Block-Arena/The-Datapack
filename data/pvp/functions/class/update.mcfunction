data merge entity @e[tag=class1,tag=!banned_class,limit=1] {CustomName:'{"text":"游侠","color":"green"}'}
data merge entity @e[tag=class2,tag=!banned_class,limit=1] {CustomName:'{"text":"暗影","color":"green"}'}
data merge entity @e[tag=class3,tag=!banned_class,limit=1] {CustomName:'{"text":"突袭者","color":"green"}'}
data merge entity @e[tag=class4,tag=!banned_class,limit=1] {CustomName:'{"text":"海嗣","color":"green"}'}
data merge entity @e[tag=class5,tag=!banned_class,limit=1] {CustomName:'{"text":"耀骑士","color":"green"}'}
data merge entity @e[tag=class6,tag=!banned_class,limit=1] {CustomName:'{"text":"有用","color":"green"}'}
data merge entity @e[tag=class7,tag=!banned_class,limit=1] {CustomName:'{"text":"牧师","color":"green"}'}
execute unless score #match_mode mem matches 1 run data merge entity @e[tag=class8,tag=!banned_class,limit=1] {CustomName:'{"text":"夹子","color":"green"}'}
execute if score #match_mode mem matches 1 run data merge entity @e[tag=class8,tag=!banned_class,limit=1] {CustomName:'{"text":"旧突袭","color":"green"}'}
data merge entity @e[tag=class9,tag=!banned_class,limit=1] {CustomName:'{"text":"千机","color":"green"}'}
data merge entity @e[tag=class10,tag=!banned_class,limit=1] {CustomName:'{"text":"召唤师","color":"green"}'}

data merge entity @e[tag=class1,tag=banned_class,limit=1] {CustomName:'{"text":"游侠","color":"red"}'}
data merge entity @e[tag=class2,tag=banned_class,limit=1] {CustomName:'{"text":"暗影","color":"red"}'}
data merge entity @e[tag=class3,tag=banned_class,limit=1] {CustomName:'{"text":"突袭者","color":"red"}'}
data merge entity @e[tag=class4,tag=banned_class,limit=1] {CustomName:'{"text":"海嗣","color":"red"}'}
data merge entity @e[tag=class5,tag=banned_class,limit=1] {CustomName:'{"text":"耀骑士","color":"red"}'}
data merge entity @e[tag=class6,tag=banned_class,limit=1] {CustomName:'{"text":"有用","color":"red"}'}
data merge entity @e[tag=class7,tag=banned_class,limit=1] {CustomName:'{"text":"牧师","color":"red"}'}
execute unless score #match_mode mem matches 1 run data merge entity @e[tag=class8,tag=banned_class,limit=1] {CustomName:'{"text":"夹子","color":"red"}'}
execute if score #match_mode mem matches 1 run data merge entity @e[tag=class8,tag=banned_class,limit=1] {CustomName:'{"text":"旧突袭","color":"red"}'}
data merge entity @e[tag=class9,tag=banned_class,limit=1] {CustomName:'{"text":"千机","color":"red"}'}
data merge entity @e[tag=class10,tag=banned_class,limit=1] {CustomName:'{"text":"召唤师","color":"red"}'}