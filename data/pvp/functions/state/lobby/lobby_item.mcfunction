kill @e[tag=lobby_item]

summon marker 37.5 12.0 3.5 {Tags:["lobby_item","particle_gold"]}
execute as @e[limit=1,tag=lobby_item,tag=particle_gold] at @s run tp @s ~ ~ ~ 0 90

summon item_display 8.5 237.0 -1.5 {Tags:["lobby_item"],item:{id:"grass_block",Count:1},billboard:"vertical",Glowing:1b,interpolation_duration:0,transformation:{scale:[0.6f,0.6f,0.6f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display 8.5 237.0 18.5 {Tags:["lobby_item"],item:{id:"iron_sword",Count:1},billboard:"vertical",Glowing:1b,interpolation_duration:0,transformation:{scale:[0.6f,0.6f,0.6f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

summon text_display 8.5 237.5 -1.5 {Tags:["lobby_item"],text:'"训练场"',background:0,billboard:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display 8.5 237.5 18.5 {Tags:["lobby_item"],text:'"竞技场"',background:0,billboard:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

summon text_display 8.5 237.5 8.5 {Tags:["lobby_item"],text:'{"text":"⚕ 魔改·方块竞技场 v2.10 ⚕","color":"gold","bold":true}',background:0,billboard:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display 8.5 237.0 8.5 {Tags:["lobby_item"],text:'["反馈交流群：",{"text":"756538722","color":"#7CFC00"}]',background:0,billboard:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display 8.5 236.5 8.5 {Tags:["lobby_item"],text:'["魔改服主：",{"text":"JK137","color":"#FFB6C1"}]',background:0,billboard:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

summon item_display 8.5 38.6 8.5 {Tags:["lobby_item"],item:{id:"player_head",Count:1,tag:{SkullOwner:"JK137"}},billboard:"fixed",interpolation_duration:20,transformation:{scale:[5f,5f,5f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[90f,0f]}

summon text_display 8.5 238.3 21.5 {Tags:["lobby_item","time"],text:'{"text":"时间","color":"#FFFDD0"}',background:0,billboard:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

#summon text_display 8.5 235.5 8.5 {Tags:["lobby_item"],text:'{"text":"本服有可选材质包！","color":"#FFFDD0"}',background:0,billboard:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

summon text_display 18.5 236.2 5.5 {Tags:["lobby_item"],text:'{"text":"更新日志","color":"#FFFDD0"}',background:0,billboard:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display 18.5 236.2 11.5 {Tags:["lobby_item"],text:'{"text":"服规","color":"#FFFDD0"}',background:0,billboard:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

summon text_display 16.8 236.2 16.8 {Tags:["lobby_item"],text:'[{"text":"体验","color":"white","underlined":true},{"text":"传奇","color":"#FF41E7"},{"text":"连杀","color":"gold"}]',background:0,billboard:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

summon text_display 3.5 236.2 18.5 {Tags:["lobby_item"],text:'{"text":"观战处","bold":true}',background:0,billboard:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

summon text_display 16.5 236.2 0.5 {Tags:["lobby_item"],text:'{"text":"查看排行榜","color":"#EEE8AA","underlined": true}',background:0,billboard:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

summon text_display 0.5 12.2 3.5 {Tags:["lobby_item"],text:'{"text":"1v1规则","color":"#FFFDD0"}',background:0,billboard:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}