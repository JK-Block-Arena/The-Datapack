# 昼夜检测
execute store result score $daytime mem run time query daytime
execute if score $is_day mem matches 0 unless score $daytime mem matches 13000..23000 run function modules:time_cycle/change
execute if score $is_day mem matches 1 if score $daytime mem matches 13000..23000 run function modules:time_cycle/change

# 停止默认 BGM
stopsound @a music music.creative
stopsound @a music music.game
stopsound @a music music.menu

# BGM 时间线
# 23000：进入白天
execute if score $daytime mem matches 23000..23015 run stopsound @a music minecraft:music.dragon
execute if score $daytime mem matches 23000..23015 run stopsound @a music minecraft:music.nether.nether_wastes
execute if score $daytime mem matches 23048..23063 run playsound minecraft:music_disc.cat music @a 0 -1000000 0 72000 1.1
execute if score $daytime mem matches 2487..2502 run playsound minecraft:music_disc.far music @a 0 -1000000 0 72000 1.2
execute if score $daytime mem matches 5335..5350 run playsound minecraft:music_disc.ward music @a 0 -1000000 0 72000 1.17
execute if score $daytime mem matches 9615..9630 run playsound minecraft:music_disc.far music @a 0 -1000000 0 72000 1.01
# 13000：进入夜晚
execute if score $daytime mem matches 13000..13015 run stopsound @a music minecraft:music.dragon
execute if score $daytime mem matches 13000..13015 run playsound minecraft:music.dragon music @a 0 1000000 0 1 0.6 1
# 13100 - 16041t
# 提前 20'，4'30，mean 4'10（+400t，5000t）
execute if score $daytime mem matches 12865..12880 run playsound minecraft:music.nether.nether_wastes music @a 0 1000000 0 1 1.7 0.12
# 16140 - 19806t
# 提前 15'，4'50，mean 4'35（+300t，5500t）
execute if score $daytime mem matches 15940..15955 run playsound minecraft:music.nether.crimson_forest music @a 0 1000000 0 1 1.5 0.11
# 19900 - 22841t
execute if score $daytime mem matches 19665..19680 run playsound minecraft:music.nether.nether_wastes music @a 0 1000000 0 1 1.7 0.12