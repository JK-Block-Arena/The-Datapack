scoreboard players set #random_min mem 1
scoreboard players set #random_max mem 9
function modules:random
execute if score $map mem matches 100 if score #random mem matches 5 run function modules:mutation/random_mutation_loop
execute if score #random mem = $mutation mem run function modules:mutation/random_mutation_loop
execute if score #random mem = $mutation_last mem run function modules:mutation/random_mutation_loop
execute if score #random mem = $mutation_last2 mem run function modules:mutation/random_mutation_loop
execute if score #random mem = $mutation_last3 mem run function modules:mutation/random_mutation_loop