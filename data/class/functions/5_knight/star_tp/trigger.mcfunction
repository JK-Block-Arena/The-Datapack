tag @s add current_ray_owner

execute as @e[scores={ray_id=502}] at @s if score @s player_id = @a[tag=current_ray_owner,limit=1] player_id run function class:5_knight/star_tp/try_tp

tag @s remove current_ray_owner
tag @s add refresh_inventory