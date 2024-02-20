playsound block.note_block.bell player @s
tellraw @s [{"text":"\n⭐盔甲架放置步骤：","color":"gold"},"\n1.在合适的转向放置盔甲架\n2.以【钓竿副手、锭主手】来修改盔甲架姿势\n3.注意",{"text": "查看背包","underlined": true},"才能拿取道具，下蹲时反向旋转\n4.操作的盔甲架会发光，范围为 3 格\n5.放置好后使用 ",{"text": "点我","color": "yellow","underlined": true,"clickEvent": {"action":"suggest_command","value": "/data merge entity @e[limit=1,sort=nearest,distance=..3,type=armor_stand] {Marker:1b,Invulnerable:1b}"}}," 来防止被操作与破坏\n6.",{"text": "点我","color": "yellow","underlined": true,"clickEvent": {"action":"suggest_command","value": "/item replace entity @e[limit=1,sort=nearest,distance=..3,type=armor_stand] weapon.offhand from entity @s weapon.offhand"}}," 来将自己的副手物品放在盔甲架上副手\n7.要撤销放置，将第 5 步的1b改为0b，然后破坏\n8.盔甲纹饰与染色皮革联系JK或提前使用快捷栏保存\n9.每次同时仅限一人使用\n10.看懂了上面的所有步骤还不懂的再问\n"]

item replace entity @s hotbar.0 with carrot_on_a_stick{stand_pose:["LeftArm"],display:{Name:'{"text": "左臂（细调）","color": "yellow","italic": false}',Lore:['{"text":"副手","italic": false,"color":"white"}']}}
item replace entity @s hotbar.1 with carrot_on_a_stick{stand_pose:["RightArm"],display:{Name:'{"text": "右臂（细调）","color": "green","italic": false}',Lore:['{"text":"副手","italic": false,"color":"white"}']}}
item replace entity @s hotbar.2 with carrot_on_a_stick{stand_pose:["LeftLeg"],display:{Name:'{"text": "左腿（细调）","color": "yellow","italic": false}',Lore:['{"text":"副手","italic": false,"color":"white"}']}}
item replace entity @s hotbar.3 with carrot_on_a_stick{stand_pose:["RightLeg"],display:{Name:'{"text": "右腿（细调）","color": "green","italic": false}',Lore:['{"text":"副手","italic": false,"color":"white"}']}}
item replace entity @s hotbar.4 with carrot_on_a_stick{stand_pose:["Head"],display:{Name:'{"text": "头（细调）","color": "yellow","italic": false}',Lore:['{"text":"副手","italic": false,"color":"white"}']}}
item replace entity @s hotbar.5 with carrot_on_a_stick{stand_pose:["Body"],display:{Name:'{"text": "身（细调）","color": "green","italic": false}',Lore:['{"text":"副手","italic": false,"color":"white"}']}}
item replace entity @s hotbar.6 with armor_stand

item replace entity @s container.27 with carrot_on_a_stick{stand_pose:["LeftArm10"],display:{Name:'{"text": "左臂（粗调）","color": "yellow","italic": false}',Lore:['{"text":"副手","italic": false,"color":"white"}']}}
item replace entity @s container.28 with carrot_on_a_stick{stand_pose:["RightArm10"],display:{Name:'{"text": "右臂（粗调）","color": "green","italic": false}',Lore:['{"text":"副手","italic": false,"color":"white"}']}}
item replace entity @s container.29 with carrot_on_a_stick{stand_pose:["LeftLeg10"],display:{Name:'{"text": "左腿（粗调）","color": "yellow","italic": false}',Lore:['{"text":"副手","italic": false,"color":"white"}']}}
item replace entity @s container.30 with carrot_on_a_stick{stand_pose:["RightLeg10"],display:{Name:'{"text": "右腿（粗调）","color": "green","italic": false}',Lore:['{"text":"副手","italic": false,"color":"white"}']}}
item replace entity @s container.31 with carrot_on_a_stick{stand_pose:["Head10"],display:{Name:'{"text": "头（粗调）","color": "yellow","italic": false}',Lore:['{"text":"副手","italic": false,"color":"white"}']}}
item replace entity @s container.32 with carrot_on_a_stick{stand_pose:["Body10"],display:{Name:'{"text": "身（粗调）","color": "green","italic": false}',Lore:['{"text":"副手","italic": false,"color":"white"}']}}

item replace entity @s container.33 with copper_ingot{stand_pose:["012"],display:{Name:'{"text": "0","color": "yellow","italic": false}',Lore:['{"text":"主手，潜行时反向","italic": false,"color":"white"}']}}
item replace entity @s container.34 with iron_ingot{stand_pose:["012"],display:{Name:'{"text": "1","color": "green","italic": false}',Lore:['{"text":"主手，潜行时反向","italic": false,"color":"white"}']}}
item replace entity @s container.35 with gold_ingot{stand_pose:["012"],display:{Name:'{"text": "2","color": "yellow","italic": false}',Lore:['{"text":"主手，潜行时反向","italic": false,"color":"white"}']}}