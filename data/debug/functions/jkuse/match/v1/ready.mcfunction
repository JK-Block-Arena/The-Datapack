execute as @s[tag=!match_ready] run tellraw @a [" ",{"selector":"@s"},{"text":" 准备好了！","color":"aqua","bold": true}]
tag @s add match_ready
playsound entity.villager.yes player @s