# 玩家隐秘及彩蛋成就计分板
function modules:stat/hidden_and_extra

# 在线时长
scoreboard objectives add play_time_t minecraft.custom:minecraft.play_time "本月在线时长/tick"
scoreboard objectives add play_time_show trigger "开启/关闭在线时长显示"
scoreboard objectives add play_time dummy "本月在线时长/天/时/分/秒"
scoreboard objectives add play_time_s dummy "在线时长/s"
scoreboard objectives add play_time_m dummy "在线时长/m"
scoreboard objectives add play_time_h dummy "在线时长/h"
scoreboard objectives add play_time_d dummy "在线时长/d"

# 玩家表现
scoreboard objectives add statPlayerElo dummy "玩家长期表现"
scoreboard objectives add statPlayerEloCount dummy "ELO 记录次数"
scoreboard objectives add statPlayerKd dummy "玩家短期表现"
scoreboard objectives add statPlayerLevel dummy "玩家短期等级"

# 职业统计
scoreboard objectives add statClassKill dummy "职业总击杀"
scoreboard objectives add statClassDeath dummy "职业总死亡"
scoreboard objectives add statClassSelectReal dummy "职业选择次数"
scoreboard objectives add statClassCrossKill dummy "职业交叉击杀"

execute store result storage stat:mem mem.num1 int 1 run scoreboard players get #1 mem
execute store result storage stat:mem mem.num2 int 1 run scoreboard players get #1 mem
function modules:stat/init_

# 玩家统计
scoreboard objectives add statPlayerCombo2 dummy "2 连杀次数"
scoreboard objectives add statPlayerCombo3 dummy "3 连杀次数"
scoreboard objectives add statPlayerCombo4 dummy "4 连杀次数"
scoreboard objectives add statPlayerCombo5 dummy "5 连杀次数"
scoreboard objectives add statPlayerCombo6 dummy "6 连杀次数"
scoreboard objectives add statPlayerCombo7 dummy "7 连杀次数"
scoreboard objectives add statPlayerCombo_much dummy "传奇 连杀次数"

scoreboard objectives add statPlayerRound dummy "玩家总循环"
scoreboard objectives add statPlayerKill dummy "玩家总击杀"
scoreboard objectives add statPlayerDeath dummy "玩家总死亡"
scoreboard objectives add statPlayerKD dummy "玩家K/D * 1k值"
scoreboard objectives add statPlayerDeathReal dummy "玩家包含自杀的总死亡"

scoreboard objectives modify statPlayerClassKill1 displayname "游侠 职业击杀"
scoreboard objectives modify statPlayerClassKill2 displayname "暗影 职业击杀"
scoreboard objectives modify statPlayerClassKill3 displayname "突袭 职业击杀"
scoreboard objectives modify statPlayerClassKill4 displayname "海嗣 职业击杀"
scoreboard objectives modify statPlayerClassKill5 displayname "耀骑士 职业击杀"
scoreboard objectives modify statPlayerClassKill6 displayname "有用之人 职业击杀"
scoreboard objectives modify statPlayerClassKill7 displayname "牧师 职业击杀"
scoreboard objectives modify statPlayerClassKill8 displayname "夹子 职业击杀"
scoreboard objectives modify statPlayerClassKill9 displayname "千机 职业击杀"
scoreboard objectives modify statPlayerClassKill10 displayname "召唤师 职业击杀"
scoreboard objectives modify statPlayerClassKill11 displayname "魔术师 职业击杀"

scoreboard objectives modify statPlayerClassDeath1 displayname "游侠 职业死亡"
scoreboard objectives modify statPlayerClassDeath2 displayname "暗影 职业死亡"
scoreboard objectives modify statPlayerClassDeath3 displayname "突袭 职业死亡"
scoreboard objectives modify statPlayerClassDeath4 displayname "海嗣 职业死亡"
scoreboard objectives modify statPlayerClassDeath5 displayname "耀骑士 职业死亡"
scoreboard objectives modify statPlayerClassDeath6 displayname "有用之人 职业死亡"
scoreboard objectives modify statPlayerClassDeath7 displayname "牧师 职业死亡"
scoreboard objectives modify statPlayerClassDeath8 displayname "夹子 职业死亡"
scoreboard objectives modify statPlayerClassDeath9 displayname "千机 职业死亡"
scoreboard objectives modify statPlayerClassDeath10 displayname "召唤师 职业死亡"
scoreboard objectives modify statPlayerClassDeath11 displayname "魔术师 职业死亡"

scoreboard objectives add Monthly_statPlayerRound dummy "本月玩家总循环"
scoreboard objectives add Monthly_statPlayerKill dummy "本月玩家总击杀"
scoreboard objectives add Monthly_statPlayerDeath dummy "本月玩家总死亡"
scoreboard objectives add Monthly_statPlayerKD dummy "本月玩家K/D * 1k值"

scoreboard objectives modify Monthly_statPlayerClassKill1 displayname "本月游侠击杀"
scoreboard objectives modify Monthly_statPlayerClassKill2 displayname "本月暗影击杀"
scoreboard objectives modify Monthly_statPlayerClassKill3 displayname "本月突袭者击杀"
scoreboard objectives modify Monthly_statPlayerClassKill4 displayname "本月海嗣击杀"
scoreboard objectives modify Monthly_statPlayerClassKill5 displayname "本月耀骑士击杀"
scoreboard objectives modify Monthly_statPlayerClassKill6 displayname "本月有用之人击杀"
scoreboard objectives modify Monthly_statPlayerClassKill7 displayname "本月牧师击杀"
scoreboard objectives modify Monthly_statPlayerClassKill8 displayname "本月夹子击杀"
scoreboard objectives modify Monthly_statPlayerClassKill9 displayname "本月千机击杀"
scoreboard objectives modify Monthly_statPlayerClassKill10 displayname "本月召唤师击杀"
scoreboard objectives modify Monthly_statPlayerClassKill11 displayname "本月魔术师击杀"