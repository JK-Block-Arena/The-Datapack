execute unless entity @p[gamemode=adventure,scores={state=2},distance=200..] run tellraw @s {"text": "⚠  无战场玩家，无法观战。"}
execute if entity @p[gamemode=adventure,scores={state=2},distance=200..] run gamemode spectator @s
tp @s[gamemode=spectator] @p[gamemode=adventure,scores={state=2},distance=200..]
effect give @s[gamemode=spectator] night_vision infinite 0 true
tellraw @s[gamemode=spectator] [{"text":"\n ❇  你已进入旁观模式，使用/trigger back_spawn返回大厅。\n","color":"light_purple"}]
