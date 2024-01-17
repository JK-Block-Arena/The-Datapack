kill @e[tag=torso_dummy]
summon cow 1055.5 92.1 1071.5 {Tags:["torso_dummy"],NoAI:true,CustomNameVisible:true,Silent:true,Rotation:[90f,0f]}
attribute @e[limit=1,tag=torso_dummy] generic.max_health base set 100
data modify entity @e[limit=1,tag=torso_dummy] Health set value 100.0f