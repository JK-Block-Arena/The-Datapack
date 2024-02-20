data merge entity @s[tag=!stand_init] {NoBasePlate:1b,ShowArms:1b,Pose:{Body:[0f,1f,0f],Head:[0f,1f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
tag @s[tag=!stand_init] add stand_init
function debug:jkuse/stand_pose/2 {pose:LeftArm}
function debug:jkuse/stand_pose/2 {pose:RightArm}
function debug:jkuse/stand_pose/2 {pose:LeftLeg}
function debug:jkuse/stand_pose/2 {pose:RightLeg}
function debug:jkuse/stand_pose/2 {pose:Head}
function debug:jkuse/stand_pose/2 {pose:Body}