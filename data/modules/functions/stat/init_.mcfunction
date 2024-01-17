# 循环 122 = 11 * 11 + 1
function modules:stat/init__ with storage stat:mem mem
scoreboard players add #mem_num mem 1
scoreboard players operation #mem_num1 mem = #mem_num mem
scoreboard players operation #mem_num2 mem = #mem_num mem
scoreboard players operation #mem_num1 mem /= #11 mem
scoreboard players operation #mem_num2 mem %= #11 mem
execute if score #mem_num1 mem matches 0 run scoreboard players set #mem_num1 mem 11
execute if score #mem_num2 mem matches 0 run scoreboard players set #mem_num2 mem 11
execute store result storage stat:mem mem.num1 int 1 run scoreboard players get #mem_num1 mem
execute store result storage stat:mem mem.num2 int 1 run scoreboard players get #mem_num2 mem

execute unless score #mem_num mem matches 122.. run function modules:stat/init_