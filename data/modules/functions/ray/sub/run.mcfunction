# 生成一条射线（请以发射者为调用者）

# 射线参数:
#  ray_distance: 射线最大距离（0.1 方块）
#  ray_speed: 射线移动速度（方块每秒）
#  ray_precise: 判断精度（1、2、4，代表每 0.1/0.2/0.4 方块判定一次）
#  ray_id: 射线种类 ID

# 射线 Tag:
#  infinte_hit：可以多次命中，而不是命中一次就停止（穿透）
#  hit_block: 可以命中方块
#  hit_friend: 可以命中队友
#  hit_enemy: 可以命中敌人
#  hit_minion: 可以命中召唤物

# 召唤射线
execute at @s anchored eyes run summon marker ^ ^ ^ {Tags:["ray","new_ray","summoned_ray"]}

# 记录角度
data modify entity @e[tag=summoned_ray,limit=1] Rotation set from entity @s Rotation

# 记录玩家 ID
scoreboard players operation @e[tag=summoned_ray,limit=1] statPlayerLevel = @s statPlayerLevel
scoreboard players operation @e[tag=summoned_ray,limit=1] player_id = @s player_id
scoreboard players operation @e[tag=summoned_ray,limit=1] team = @s team

# 去除初始化 Tag
tag @e[tag=summoned_ray] remove summoned_ray