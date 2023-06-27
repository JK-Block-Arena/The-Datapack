# 每 8 Tick 执行一次
schedule function modules:basic/events/tick8 8t replace

execute as @a[scores={state=1..3},gamemode=adventure,tag=pass] at @s run function modules:regen/tick8
function modules:mino1/tick8
function pvp:state/tick8
function pvp:tick8
function class:events/tick8