# 重置连杀
scoreboard players remove @a[scores={killCombo=1..}] killComboReset 1
scoreboard players set @a[scores={killCombo=1..,killComboReset=0}] killCombo 0
