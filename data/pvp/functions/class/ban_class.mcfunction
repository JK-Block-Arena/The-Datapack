tag @e[tag=enable_class,limit=3,sort=random,tag=!banned_class] add banned_class_1
tag @e[tag=enable_class] remove banned_class
tag @e[tag=banned_class_1] add banned_class
tag @e[tag=enable_class] remove banned_class_1

data merge entity @e[tag=class1,tag=!banned_class,limit=1] {CustomName:'{"text":"游侠","color":"green"}'}
data merge entity @e[tag=class2,tag=!banned_class,limit=1] {CustomName:'{"text":"暗影","color":"green"}'}
data merge entity @e[tag=class3,tag=!banned_class,limit=1] {CustomName:'{"text":"突袭者","color":"green"}'}
data merge entity @e[tag=class4,tag=!banned_class,limit=1] {CustomName:'{"text":"海嗣","color":"green"}'}
data merge entity @e[tag=class5,tag=!banned_class,limit=1] {CustomName:'{"text":"耀骑士","color":"green"}'}
data merge entity @e[tag=class6,tag=!banned_class,limit=1] {CustomName:'{"text":"有用之人","color":"green"}'}
data merge entity @e[tag=class7,tag=!banned_class,limit=1] {CustomName:'{"text":"牧师","color":"green"}'}
data merge entity @e[tag=class8,tag=!banned_class,limit=1] {CustomName:'{"text":"夹子","color":"green"}'}
data merge entity @e[tag=class9,tag=!banned_class,limit=1] {CustomName:'{"text":"千机","color":"green"}'}
data merge entity @e[tag=class10,tag=!banned_class,limit=1] {CustomName:'{"text":"召唤师","color":"green"}'}

data merge entity @e[tag=class1,tag=banned_class,limit=1] {CustomName:'{"text":"游侠","color":"red"}'}
data merge entity @e[tag=class2,tag=banned_class,limit=1] {CustomName:'{"text":"暗影","color":"red"}'}
data merge entity @e[tag=class3,tag=banned_class,limit=1] {CustomName:'{"text":"突袭者","color":"red"}'}
data merge entity @e[tag=class4,tag=banned_class,limit=1] {CustomName:'{"text":"海嗣","color":"red"}'}
data merge entity @e[tag=class5,tag=banned_class,limit=1] {CustomName:'{"text":"耀骑士","color":"red"}'}
data merge entity @e[tag=class6,tag=banned_class,limit=1] {CustomName:'{"text":"有用之人","color":"red"}'}
data merge entity @e[tag=class7,tag=banned_class,limit=1] {CustomName:'{"text":"牧师","color":"red"}'}
data merge entity @e[tag=class8,tag=banned_class,limit=1] {CustomName:'{"text":"夹子","color":"red"}'}
data merge entity @e[tag=class9,tag=banned_class,limit=1] {CustomName:'{"text":"千机","color":"red"}'}
data merge entity @e[tag=class10,tag=banned_class,limit=1] {CustomName:'{"text":"召唤师","color":"red"}'}

title @a[scores={state=0..2}] times 10 80 10
title @a[scores={state=0..2}] title {"text":"本轮已重置职业！","color":"aqua"}
title @a[scores={state=0..2}] subtitle [{"text":"禁用职业>>","color":"gray"},{"selector":"@e[tag=enable_class,tag=banned_class]"}]