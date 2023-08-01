# 踩对应方块加入队伍
execute as @s[tag=!match_joined,team=!red] if block ~ ~-1 ~ red_concrete run tellraw @s {"text": "※  你已加入红队！","color": "red","bold": true}
execute as @s[tag=!match_joined,team=!blue] if block ~ ~-1 ~ blue_concrete run tellraw @s {"text": "※  你已加入蓝队！","color": "blue","bold": true}
execute as @s[tag=!match_joined,team=!green] if block ~ ~-1 ~ green_concrete run tellraw @s {"text": "※  你已加入绿队！","color": "green","bold": true}
execute as @s[tag=!match_joined,team=!yellow] if block ~ ~-1 ~ yellow_concrete run tellraw @s {"text": "※  你已加入黄队！","color": "yellow","bold": true}
execute as @s[tag=!match_joined,team=!red] if block ~ ~-1 ~ red_concrete run playsound entity.player.levelup player @s
execute as @s[tag=!match_joined,team=!blue] if block ~ ~-1 ~ blue_concrete run playsound entity.player.levelup player @s
execute as @s[tag=!match_joined,team=!green] if block ~ ~-1 ~ green_concrete run playsound entity.player.levelup player @s
execute as @s[tag=!match_joined,team=!yellow] if block ~ ~-1 ~ yellow_concrete run playsound entity.player.levelup player @s
execute if block ~ ~-1 ~ red_concrete run team join red
execute if block ~ ~-1 ~ blue_concrete run team join blue
execute if block ~ ~-1 ~ green_concrete run team join green
execute if block ~ ~-1 ~ yellow_concrete run team join yellow
execute if block ~ ~-1 ~ #modules:match run tag @s add match_joined
execute unless block ~ ~-1 ~ #modules:match run tag @s remove match_joined