# 禁止捡起、在落地 10 秒后清理
data merge entity @s[type=arrow,tag=!projectile_checked] {pickup:0,life:1000,Tags:["projectile_checked"]}
data merge entity @s[type=trident,tag=!projectile_checked] {life:1000,Tags:["projectile_checked"]}

# 灭火
data modify entity @s[type=trident] Fire set value -20

# 检测落水
execute if block ~ ~ ~ #modules:bubble_and_harmful as @s[type=arrow] run function modules:projectile/on_water
execute if block ~ ~ ~ #modules:bubble_and_harmful run kill @s[type=potion]

# 检测新落地的箭
execute as @s[nbt={inGround:1b}] run function modules:projectile/on_land

# 触发移动事件
execute as @s[tag=!projectile_land] run function modules:projectile/on_move