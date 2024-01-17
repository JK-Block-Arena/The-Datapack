# 数值改变
execute store result score #mutation mem run bossbar get modules:mutation value
execute if score $mutation_speed debug matches 0 store result score #random mem run random value -100..125
execute if score $mutation_speed debug matches 1 store result score #random mem run random value -100..150
execute if score $mutation_speed debug matches 2 store result score #random mem run random value -100..225
scoreboard players operation #mutation mem += #random mem
execute if score #mutation mem matches ..0 run scoreboard players set #mutation mem 0
execute store result bossbar modules:mutation value run scoreboard players get #mutation mem

# 颜色
execute if score #mutation mem matches ..8899 run bossbar set modules:mutation color purple
execute if score #mutation mem matches ..8899 run bossbar set modules:mutation name {"text": "◈ 突变效果触发 ◈","color":"#7B00EC"}
execute if score #mutation mem matches 8900.. run bossbar set modules:mutation color red
execute if score #mutation mem matches 8900.. run bossbar set modules:mutation name {"text": "◈ 突变效果触发 ◈","color":"red"}

# 提示
execute if score #mutation mem matches 9200.. if score $mutation_warn mem matches 0 run playsound minecraft:block.note_block.chime player @a[scores={state=1..2,team=1..4}] 0 1000000 0 1000000 0.7
execute if score #mutation mem matches 9200.. if score $mutation_warn mem matches 0 run title @a[scores={state=1..2,team=1..4}] actionbar {"color":"gold","text":"⚠ 突变效果即将触发","bold": true}
execute if score #mutation mem matches 9200.. if score $mutation_warn mem matches 0 run scoreboard players set $mutation_warn mem 1

# 触发
execute if score #mutation mem matches 10000.. if score $mutation mem matches 2 as @a[scores={state=2,team=1..4}] at @s run function modules:mutation/special/2_trigger
execute if score #mutation mem matches 10000.. if score $mutation mem matches 7 run function modules:mutation/special/7_trigger
execute if score #mutation mem matches 10000.. if score $mutation mem matches 9 run function modules:mutation/special/9_trigger
execute if score #mutation mem matches 10000.. run bossbar set modules:mutation value 0
execute if score #mutation mem matches 10000.. run scoreboard players set $mutation_warn mem 0