tag @e[tag=enable_class,limit=3,sort=random,tag=!banned_class] add banned_class_1
tag @e[tag=enable_class] remove banned_class
tag @e[tag=banned_class_1] add banned_class
tag @e[tag=enable_class] remove banned_class_1
function pvp:class/update
title @a[scores={state=0..2}] times 10 80 10
title @a[scores={state=0..2}] title {"text":"本轮已重置职业！","color":"aqua"}
title @a[scores={state=0..2}] subtitle [{"text":"禁用职业>>","color":"gray"},{"selector":"@e[tag=enable_class,tag=banned_class]"}]