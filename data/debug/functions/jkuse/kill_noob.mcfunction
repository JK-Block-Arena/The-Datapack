execute as @p[scores={state=2},gamemode=adventure,distance=..5] at @s run tag @s add noob
tellraw @a [{"text":"自杀 ✒  ","color":"gray"},{"selector":"@p[tag=noob]"},{"text":" 菜死在密室中","color":"white"}]
kill @a[tag=noob]
tag @a[tag=noob] remove noob
