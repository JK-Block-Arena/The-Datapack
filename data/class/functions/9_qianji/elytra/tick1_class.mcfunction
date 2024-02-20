scoreboard players remove @s[scores={9_elytra_last=1..}] 9_elytra_last 1
title @s[scores={9_elytra_last=101..120}] actionbar {"text":"■■■■■","color":"aqua"}
title @s[scores={9_elytra_last=81..100}] actionbar {"text":"■■■■□","color":"aqua"}
title @s[scores={9_elytra_last=61..80}] actionbar {"text":"■■■□□","color":"aqua"}
title @s[scores={9_elytra_last=41..60}] actionbar {"text":"■■□□□","color":"aqua"}
title @s[scores={9_elytra_last=21..40}] actionbar {"text":"■□□□□","color":"aqua"}
title @s[scores={9_elytra_last=2..20}] actionbar {"text":"□□□□□","color":"aqua"}
scoreboard players set @s[scores={9_elytra_last=1..150},nbt={OnGround:1b}] 9_elytra_last 1
title @s[scores={9_elytra_last=1}] actionbar {"text":"鞘翅已消失！","color":"aqua","bold":true}
scoreboard players remove @s[scores={9_st41=1..}] 9_st4 1
scoreboard players set @s[scores={9_st41=1..}] 9_st41 0
execute if score $mutation mem matches 8 run effect give @s[scores={state=2,team=1..4,9_elytra_last=1..}] glowing 3