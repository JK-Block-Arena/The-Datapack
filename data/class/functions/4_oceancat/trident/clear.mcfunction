# 清理残余三叉戟
tag @s add self
execute as @e[type=trident] if score @s player_uuid = @p[tag=self] player_uuid run kill @s
tag @s remove self