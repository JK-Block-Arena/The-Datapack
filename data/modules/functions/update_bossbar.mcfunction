bossbar set bossbar:white players @a[scores={state=0},team=!red_v1,team=!blue_v1]
bossbar set bossbar:red players @a[scores={state=1..2},team=red]
bossbar set bossbar:blue players @a[scores={state=1..2},team=blue]
bossbar set bossbar:green players @a[scores={state=1..2},team=green]
bossbar set bossbar:yellow players @a[scores={state=1..2},team=yellow]
bossbar set bossbar:red_v1 players @a[team=red_v1]
bossbar set bossbar:blue_v1 players @a[team=blue_v1]
execute if score $mutation_bossbar mem matches 1 run bossbar set modules:mutation players @a[scores={state=1..2}]
execute if score $mutation_bossbar mem matches 0 run bossbar set modules:mutation players