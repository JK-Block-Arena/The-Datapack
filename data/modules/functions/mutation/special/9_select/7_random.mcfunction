## 就踩方块
execute store result score #random mem run random value 1..4
scoreboard players operation #9_select_7 mem = #random mem
# 村庄
execute if score $map mem matches 1 if score #9_select_7 mem matches 1 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.lily_pad","color":"yellow"}'}
execute if score $map mem matches 1 if score #9_select_7 mem matches 2 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.oak_log","color":"yellow"}'}
execute if score $map mem matches 1 if score #9_select_7 mem matches 3 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.melon","color":"yellow"}'}
execute if score $map mem matches 1 if score #9_select_7 mem matches 4 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.dirt_path","color":"yellow"}'}
# 冰树
execute if score $map mem matches 2 if score #9_select_7 mem matches 1 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.blue_ice","color":"yellow"}'}
execute if score $map mem matches 2 if score #9_select_7 mem matches 2 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.dark_oak_slab","color":"yellow"}'}
execute if score $map mem matches 2 if score #9_select_7 mem matches 3 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.stripped_oak_wood","color":"yellow"}'}
execute if score $map mem matches 2 if score #9_select_7 mem matches 4 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.snow","color":"yellow"}'}
# 瀑布
execute if score $map mem matches 4 if score #9_select_7 mem matches 1 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.flowering_azalea_leaves","color":"yellow"}'}
execute if score $map mem matches 4 if score #9_select_7 mem matches 2 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.lantern","color":"yellow"}'}
execute if score $map mem matches 4 if score #9_select_7 mem matches 3 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.stone","color":"yellow"}'}
execute if score $map mem matches 4 if score #9_select_7 mem matches 4 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.big_dripleaf","color":"yellow"}'}
# 丛林
execute if score $map mem matches 5 if score #9_select_7 mem matches 1 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.jack_o_lantern","color":"yellow"}'}
execute if score $map mem matches 5 if score #9_select_7 mem matches 2 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.sandstone_slab","color":"yellow"}'}
execute if score $map mem matches 5 if score #9_select_7 mem matches 3 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.glass","color":"yellow"}'}
execute if score $map mem matches 5 if score #9_select_7 mem matches 4 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.jungle_leaves","color":"yellow"}'}
# 古堡
execute if score $map mem matches 6 if score #9_select_7 mem matches 1 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.hay_block","color":"yellow"}'}
execute if score $map mem matches 6 if score #9_select_7 mem matches 2 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.cobblestone_slab","color":"yellow"}'}
execute if score $map mem matches 6 if score #9_select_7 mem matches 3 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.stripped_dark_oak_wood","color":"yellow"}'}
execute if score $map mem matches 6 if score #9_select_7 mem matches 4 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.oak_leaves","color":"yellow"}'}
# 商店
execute if score $map mem matches 7 if score #9_select_7 mem matches 1 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.grass_block","color":"yellow"}'}
execute if score $map mem matches 7 if score #9_select_7 mem matches 2 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.netherite_block","color":"yellow"}'}
execute if score $map mem matches 7 if score #9_select_7 mem matches 3 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.snow_block","color":"yellow"}'}
execute if score $map mem matches 7 if score #9_select_7 mem matches 4 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.blue_glazed_terracotta","color":"yellow"}'}
# 舞台
execute if score $map mem matches 8 if score #9_select_7 mem matches 1 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.deepslate_tile_slab","color":"yellow"}'}
execute if score $map mem matches 8 if score #9_select_7 mem matches 2 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.white_concrete","color":"yellow"}'}
execute if score $map mem matches 8 if score #9_select_7 mem matches 3 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.podzol","color":"yellow"}'}
execute if score $map mem matches 8 if score #9_select_7 mem matches 4 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.black_carpet","color":"yellow"}'}
# 矿洞
execute if score $map mem matches 9 if score #9_select_7 mem matches 1 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.blast_furnace","color":"yellow"}'}
execute if score $map mem matches 9 if score #9_select_7 mem matches 2 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.dripstone_block","color":"yellow"}'}
execute if score $map mem matches 9 if score #9_select_7 mem matches 3 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.blue_ice","color":"yellow"}'}
execute if score $map mem matches 9 if score #9_select_7 mem matches 4 run data merge entity @e[limit=1,tag=mutation_9_block] {CustomName:'{"translate":"block.minecraft.raw_gold_block","color":"yellow"}'}