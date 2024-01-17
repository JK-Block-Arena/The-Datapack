execute store result score #random mem run random value 1..10
execute if score $map mem matches 100 if score #random mem matches 5 run function modules:mutation/random_mutation_loop
execute if score #random mem = $mutation mem run function modules:mutation/random_mutation_loop
execute if score #random mem = $mutation_last mem run function modules:mutation/random_mutation_loop
execute if score #random mem = $mutation_last2 mem run function modules:mutation/random_mutation_loop
execute if score #random mem = $mutation_last3 mem run function modules:mutation/random_mutation_loop