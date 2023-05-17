summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["gold_random"],Duration:1}
execute store result score #gold_random mem run data get entity @e[tag=gold_random,limit=1] UUID[0]
kill @e[tag=gold_random]
scoreboard players operation #gold_random_max mem -= #gold_random_min mem
scoreboard players add #gold_random_max mem 1
scoreboard players operation #gold_random mem %= #gold_random_max mem
scoreboard players operation #gold_random mem += #gold_random_min mem
scoreboard players operation @e[tag=particle_gold] particle_gold = #gold_random mem