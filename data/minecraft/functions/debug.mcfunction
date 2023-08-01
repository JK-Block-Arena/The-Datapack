tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ❇  方块竞技场控制面板\n","color":"aqua"}]
#,{"text":"     妈耶，难不成这就是传说中神的力量？\n","color":"gray"}
# 系统
summon marker ~ ~ ~ {CustomName:'{"text":"[重置游戏]","color":"white"}',Tags:["debug1"]}
execute if score $system_f3 debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[F3 面板]","color":"gray"}',Tags:["debug2"]}
execute if score $system_f3 debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[F3 面板]","color":"green"}',Tags:["debug2"]}
summon marker ~ ~ ~ {CustomName:'{"text":"[测试模式]","color":"white"}',Tags:["debug3"]}
tellraw @s ["     系统  >>   ",{"selector":"@e[tag=debug1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/system_init"}},"  ",{"selector":"@e[tag=debug2]","clickEvent":{"action":"run_command","value":"/function debug:trigger/system_f3"}},"  ",{"selector":"@e[tag=debug3]","clickEvent":{"action":"run_command","value":"/function debug:jkuse/debug"}}]
kill @e[tag=debug1]
kill @e[tag=debug2]
kill @e[tag=debug3]

# 突变
execute if score $mutation_count debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[突变次数 自动]","color":"gray"}',Tags:["debug1"]}
execute if score $mutation_count debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[突变次数 2 次]","color":"green"}',Tags:["debug1"]}
execute if score $mutation_count debug matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[突变次数 1 次]","color":"green"}',Tags:["debug1"]}
execute if score $mutation_count debug matches 3 run summon marker ~ ~ ~ {CustomName:'{"text":"[突变次数 0 次]","color":"green"}',Tags:["debug1"]}
execute if score $mutation_speed debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[触发条速度 1x]","color":"gray"}',Tags:["debug2"]}
execute if score $mutation_speed debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[触发条速度 2x]","color":"green"}',Tags:["debug2"]}
execute if score $mutation_speed debug matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[触发条速度 5x]","color":"green"}',Tags:["debug2"]}
tellraw @s ["     突变  >>   ",{"selector":"@e[tag=debug1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_count"}},"  ",{"selector":"@e[tag=debug2]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_speed"}}]
kill @e[tag=debug1]
kill @e[tag=debug2]

# 平衡
execute if score $balance_team debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[不检查队伍人数]","color":"gray"}',Tags:["debug1"]}
execute if score $balance_team debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[不检查队伍人数]","color":"green"}',Tags:["debug1"]}
tellraw @s ["     平衡  >>   ",{"selector":"@e[tag=debug1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/balance_team"}}]
kill @e[tag=debug1]

# 追踪
execute if score $track_damage debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[伤害追踪]","color":"gray"}',Tags:["debug1"]}
execute if score $track_damage debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[伤害追踪]","color":"green"}',Tags:["debug1"]}
execute if score $track_death_info debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[死亡信息 默认]","color":"gray"}',Tags:["debug2"]}
execute if score $track_death_info debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[死亡信息 全部]","color":"green"}',Tags:["debug2"]}
execute if score $track_death_info debug matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[死亡信息 关闭]","color":"green"}',Tags:["debug2"]}
execute if score $track_ray_move debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[射线路径]","color":"gray"}',Tags:["debug3"]}
execute if score $track_ray_move debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[射线路径]","color":"green"}',Tags:["debug3"]}
execute if score $track_ray_tp debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[折跃点标记]","color":"gray"}',Tags:["debug4"]}
execute if score $track_ray_tp debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[折跃点标记]","color":"green"}',Tags:["debug4"]}
tellraw @s ["     追踪  >>   ",{"selector":"@e[tag=debug1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/track_damage"}},"  ",{"selector":"@e[tag=debug2]","clickEvent":{"action":"run_command","value":"/function debug:trigger/track_death_info"}},"  ",{"selector":"@e[tag=debug3]","clickEvent":{"action":"run_command","value":"/function debug:trigger/track_ray_move"}},"  ",{"selector":"@e[tag=debug4]","clickEvent":{"action":"run_command","value":"/function debug:trigger/track_ray_tp"}}]
kill @e[tag=debug1]
kill @e[tag=debug2]
kill @e[tag=debug3]
kill @e[tag=debug4]

# 战斗
execute if score $skill_cd debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[冷却速度 1x]","color":"gray"}',Tags:["debug1"]}
execute if score $skill_cd debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[冷却速度 2x]","color":"green"}',Tags:["debug1"]}
execute if score $skill_cd debug matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[冷却速度 10x]","color":"green"}',Tags:["debug1"]}
execute if score $skill_cd debug matches 3 run summon marker ~ ~ ~ {CustomName:'{"text":"[冷却速度 立即]","color":"green"}',Tags:["debug1"]}
execute if score $skill_heal debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[瞬间治疗]","color":"gray"}',Tags:["debug2"]}
execute if score $skill_heal debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[瞬间治疗]","color":"green"}',Tags:["debug2"]}
execute if score $skill_respawn debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[复活速度]","color":"gray"}',Tags:["debug3"]}
execute if score $skill_respawn debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[复活速度 2x]","color":"green"}',Tags:["debug3"]}
execute if score $skill_respawn debug matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[复活速度 立即]","color":"green"}',Tags:["debug3"]}
#execute if score $skill_friendly_fire debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[友军伤害]","color":"gray"}',Tags:["debug4"]}
#execute if score $skill_friendly_fire debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[友军伤害]","color":"green"}',Tags:["debug4"]}
tellraw @s ["     战斗  >>   ",{"selector":"@e[tag=debug1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/skill_cd"}},"  ",{"selector":"@e[tag=debug2]","clickEvent":{"action":"run_command","value":"/function debug:trigger/skill_heal"}},"  ",{"selector":"@e[tag=debug3]","clickEvent":{"action":"run_command","value":"/function debug:trigger/skill_respawn"}}]
#,"  ",{"selector":"@e[tag=debug4]","clickEvent":{"action":"run_command","value":"/function debug:trigger/skill_friendly_fire"},"hoverEvent": {"action":"show_text","value":"杀戮光环突变时请不要使用"}}
kill @e[tag=debug1]
kill @e[tag=debug2]
kill @e[tag=debug3]
kill @e[tag=debug4]
# 统计
summon marker ~ ~ ~ {CustomName:'{"text":"[打印全职业数据]","color":"white"}',Tags:["debug1"]}
summon marker ~ ~ ~ {CustomName:'{"text":"[重置]","color":"white"}',Tags:["debug2"]}
summon marker ~ ~ ~ {CustomName:'{"text":"[重置本月数据]","color":"white"}',Tags:["debug5"]}
#execute if score $stat_condition debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[数据收集 默认]","color":"gray"}',Tags:["debug3"]}
#execute if score $stat_condition debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[数据收集 关闭]","color":"green"}',Tags:["debug3"]}
#execute if score $stat_condition debug matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[数据收集 开启]","color":"green"}',Tags:["debug3"]}
#execute if score $stat_elo debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[段位分提示]","color":"gray"}',Tags:["debug4"]}
#execute if score $stat_elo debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[段位分提示]","color":"green"}',Tags:["debug4"]}
#"  ",{"selector":"@e[tag=debug3]","clickEvent":{"action":"run_command","value":"/function debug:trigger/stat_condition"}},"  ",{"selector":"@e[tag=debug4]","clickEvent":{"action":"run_command","value":"/function debug:trigger/stat_elo"}},
tellraw @s ["     统计  >>   ",{"selector":"@e[tag=debug1]","clickEvent":{"action":"run_command","value":"/function modules:stat/sub/print"}},"  ",{"selector":"@e[tag=debug2]","clickEvent":{"action":"run_command","value":"/function modules:stat/sub/reset"}},"  ",{"selector":"@e[tag=debug5]","clickEvent":{"action":"run_command","value":"/function modules:stat/sub/monthly_reset"}}]
kill @e[tag=debug1]
kill @e[tag=debug2]
#kill @e[tag=debug3]
#kill @e[tag=debug4]
kill @e[tag=debug5]

# 信息
#execute if score $info_tip_hide debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[关闭小提示]","color":"gray"}',Tags:["debug1"]}
#execute if score $info_tip_hide debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[关闭小提示]","color":"green"}',Tags:["debug1"]}
execute if score $info_hud debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[HUD 全部显示]","color":"gray"}',Tags:["debug2"]}
execute if score $info_hud debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[HUD 无侧边栏]","color":"green"}',Tags:["debug2"]}
execute if score $info_hud debug matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[HUD 全部隐藏]","color":"green"}',Tags:["debug2"]}
execute if score $info_ignore_afk debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[忽略挂机]","color":"gray"}',Tags:["debug3"]}
execute if score $info_ignore_afk debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[忽略挂机]","color":"green"}',Tags:["debug3"]}
#execute if score $info_refresh_inv debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[物品刷新指示]","color":"gray"}',Tags:["debug4"]}
#execute if score $info_refresh_inv debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[物品刷新指示]","color":"green"}',Tags:["debug4"]}
#{"selector":"@e[tag=debug1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/info_tip_hide"}},"  ",,"  ",{"selector":"@e[tag=debug4]","clickEvent":{"action":"run_command","value":"/function debug:trigger/info_refresh_inv"}}
tellraw @s ["     信息  >>   ",{"selector":"@e[tag=debug2]","clickEvent":{"action":"run_command","value":"/function debug:trigger/info_hud"}},"  ",{"selector":"@e[tag=debug3]","clickEvent":{"action":"run_command","value":"/function debug:trigger/info_ignore_afk"}}]
#kill @e[tag=debug1]
kill @e[tag=debug2]
kill @e[tag=debug3]
#kill @e[tag=debug4]

# 地图
#summon marker ~ ~ ~ {CustomName:'{"text":"[正午]","color":"white"}',Tags:["debug1"]}
#summon marker ~ ~ ~ {CustomName:'{"text":"[凌晨]","color":"white"}',Tags:["debug2"]}
#execute if score $map_time debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[关闭昼夜交替]","color":"gray"}',Tags:["debug3"]}
#execute if score $map_time debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[关闭昼夜交替]","color":"green"}',Tags:["debug3"]}
#execute if score $map_marker debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[出生点标记]","color":"gray"}',Tags:["debug4"]}
#execute if score $map_marker debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[出生点标记]","color":"green"}',Tags:["debug4"]}
#tellraw @s ["     地图  >>   ",{"selector":"@e[tag=debug1]","clickEvent":{"action":"run_command","value":"/time set noon"}},"  ",{"selector":"@e[tag=debug2]","clickEvent":{"action":"run_command","value":"/time set midnight"}},"  ",{"selector":"@e[tag=debug3]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_time"}},"  ",{"selector":"@e[tag=debug4]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_marker"}}]
#kill @e[tag=debug1]
#kill @e[tag=debug2]
#kill @e[tag=debug3]
#kill @e[tag=debug4]

# 切换部分
tellraw @s ""

# 切换战场
execute if score $map mem matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[村庄]","color":"green"}',Tags:["debug1"]}
execute unless score $map mem matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[村庄]","color":"gray"}',Tags:["debug1"]}
execute if score $map mem matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[冰树]","color":"green"}',Tags:["debug2"]}
execute unless score $map mem matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[冰树]","color":"gray"}',Tags:["debug2"]}
execute if score $map mem matches 3 run summon marker ~ ~ ~ {CustomName:'{"text":"[沙滩]","color":"green"}',Tags:["debug3"]}
execute unless score $map mem matches 3 run summon marker ~ ~ ~ {CustomName:'{"text":"[沙滩]","color":"gray"}',Tags:["debug3"]}
execute if score $map mem matches 4 run summon marker ~ ~ ~ {CustomName:'{"text":"[瀑布]","color":"green"}',Tags:["debug4"]}
execute unless score $map mem matches 4 run summon marker ~ ~ ~ {CustomName:'{"text":"[瀑布]","color":"gray"}',Tags:["debug4"]}
execute if score $map mem matches 5 run summon marker ~ ~ ~ {CustomName:'{"text":"[丛林]","color":"green"}',Tags:["debug5"]}
execute unless score $map mem matches 5 run summon marker ~ ~ ~ {CustomName:'{"text":"[丛林]","color":"gray"}',Tags:["debug5"]}
execute if score $map mem matches 6 run summon marker ~ ~ ~ {CustomName:'{"text":"[古堡]","color":"green"}',Tags:["debug6"]}
execute unless score $map mem matches 6 run summon marker ~ ~ ~ {CustomName:'{"text":"[古堡]","color":"gray"}',Tags:["debug6"]}
execute if score $map mem matches 7 run summon marker ~ ~ ~ {CustomName:'{"text":"[商店]","color":"green"}',Tags:["debug7"]}
execute unless score $map mem matches 7 run summon marker ~ ~ ~ {CustomName:'{"text":"[商店]","color":"gray"}',Tags:["debug7"]}
execute if score $map mem matches 8 run summon marker ~ ~ ~ {CustomName:'{"text":"[舞台]","color":"green"}',Tags:["debug8"]}
execute unless score $map mem matches 8 run summon marker ~ ~ ~ {CustomName:'{"text":"[舞台]","color":"gray"}',Tags:["debug8"]}
execute if score $map mem matches 9 run summon marker ~ ~ ~ {CustomName:'{"text":"[矿洞]","color":"green"}',Tags:["debug9"]}
execute unless score $map mem matches 9 run summon marker ~ ~ ~ {CustomName:'{"text":"[矿洞]","color":"gray"}',Tags:["debug9"]}
execute if score $map mem matches 100 run summon marker ~ ~ ~ {CustomName:'{"text":"[玄素]","color":"green"}',Tags:["debug100"]}
execute unless score $map mem matches 100 run summon marker ~ ~ ~ {CustomName:'{"text":"[玄素]","color":"black"}',Tags:["debug100"]}
tellraw @s ["     切换战场  >>   ",{"selector":"@e[tag=debug1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_change_1"}},"  ",{"selector":"@e[tag=debug2]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_change_2"}},"  ",{"selector":"@e[tag=debug3]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_change_3"}},"  ",{"selector":"@e[tag=debug4]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_change_4"}},"  ",{"selector":"@e[tag=debug5]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_change_5"}},"  ",{"selector":"@e[tag=debug6]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_change_6"}},"  ",{"selector":"@e[tag=debug7]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_change_7"}},"  ",{"selector":"@e[tag=debug8]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_change_8"}},"  ",{"selector":"@e[tag=debug9]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_change_9"}},"  ",{"selector":"@e[tag=debug100]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_change_100"}}]

kill @e[tag=debug1]
kill @e[tag=debug2]
kill @e[tag=debug3]
kill @e[tag=debug4]
kill @e[tag=debug5]
kill @e[tag=debug6]
kill @e[tag=debug7]
kill @e[tag=debug8]
kill @e[tag=debug9]
kill @e[tag=debug100]

# 切换突变
execute if score $mutation mem matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[无]","color":"green"}',Tags:["debug1"]}
execute unless score $mutation mem matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[无]","color":"gray"}',Tags:["debug1"]}
execute if score $mutation mem matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[瞬息万变]","color":"green"}',Tags:["debug2"]}
execute unless score $mutation mem matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[瞬息万变]","color":"gray"}',Tags:["debug2"]}
execute if score $mutation mem matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[混沌灵魂++]","color":"green"}',Tags:["debug3"]}
execute unless score $mutation mem matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[混沌灵魂++]","color":"gray"}',Tags:["debug3"]}
execute if score $mutation mem matches 3 run summon marker ~ ~ ~ {CustomName:'{"text":"[引力失衡]","color":"green"}',Tags:["debug4"]}
execute unless score $mutation mem matches 3 run summon marker ~ ~ ~ {CustomName:'{"text":"[引力失衡]","color":"gray"}',Tags:["debug4"]}
execute if score $mutation mem matches 4 run summon marker ~ ~ ~ {CustomName:'{"text":"[厄难之血]","color":"green"}',Tags:["debug5"]}
execute unless score $mutation mem matches 4 run summon marker ~ ~ ~ {CustomName:'{"text":"[厄难之血]","color":"gray"}',Tags:["debug5"]}
execute if score $mutation mem matches 5 run summon marker ~ ~ ~ {CustomName:'{"text":"[折跃灵泉]","color":"green"}',Tags:["debug6"]}
execute unless score $mutation mem matches 5 run summon marker ~ ~ ~ {CustomName:'{"text":"[折跃灵泉]","color":"gray"}',Tags:["debug6"]}
execute if score $mutation mem matches 6 run summon marker ~ ~ ~ {CustomName:'{"text":"[杀戮光环]","color":"green"}',Tags:["debug7"]}
execute unless score $mutation mem matches 6 run summon marker ~ ~ ~ {CustomName:'{"text":"[杀戮光环]","color":"gray"}',Tags:["debug7"]}
execute if score $mutation mem matches 7 run summon marker ~ ~ ~ {CustomName:'{"text":"[连锁换位]","color":"green"}',Tags:["debug8"]}
execute unless score $mutation mem matches 7 run summon marker ~ ~ ~ {CustomName:'{"text":"[连锁换位]","color":"gray"}',Tags:["debug8"]}
execute if score $mutation mem matches 8 run summon marker ~ ~ ~ {CustomName:'{"text":"[黑暗森林]","color":"green"}',Tags:["debug9"]}
execute unless score $mutation mem matches 8 run summon marker ~ ~ ~ {CustomName:'{"text":"[黑暗森林]","color":"gray"}',Tags:["debug9"]}
execute if score $mutation mem matches 9 run summon marker ~ ~ ~ {CustomName:'{"text":"[你说我做]","color":"green"}',Tags:["debug10"]}
execute unless score $mutation mem matches 9 run summon marker ~ ~ ~ {CustomName:'{"text":"[你说我做]","color":"gray"}',Tags:["debug10"]}
execute if score $mutation mem matches 10 run summon marker ~ ~ ~ {CustomName:'{"text":"[一击必杀]","color":"green"}',Tags:["debug11"]}
execute unless score $mutation mem matches 10 run summon marker ~ ~ ~ {CustomName:'{"text":"[一击必杀]","color":"black"}',Tags:["debug11"]}

tellraw @s ["     切换突变  >>   ",{"selector":"@e[tag=debug1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_0"}},"  ",{"selector":"@e[tag=debug2]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_1"},"hoverEvent":{"action":"show_text","contents":"生命上限降低，但静息治疗会瞬间恢复所有生命"}},"  ",{"selector":"@e[tag=debug3]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_2"},"hoverEvent":{"action":"show_text","contents":"职业仅能随机选择，也会因死亡或时间随机改变"}},"  ",{"selector":"@e[tag=debug4]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_3"},"hoverEvent":{"action":"show_text","contents":"大地的引力几乎消失了，一切都变得诡异而陌生"}},"  ",{"selector":"@e[tag=debug5]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_4"},"hoverEvent":{"action":"show_text","contents":"能力冷却仅在攻击敌人或被攻击时才能恢复"}},"  ",{"selector":"@e[tag=debug6]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_5"},"hoverEvent":{"action":"show_text","contents":"接触水的生物会获得少量护盾，并传送到敌方附近"}},"  ",{"selector":"@e[tag=debug7]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_6"},"hoverEvent":{"action":"show_text","contents":"攻击友方/敌方获得增益，但静息无法治疗"}},"  ",{"selector":"@e[tag=debug8]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_7"},"hoverEvent":{"action":"show_text","contents":"每隔一段时间，所有人就会随机交换位置"}},"  ",{"selector":"@e[tag=debug9]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_8"},"hoverEvent":{"action":"show_text","contents":"获得可静息的隐身，但任何动作都会暴露你"}},"  ",{"selector":"@e[tag=debug10]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_9"},"hoverEvent":{"action":"show_text","contents":"出现随机任务，完成与否奖惩分明"}},"  ",{"selector":"@e[tag=debug11]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_10"},"hoverEvent":{"action":"show_text","contents":"不计摔伤与死亡数，一击必杀你的对手吧！"}}]

kill @e[tag=debug1]
kill @e[tag=debug2]
kill @e[tag=debug3]
kill @e[tag=debug4]
kill @e[tag=debug5]
kill @e[tag=debug6]
kill @e[tag=debug7]
kill @e[tag=debug8]
kill @e[tag=debug9]
kill @e[tag=debug10]
kill @e[tag=debug11]

tellraw @s "\n"
execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 0.15 1