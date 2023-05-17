advancement revoke @s only modules:mino1/0_5_instant

scoreboard players operation @s mino_type_now = @s mino_type_effect_instant
scoreboard players operation @s mino_source_now = @s mino_source_effect_instant

# 海嗣落水的特殊判定
scoreboard players set @s[scores={mino_type_now=00050,class=4}] mino_type_now 04060
