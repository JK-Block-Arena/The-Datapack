#data merge entity @s {ItemRotation:0,Invulnerable:true,Invisible:true,Fixed:true,Silent:true}
scoreboard players add rc rick_count 1
execute as @e[x=8,y=319,z=8,distance=..3,type=minecraft:item_frame] store result entity @s Item.tag.map int 1 run scoreboard players get rc rick_count
execute if score rc rick_count matches 160.. run scoreboard players set rc rick_count 100