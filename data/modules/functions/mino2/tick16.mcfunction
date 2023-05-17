# 仇恨清理
scoreboard players remove @a[scores={mino_forgive_timer=1..}] mino_forgive_timer 1
execute as @a[scores={mino_source_real=1..,mino_forgive_timer=..0,hp=10..}] run function modules:mino2/sub/forgive
execute as @a[scores={mino_source_real=1..,mino_forgive_timer=..-30}] run function modules:mino2/sub/forgive
