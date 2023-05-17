# 更新玩家的经验条（#xp mem，范围 0-1000；#level mem，范围 0-3）

# 计算实际显示的经验点数：在 38 级时满条为 182 点经验（完整经验条为 181 像素）
# 即为 x182, /1000
scoreboard players operation @s temp = #xp mem
scoreboard players set @s[scores={temp=1001..}] temp 1000
scoreboard players set @s[scores={temp=..-1}] temp 0
scoreboard players operation @s temp *= #182 mem
scoreboard players operation @s temp /= #1000 mem

# 三分到 0~60
xp set @s 38 levels
xp set @s[scores={temp=0..60}] 0 points
xp set @s[scores={temp=61..121}] 61 points
xp set @s[scores={temp=122..}] 122 points
scoreboard players operation @s temp %= #61 mem

# 四分到 0~15
xp add @s[scores={temp=16..31}] 16 points
xp add @s[scores={temp=32..47}] 32 points
xp add @s[scores={temp=48..}] 48 points
scoreboard players operation @s temp %= #16 mem

# 四分到 0~3
xp add @s[scores={temp=4..7}] 4 points
xp add @s[scores={temp=8..11}] 8 points
xp add @s[scores={temp=12..}] 12 points
scoreboard players operation @s temp %= #4 mem

# 最终添加
xp add @s[scores={temp=1}] 1 points
xp add @s[scores={temp=2}] 2 points
xp add @s[scores={temp=3}] 3 points

# 等级
scoreboard players operation @s temp = #level mem
xp set @s[scores={temp=0}] 0 levels
xp set @s[scores={temp=1}] 1 levels
xp set @s[scores={temp=2}] 2 levels
xp set @s[scores={temp=3}] 3 levels