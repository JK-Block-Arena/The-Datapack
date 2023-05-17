# 检查投掷、拾起
execute as @s[scores={4_trident_throw=1..}] run function class:4_oceancat/trident/throw
execute as @s[scores={4_trident_storage=0},nbt={Inventory:[{Slot:0b,tag:{CustomModelData:401}}]}] run function class:4_oceancat/trident/pickup

# 检查落地
execute as @s[tag=4_fly,nbt={FallDistance:0f,OnGround:1b}] run function class:4_oceancat/trident/fly_land
