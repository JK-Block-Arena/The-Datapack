# 射线在未触发任何命中函数就被销毁的时候触发（包括在未命中时入水）
# as 射线
function modules:ray/events/ray_end

execute as @s[scores={ray_id=201}] if entity @a[tag=current_ray_owner,scores={state=2..4}] run function class:2_shadow/pearl/hit_nothing