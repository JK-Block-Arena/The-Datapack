execute as @s[nbt={SelectedItemSlot:1}] run scoreboard players operation #level mem = @s 7_damage_st
execute as @s[nbt={SelectedItemSlot:1}] run scoreboard players operation #xp mem = @s 7_damage_cd
execute as @s[nbt={SelectedItemSlot:1}] if score $is_day mem matches 0 run scoreboard players operation #xp mem /= #15 mem
execute as @s[nbt={SelectedItemSlot:1}] if score $is_day mem matches 1 run scoreboard players operation #xp mem /= #25 mem
execute as @s[nbt={SelectedItemSlot:2}] run scoreboard players operation #level mem = @s 7_heal_st
execute as @s[nbt={SelectedItemSlot:2}] run scoreboard players operation #xp mem = @s 7_heal_cd
execute as @s[nbt={SelectedItemSlot:2}] if score $is_day mem matches 0 run scoreboard players operation #xp mem /= #20 mem
execute as @s[nbt={SelectedItemSlot:2}] if score $is_day mem matches 1 run scoreboard players operation #xp mem /= #10 mem
execute as @s[nbt={SelectedItemSlot:3}] run scoreboard players operation #level mem = @s 7_strength_st
execute as @s[nbt={SelectedItemSlot:3}] run scoreboard players operation #xp mem = @s 7_strength_cd
execute as @s[nbt={SelectedItemSlot:3}] if score $is_day mem matches 0 run scoreboard players operation #xp mem /= #15 mem
execute as @s[nbt={SelectedItemSlot:3}] if score $is_day mem matches 1 run scoreboard players operation #xp mem /= #25 mem
execute as @s[nbt={SelectedItemSlot:4}] run scoreboard players operation #level mem = @s 7_turtle_st
execute as @s[nbt={SelectedItemSlot:4}] run scoreboard players operation #xp mem = @s 7_turtle_cd
execute as @s[nbt={SelectedItemSlot:4}] if score $is_day mem matches 0 run scoreboard players operation #xp mem /= #25 mem
execute as @s[nbt={SelectedItemSlot:4}] if score $is_day mem matches 1 run scoreboard players operation #xp mem /= #15 mem
function modules:set_xp
execute as @s[nbt={SelectedItemSlot:0}] run xp set @s 0 points
execute as @s[nbt={SelectedItemSlot:0}] run xp set @s 0 levels
execute as @s[nbt={SelectedItemSlot:5}] run xp set @s 0 points
execute as @s[nbt={SelectedItemSlot:5}] run xp set @s 0 levels
execute as @s[nbt={SelectedItemSlot:6}] run xp set @s 0 points
execute as @s[nbt={SelectedItemSlot:6}] run xp set @s 0 levels
execute as @s[nbt={SelectedItemSlot:7}] run xp set @s 0 points
execute as @s[nbt={SelectedItemSlot:7}] run xp set @s 0 levels
execute as @s[nbt={SelectedItemSlot:8}] run xp set @s 0 points
execute as @s[nbt={SelectedItemSlot:8}] run xp set @s 0 levels
