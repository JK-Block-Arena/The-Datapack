$execute as @e[tag=class$(num),tag=banned_class] run scoreboard players set @s mem 1
$execute as @e[tag=class$(num),tag=!banned_class] run scoreboard players set @s mem 0
$tag @e[tag=class$(num),scores={mem=1}] remove banned_class
$tag @e[tag=class$(num),scores={mem=0}] add banned_class
function pvp:class/update
function debug