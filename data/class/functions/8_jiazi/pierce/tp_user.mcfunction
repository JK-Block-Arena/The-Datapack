# 记录传送前位置
summon marker ~ ~ ~ {Tags:["8_pierce"]}
data modify entity @e[distance=..2,tag=8_pierce,sort=nearest,limit=1] Rotation set from entity @s Rotation
# 后退机制
execute anchored eyes run tp @s ^ ^ ^-1.2
function modules:anti_stuck/sub/player
effect give @s slow_falling 1 0