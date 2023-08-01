execute unless entity @p[gamemode=adventure,scores={state=2},distance=200..] run tellraw @s {"text": "⚠  无战场玩家，无法观战。"}
execute if entity @p[gamemode=adventure,scores={state=2},distance=200..] run gamemode spectator @s
tp @s[gamemode=spectator] @p[gamemode=adventure,scores={state=2},distance=200..]
effect give @s[gamemode=spectator] night_vision infinite 0 true
tellraw @s[gamemode=spectator] [{"text":"\n ❇  你已进入旁观模式，","color":"light_purple"},{"text":"/trigger lobby","color":"yellow","underlined": true,"clickEvent": {"action":"run_command","value": "/trigger lobby"}},"返回大厅。\n ❇  使用",{"text":"/trigger switch_bossbar","color":"yellow","underlined": true,"clickEvent": {"action":"run_command","value": "/trigger switch_bossbar"}},"切换进度条。\n"]
# 更新bossbar，旁观查看另一套
bossbar set bossbar:white players @a[scores={state=0},gamemode=adventure]
execute if score #switch_bossbar mem matches 1 run bossbar set sp:white_v1 players @a[gamemode=spectator]
execute unless score #switch_bossbar mem matches 1 run bossbar set sp:white players @a[gamemode=spectator]