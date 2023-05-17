tag @s add projectile_land

tag @s add self
execute as @a if score @s player_id = @e[tag=self,limit=1] player_id run tag @s add projectile_owner
tag @s remove self
function modules:projectile/events/land
tag @a remove projectile_owner

# 灭火
data modify entity @s Fire set value -20