tag @s add refresh_inventory
scoreboard players reset @s throw

# 切换 detail 标签
tag @s remove detailed
tag @s[tag=detail] add detailed
tag @s remove detail
tag @s[tag=!detailed] add detail