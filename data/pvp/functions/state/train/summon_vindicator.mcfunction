scoreboard players set @s vindicator_cd 0
particle cloud ~ ~0.6 ~ 0.4 0.5 0.4 0 20
playsound block.fire.extinguish player @a ~ ~ ~ 0.05
playsound entity.vindicator.ambient hostile @a ~ ~1 ~ 1 1.15

summon vindicator ~ ~ ~ {PersistenceRequired:1b,Tags:["new_vindicator"],HandDropChances:[0f,0f],HandItems:[{id:"minecraft:iron_axe",Count:1}],Health:20f}
attribute @e[tag=new_vindicator,limit=1] generic.movement_speed base set 0.28
attribute @e[tag=new_vindicator,limit=1] generic.follow_range base set 8
effect give @e[tag=new_vindicator,limit=1] weakness infinite 1 true
tag @e remove new_vindicator