scoreboard players add @a portal_time 1
execute as @a at @s unless block ~0.3 ~0.5 ~0.3 nether_portal unless block ~-0.3 ~0.1 ~-0.3 nether_portal run scoreboard players set @s portal_time 0
execute as @a at @s unless entity @s[x=-20000,y=0,z=-20000,dx=40000,dy=255,dz=40000] run scoreboard players set @s portal_time 0
execute as @a[gamemode=adventure,scores={portal_time=10..}] at @s run function modules:portal/events/trigger