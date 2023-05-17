# 入水、超出范围（屏障）检测
execute if block ~ ~ ~ #modules:harmful run tag @s add ray_end

# 方块碰撞判断
execute as @s[tag=hit_block,tag=!ray_end] unless block ~ ~ ~ #modules:air run function modules:ray/events/hit_block

# 玩家碰撞判断
execute unless entity @s[tag=!hit_enemy,tag=!hit_friend,tag=!ray_end] at @a[tag=!current_ray_owner,distance=..2] positioned ~-.5 ~ ~-.5 as @s[dx=0,dy=.8,dz=0] positioned ~.5 ~ ~.5 as @a[gamemode=adventure,tag=!current_ray_owner,distance=..0.0001] at @s run function modules:ray/on_hit_player

# 召唤物碰撞判断
execute as @s[tag=hit_minion,tag=!ray_end] at @e[type=#modules:living,type=!player,distance=..2] positioned ~-.5 ~ ~-.5 as @s[dx=0,dy=.8,dz=0] positioned ~.5 ~ ~.5 as @e[type=#modules:living,type=!player,distance=..0.0001] at @s run function modules:ray/on_hit_minion

# 调用移动中途接口
function modules:ray/events/ray_move

# 如果到达最大距离，则停止该射线
tag @s[scores={ray_distance=..0}] add ray_end
