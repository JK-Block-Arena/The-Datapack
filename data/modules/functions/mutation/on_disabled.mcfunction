# 记录上一个突变
execute unless score $mutation mem matches 0 run scoreboard players operation $mutation_last3 mem = $mutation_last2 mem
execute unless score $mutation mem matches 0 run scoreboard players operation $mutation_last2 mem = $mutation_last mem
execute unless score $mutation mem matches 0 run scoreboard players operation $mutation_last mem = $mutation mem

# 重置 bossbar
scoreboard players set $mutation_tip mem 0
scoreboard players set $mutation_bossbar mem 0
bossbar set bossbar:white name ""
bossbar set bossbar:red name ""
bossbar set bossbar:blue name ""
bossbar set bossbar:green name ""
bossbar set bossbar:yellow name ""
bossbar set bossbar:red_v1 name ""
bossbar set bossbar:blue_v1 name ""
function modules:update_bossbar

# 恢复
execute as @e[type=#modules:projectile/check,tag=!projectile_land] at @s run data modify entity @s NoGravity set value false
execute as @a[scores={state=2,team=1..4}] run attribute @s minecraft:generic.max_health base set 20
scoreboard players set @a mino_time_00080 0
effect clear @a absorption
function modules:mutation/special/9_select/init

# 关闭友伤
scoreboard players set $skill_friendly_fire debug 1
function debug:trigger/skill_friendly_fire

# 更新描述
kill @e[tag=mutation_name]
kill @e[tag=mutation_desc]
execute if score $mutation_new mem matches 1 run summon marker 0 0 0 {CustomName:'"瞬息万变"',Tags:["mutation_name"]}
execute if score $mutation_new mem matches 2 run summon marker 0 0 0 {CustomName:'"混沌灵魂++"',Tags:["mutation_name"]}
execute if score $mutation_new mem matches 3 run summon marker 0 0 0 {CustomName:'"引力失衡"',Tags:["mutation_name"]}
execute if score $mutation_new mem matches 4 run summon marker 0 0 0 {CustomName:'"狂暴之血"',Tags:["mutation_name"]}
execute if score $mutation_new mem matches 5 run summon marker 0 0 0 {CustomName:'"折跃灵泉"',Tags:["mutation_name"]}
execute if score $mutation_new mem matches 6 run summon marker 0 0 0 {CustomName:'"杀戮光环"',Tags:["mutation_name"]}
execute if score $mutation_new mem matches 7 run summon marker 0 0 0 {CustomName:'"连锁换位"',Tags:["mutation_name"]}
execute if score $mutation_new mem matches 8 run summon marker 0 0 0 {CustomName:'"一击必杀"',Tags:["mutation_name"]}
execute if score $mutation_new mem matches 9 run summon marker 0 0 0 {CustomName:'"你说我做"',Tags:["mutation_name"]}

execute if score $mutation_new mem matches 1 run summon marker 0 0 0 {CustomName:'"生命上限降低，但静息治疗会瞬间恢复所有生命"',Tags:["mutation_desc"]}
execute if score $mutation_new mem matches 2 run summon marker 0 0 0 {CustomName:'"职业仅能随机选择，也会因死亡或时间随机改变"',Tags:["mutation_desc"]}
execute if score $mutation_new mem matches 3 run summon marker 0 0 0 {CustomName:'"大地的引力几乎消失了，一切都变得诡异而陌生"',Tags:["mutation_desc"]}
execute if score $mutation_new mem matches 4 run summon marker 0 0 0 {CustomName:'"能力冷却仅在攻击敌人或被攻击时才能恢复"',Tags:["mutation_desc"]}
execute if score $mutation_new mem matches 5 run summon marker 0 0 0 {CustomName:'"接触水的生物会获得少量护盾，并传送到敌方附近"',Tags:["mutation_desc"]}
execute if score $mutation_new mem matches 6 run summon marker 0 0 0 {CustomName:'"友伤开启，攻击任何人获得增益，但无法静息治疗"',Tags:["mutation_desc"]}
execute if score $mutation_new mem matches 7 run summon marker 0 0 0 {CustomName:'"每隔一段时间，所有人就会随机交换位置"',Tags:["mutation_desc"]}
execute if score $mutation_new mem matches 8 run summon marker 0 0 0 {CustomName:'"不计摔伤与死亡数，一击必杀你的对手吧！"',Tags:["mutation_desc"]}
execute if score $mutation_new mem matches 9 run summon marker 0 0 0 {CustomName:'"随机任务！做得对有奖励，做错了有惩罚"',Tags:["mutation_desc"]}