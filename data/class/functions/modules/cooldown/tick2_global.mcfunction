# 独立运行职业的冷却方法
function class:modules/cooldown/events/run

# 基础冷却
scoreboard players set @a[scores={statPlayerLevel=1}] cd_speed 109
scoreboard players set @a[scores={statPlayerLevel=2}] cd_speed 103
scoreboard players set @a[scores={statPlayerLevel=3}] cd_speed 97
scoreboard players set @a[scores={statPlayerLevel=4}] cd_speed 91
# 应用厄难之血
execute if score $mutation mem matches 4 run scoreboard players set @a[scores={team=1..4}] cd_speed 0
# 复活与训练场加速
scoreboard players set @a[scores={state=1}] cd_speed 200
scoreboard players set @a[scores={state=3}] cd_speed 300
# 应用 Debug 冷却
execute if score $skill_cd debug matches 1 run scoreboard players operation @a cd_speed *= #2 mem
execute if score $skill_cd debug matches 2 run scoreboard players operation @a cd_speed *= #10 mem
execute if score $skill_cd debug matches 3 run scoreboard players set @a cd_speed 1000000

# 应用潮涌能量
#scoreboard players add @a[nbt={active_effects:[{id:"minecraft:conduit_power",amplifier:0b}]}] cd_speed 25
#scoreboard players add @a[nbt={active_effects:[{id:"minecraft:conduit_power",amplifier:1b}]}] cd_speed 67