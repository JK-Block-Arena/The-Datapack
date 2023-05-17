advancement revoke @s only modules:mino1/murder

scoreboard players operation @a[tag=mino_victim] mino_source_now = @s player_id
execute as @s[scores={2_attack_stack=1..}] run scoreboard players set @a[tag=mino_victim,scores={mino_type_now=02010}] mino_type_now 02011
tag @a remove mino_victim