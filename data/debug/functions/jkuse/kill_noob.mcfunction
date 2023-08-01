tag @s add noob
tellraw @a [{"text":"自杀 ✒  ","color":"gray"},{"selector":"@p[tag=noob]"},{"text":" 自杀了","color":"white"}]
kill @a[tag=noob]
tag @a[tag=noob] remove noob