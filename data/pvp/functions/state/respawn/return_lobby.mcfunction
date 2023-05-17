tellraw @a[distance=0.01..] ["",{"text":" ❇  "},{"selector":"@s"}," 离开了战场"]

playsound minecraft:entity.player.levelup player @s 0 1000000 0 1000000
function pvp:state/lobby/enter