# 更新时间
execute if score $daytime mem matches ..449 run data merge entity @s {text:'{"text":"黎明:白昼","color":"#87cefa","bold":true}'}
execute if score $daytime mem matches 450..4499 run data merge entity @s {text:'{"text":"上午:白昼","color":"#90ee90","bold":true}'}
execute if score $daytime mem matches 4500..7499 run data merge entity @s {text:'{"text":"晌午:白昼","color":"yellow","bold":true}'}
execute if score $daytime mem matches 7500..11999 run data merge entity @s {text:'{"text":"下午:白昼","color":"gold","bold":true}'}
execute if score $daytime mem matches 12000..12999 run data merge entity @s {text:'{"text":"傍晚:白昼","color":"#f28500","bold":true}'}
execute if score $daytime mem matches 13000..13799 run data merge entity @s {text:'{"text":"黄昏:夜晚","color":"#ff8c00","bold":true}'}
execute if score $daytime mem matches 13800..14999 run data merge entity @s {text:'{"text":"入夜:夜晚","color":"#9932cc","bold":true}'}
execute if score $daytime mem matches 15000..22199 run data merge entity @s {text:'{"text":"深夜:夜晚","color":"white","bold":true}'}
execute if score $daytime mem matches 22200..22999 run data merge entity @s {text:'{"text":"日出:夜晚","color":"#dda0dd","bold":true}'}
execute if score $daytime mem matches 23000.. run data merge entity @s {text:'{"text":"黎明:白昼","color":"#87cefa","bold":true}'}