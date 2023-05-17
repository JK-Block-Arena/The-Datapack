scoreboard objectives remove jump
scoreboard objectives add jump minecraft.custom:minecraft.jump "跳跃触发"

scoreboard objectives remove heartbeat
scoreboard objectives add heartbeat dummy "心跳触发"

function modules:mutation/sub/off

bossbar add modules:mutation ""
bossbar set modules:mutation style progress
bossbar set modules:mutation max 10000
bossbar set modules:mutation value 0
bossbar set modules:mutation visible true

bossbar add modules:mutation_9 ""
bossbar set modules:mutation_9 color green
bossbar set modules:mutation_9 style progress
bossbar set modules:mutation_9 max 1
bossbar set modules:mutation_9 value 0
bossbar set modules:mutation_9 visible false