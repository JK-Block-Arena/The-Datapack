advancement revoke @s only modules:mino1/0_6_wall

execute unless block ~ ~1 ~ #modules:air run scoreboard players set @s[scores={mino_type_now=0}] mino_type_now 00060

execute as @s[scores={class=8}] run tp @e[sort=nearest,limit=1,tag=8_pierce,distance=..3]
