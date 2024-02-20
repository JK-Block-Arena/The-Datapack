$execute store result score @s Pose.$(pose)0 run data get entity @s Pose.$(pose)[0]
$execute store result score @s Pose.$(pose)1 run data get entity @s Pose.$(pose)[1]
$execute store result score @s Pose.$(pose)2 run data get entity @s Pose.$(pose)[2]


$execute if entity @p[scores={key_use=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{stand_pose:["$(pose)"]}}],SelectedItem:{id:"minecraft:copper_ingot"}}] run scoreboard players add @s Pose.$(pose)0 1
$execute if entity @p[scores={key_use=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{stand_pose:["$(pose)"]}}],SelectedItem:{id:"minecraft:iron_ingot"}}] run scoreboard players add @s Pose.$(pose)1 1
$execute if entity @p[scores={key_use=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{stand_pose:["$(pose)"]}}],SelectedItem:{id:"minecraft:gold_ingot"}}] run scoreboard players add @s Pose.$(pose)2 1

$execute if entity @p[scores={key_use=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{stand_pose:["$(pose)10"]}}],SelectedItem:{id:"minecraft:copper_ingot"}}] run scoreboard players add @s Pose.$(pose)0 10
$execute if entity @p[scores={key_use=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{stand_pose:["$(pose)10"]}}],SelectedItem:{id:"minecraft:iron_ingot"}}] run scoreboard players add @s Pose.$(pose)1 10
$execute if entity @p[scores={key_use=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{stand_pose:["$(pose)10"]}}],SelectedItem:{id:"minecraft:gold_ingot"}}] run scoreboard players add @s Pose.$(pose)2 10


$execute if entity @p[scores={key_use=1..,sneak_time=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{stand_pose:["$(pose)"]}}],SelectedItem:{id:"minecraft:copper_ingot"}}] run scoreboard players remove @s Pose.$(pose)0 2
$execute if entity @p[scores={key_use=1..,sneak_time=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{stand_pose:["$(pose)"]}}],SelectedItem:{id:"minecraft:iron_ingot"}}] run scoreboard players remove @s Pose.$(pose)1 2
$execute if entity @p[scores={key_use=1..,sneak_time=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{stand_pose:["$(pose)"]}}],SelectedItem:{id:"minecraft:gold_ingot"}}] run scoreboard players remove @s Pose.$(pose)2 2

$execute if entity @p[scores={key_use=1..,sneak_time=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{stand_pose:["$(pose)10"]}}],SelectedItem:{id:"minecraft:copper_ingot"}}] run scoreboard players remove @s Pose.$(pose)0 20
$execute if entity @p[scores={key_use=1..,sneak_time=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{stand_pose:["$(pose)10"]}}],SelectedItem:{id:"minecraft:iron_ingot"}}] run scoreboard players remove @s Pose.$(pose)1 20
$execute if entity @p[scores={key_use=1..,sneak_time=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{stand_pose:["$(pose)10"]}}],SelectedItem:{id:"minecraft:gold_ingot"}}] run scoreboard players remove @s Pose.$(pose)2 20


$execute store result entity @s Pose.$(pose)[0] float 1 run scoreboard players get @s Pose.$(pose)0
$execute store result entity @s Pose.$(pose)[1] float 1 run scoreboard players get @s Pose.$(pose)1
$execute store result entity @s Pose.$(pose)[2] float 1 run scoreboard players get @s Pose.$(pose)2