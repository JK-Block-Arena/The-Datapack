# 落地音效
execute store result score @s temp run data get entity @s Motion[1] 100
#execute as @s[scores={temp=-10..,fall_last=..-10}] at @s run tellraw @s {"score":{"name":"*","objective":"fall_last"}}
execute as @s[scores={temp=-10..,fall_last=..-65,state=2..3},type=player,gamemode=adventure] at @s run playsound entity.player.small_fall player @a ~ ~ ~ 1 1.1
scoreboard players operation @s fall_last = @s temp

# 获取下落距离
execute store result score @s temp run data get entity @s FallDistance 10
# 检测摔落并周期性重置
execute if score @s temp matches 26.. run function modules:anti_stuck/sub/reset_fall

# 结束
tag @s[nbt={FallDistance:0f,OnGround:1b}] remove fall_immune