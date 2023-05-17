tag @s add self
execute as @a if score @s player_id = @e[tag=self,limit=1] player_id run tag @s add projectile_owner
tag @s remove self
function modules:projectile/events/move
tag @a remove projectile_owner