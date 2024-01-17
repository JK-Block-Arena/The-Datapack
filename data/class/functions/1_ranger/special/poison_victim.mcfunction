
# 标记受害者
execute as @s[tag=level1] as @e[distance=..4.6,type=#modules:living] positioned ~-5 ~ ~-5 as @s[dx=10,dy=0.5,dz=10] run tag @s add poison_victim
execute as @s[tag=level2] as @e[distance=..4.2,type=#modules:living] positioned ~-5 ~ ~-5 as @s[dx=10,dy=0.5,dz=10] run tag @s add poison_victim
execute as @s[tag=level3] as @e[distance=..3.8,type=#modules:living] positioned ~-5 ~ ~-5 as @s[dx=10,dy=0.5,dz=10] run tag @s add poison_victim
execute as @s[tag=level4] as @e[distance=..3.4,type=#modules:living] positioned ~-5 ~ ~-5 as @s[dx=10,dy=0.5,dz=10] run tag @s add poison_victim
# 给予效果
tag @s add self
execute as @e[tag=poison_victim] if score @s team = @e[tag=self,limit=1] team run effect give @s poison 1 20
execute as @e[tag=poison_victim] if score @s team = @e[tag=self,limit=1] team run effect give @s bad_omen 1 0
execute as @e[tag=poison_victim] unless score @s team = @e[tag=self,limit=1] team run effect give @s poison 4 20
execute as @e[tag=poison_victim] unless score @s team = @e[tag=self,limit=1] team run effect give @s bad_omen 4 0
# 标记攻击者
execute as @a[tag=poison_victim,scores={hp=2..}] unless score @s aecUUID = @e[tag=self,limit=1] aecUUID run tag @s add track_victim
scoreboard players operation @a[tag=track_victim] aecUUID = @e[tag=self,limit=1] aecUUID
tag @s remove self
execute as @a[tag=track_victim] at @s run function modules:mino1/sub/any
execute as @a[tag=track_victim] at @s run function modules:mino1/sub/1_6_poison_trigger
function modules:mino1/sub/murder
tag @a remove track_victim
# 清理tag
tag @e remove poison_victim