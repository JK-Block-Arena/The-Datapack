# 射线击中实体或方块时触发
# as 射线
function modules:ray/events/ray_end

execute as @s[scores={ray_id=201}] if entity @a[tag=current_ray_owner,scores={state=2..3,death=0}] run function class:2_shadow/pearl/hit_anything