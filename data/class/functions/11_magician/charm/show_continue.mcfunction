scoreboard players remove @s 11_charm_time 1
title @s[scores={11_charm_time=271..300}] actionbar ["",{"color":"gray","text":""},{"color":"green","text":"■■■■■■■■■"}]
title @s[scores={11_charm_time=241..270}] actionbar ["",{"color":"gray","text":"■"},{"color":"green","text":"■■■■■■■■"}]
title @s[scores={11_charm_time=211..240}] actionbar ["",{"color":"gray","text":"■■"},{"color":"green","text":"■■■■■■■"}]
title @s[scores={11_charm_time=181..210}] actionbar ["",{"color":"gray","text":"■■■"},{"color":"green","text":"■■■■■■"}]
title @s[scores={11_charm_time=151..180}] actionbar ["",{"color":"gray","text":"■■■■"},{"color":"green","text":"■■■■■"}]
title @s[scores={11_charm_time=121..150}] actionbar ["",{"color":"gray","text":"■■■■■"},{"color":"green","text":"■■■■"}]
title @s[scores={11_charm_time=91..120}] actionbar ["",{"color":"gray","text":"■■■■■■"},{"color":"green","text":"■■■"}]
title @s[scores={11_charm_time=61..90}] actionbar ["",{"color":"gray","text":"■■■■■■■"},{"color":"green","text":"■■"}]
title @s[scores={11_charm_time=31..60}] actionbar ["",{"color":"gray","text":"■■■■■■■■"},{"color":"green","text":"■"}]
title @s[scores={11_charm_time=1..30}] actionbar ["",{"color":"gray","text":"■■■■■■■■■"},{"color":"green","text":""}]

execute as @s[scores={11_charm_time=..0}] run function class:11_magician/charm/end