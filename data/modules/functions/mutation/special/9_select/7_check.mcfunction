## 就踩方块
# 村庄
execute if score $map mem matches 1 if score #9_select_7 mem matches 1 if block ~ ~ ~ lily_pad run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 1 if score #9_select_7 mem matches 2 if block ~ ~-1 ~ oak_log run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 1 if score #9_select_7 mem matches 3 if block ~ ~-1 ~ melon run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 1 if score #9_select_7 mem matches 4 if block ~ ~-1 ~ dirt_path run tag @s[tag=!9_select_success] add 9_select_success_1
# 冰树
execute if score $map mem matches 2 if score #9_select_7 mem matches 1 if block ~ ~-1 ~ blue_ice run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 2 if score #9_select_7 mem matches 2 if block ~ ~ ~ dark_oak_slab run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 2 if score #9_select_7 mem matches 3 if block ~ ~-1 ~ stripped_oak_wood run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 2 if score #9_select_7 mem matches 4 if block ~ ~-1 ~ snow run tag @s[tag=!9_select_success] add 9_select_success_1
# 瀑布
execute if score $map mem matches 4 if score #9_select_7 mem matches 1 if block ~ ~-1 ~ flowering_azalea_leaves run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 4 if score #9_select_7 mem matches 2 if block ~ ~ ~ lantern run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 4 if score #9_select_7 mem matches 3 if block ~ ~-1 ~ stone run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 4 if score #9_select_7 mem matches 4 if block ~ ~ ~ big_dripleaf run tag @s[tag=!9_select_success] add 9_select_success_1
# 丛林
execute if score $map mem matches 5 if score #9_select_7 mem matches 1 if block ~ ~-1 ~ jack_o_lantern run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 5 if score #9_select_7 mem matches 2 if block ~ ~ ~ sandstone_slab run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 5 if score #9_select_7 mem matches 3 if block ~ ~-1 ~ glass run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 5 if score #9_select_7 mem matches 4 if block ~ ~-1 ~ jungle_leaves run tag @s[tag=!9_select_success] add 9_select_success_1
# 古堡
execute if score $map mem matches 6 if score #9_select_7 mem matches 1 if block ~ ~-1 ~ hay_block run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 6 if score #9_select_7 mem matches 2 if block ~ ~ ~ cobblestone_slab run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 6 if score #9_select_7 mem matches 3 if block ~ ~-1 ~ stripped_dark_oak_wood run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 6 if score #9_select_7 mem matches 4 if block ~ ~-1 ~ oak_leaves run tag @s[tag=!9_select_success] add 9_select_success_1
# 商店
execute if score $map mem matches 7 if score #9_select_7 mem matches 1 if block ~ ~-1 ~ grass_block run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 7 if score #9_select_7 mem matches 2 if block ~ ~-1 ~ netherite_block run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 7 if score #9_select_7 mem matches 3 if block ~ ~-1 ~ snow_block run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 7 if score #9_select_7 mem matches 4 if block ~ ~-1 ~ blue_glazed_terracotta run tag @s[tag=!9_select_success] add 9_select_success_1
# 舞台
execute if score $map mem matches 8 if score #9_select_7 mem matches 1 if block ~ ~ ~ deepslate_tile_slab run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 8 if score #9_select_7 mem matches 2 if block ~ ~-1 ~ white_concrete run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 8 if score #9_select_7 mem matches 3 if block ~ ~-1 ~ podzol run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 8 if score #9_select_7 mem matches 4 if block ~ ~ ~ black_carpet run tag @s[tag=!9_select_success] add 9_select_success_1
# 矿洞
execute if score $map mem matches 9 if score #9_select_7 mem matches 1 if block ~ ~-1 ~ blast_furnace run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 9 if score #9_select_7 mem matches 2 if block ~ ~-1 ~ dripstone_block run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 9 if score #9_select_7 mem matches 3 if block ~ ~-1 ~ blue_ice run tag @s[tag=!9_select_success] add 9_select_success_1
execute if score $map mem matches 9 if score #9_select_7 mem matches 4 if block ~ ~-1 ~ raw_gold_block run tag @s[tag=!9_select_success] add 9_select_success_1

# 提示
tellraw @s[tag=9_select_success_1] {"text":" ❇  你踩到了！","color": "yellow"}
playsound entity.experience_orb.pickup player @s[tag=9_select_success_1]
tag @s[tag=9_select_success_1] add 9_select_success
tag @s[tag=9_select_success_1] remove 9_select_success_1