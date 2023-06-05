# 每 20 Tick / 1 s 执行一次
schedule function modules:basic/events/sec1 1s replace

execute as @a run function modules:basic/events/play_time
scoreboard players enable @a[scores={state=0}] play_time_show
execute as @a[scores={class=10},gamemode=adventure,nbt={SelectedItem:{tag:{CustomModelData:1005}}}] at @s anchored eyes positioned ^ ^ ^5 run particle happy_villager