kill @e[tag=enable_class]
summon marker 4 245 23 {CustomName:'{"text":"游侠","color":"green"}',Tags:["enable_class","class1"]}
summon marker 5 245 23 {CustomName:'{"text":"暗影","color":"green"}',Tags:["enable_class","class2"]}
summon marker 6 245 23 {CustomName:'{"text":"突袭者","color":"green"}',Tags:["enable_class","class3"]}
summon marker 7 245 23 {CustomName:'{"text":"海嗣","color":"green"}',Tags:["enable_class","class4"]}
summon marker 8 245 23 {CustomName:'{"text":"耀骑士","color":"green"}',Tags:["enable_class","class5"]}
summon marker 4 244 23 {CustomName:'{"text":"有用之人","color":"green"}',Tags:["enable_class","class6"]}
summon marker 5 244 23 {CustomName:'{"text":"牧师","color":"green"}',Tags:["enable_class","class7"]}
summon marker 6 244 23 {CustomName:'{"text":"夹子","color":"green"}',Tags:["enable_class","class8"]}
summon marker 7 244 23 {CustomName:'{"text":"千机","color":"green"}',Tags:["enable_class","class9"]}
summon marker 8 244 23 {CustomName:'{"text":"召唤师","color":"green"}',Tags:["enable_class","class10"]}

tag @e[tag=enable_class,limit=3,sort=random] add banned_class

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