# 玩家隐秘及彩蛋成就计分板
function modules:stat/hidden_and_extra

# 在线时长
scoreboard objectives add play_time_t minecraft.custom:minecraft.play_time "本月在线时长/tick"

# 玩家表现

scoreboard objectives add statPlayerElo dummy "玩家长期表现"
scoreboard objectives add statPlayerEloCount dummy "ELO 记录次数"
scoreboard objectives add statPlayerKd dummy "玩家短期表现"
scoreboard objectives add statPlayerLevel dummy "玩家短期等级"

# 玩家统计
scoreboard objectives add Monthly_statPlayerRound dummy "本月玩家总循环"
scoreboard objectives add Monthly_statPlayerKill dummy "本月玩家总击杀"
scoreboard objectives add Monthly_statPlayerDeath dummy "本月玩家总死亡"
scoreboard objectives add Monthly_statPlayerKD dummy "本月玩家K/D * 1k值"
scoreboard objectives add Monthly_statPlayerKD_1 dummy
scoreboard objectives add Monthly_statPlayerKD_2 dummy
scoreboard objectives add Monthly_statPlayerClassKill1 dummy "本月游侠击杀"
scoreboard objectives add Monthly_statPlayerClassKill2 dummy "本月暗影击杀"
scoreboard objectives add Monthly_statPlayerClassKill3 dummy "本月突袭者击杀"
scoreboard objectives add Monthly_statPlayerClassKill4 dummy "本月海嗣击杀"
scoreboard objectives add Monthly_statPlayerClassKill5 dummy "本月耀骑士击杀"
scoreboard objectives add Monthly_statPlayerClassKill6 dummy "本月有用之人击杀"
scoreboard objectives add Monthly_statPlayerClassKill7 dummy "本月牧师击杀"
scoreboard objectives add Monthly_statPlayerClassKill8 dummy "本月夹子击杀"
scoreboard objectives add Monthly_statPlayerClassKill9 dummy "本月千机击杀"
scoreboard objectives add Monthly_statPlayerClassKill10 dummy "本月召唤师击杀"
scoreboard objectives add Monthly_statPlayerClassKill99 dummy "本月一击必杀击杀"

scoreboard objectives add statPlayerRound dummy "玩家总循环"
scoreboard objectives add statPlayerKill dummy "玩家总击杀"
scoreboard objectives add statPlayerDeath dummy "玩家总死亡"
scoreboard objectives add statPlayerKD dummy "玩家K/D * 1k值"
scoreboard objectives add statPlayerKD_1 dummy
scoreboard objectives add statPlayerKD_2 dummy
scoreboard objectives add statPlayerDeathReal dummy "玩家包含自杀的总死亡"

scoreboard objectives add statPlayerCombo2 dummy "2 连杀次数"
scoreboard objectives add statPlayerCombo3 dummy "3 连杀次数"
scoreboard objectives add statPlayerCombo4 dummy "4 连杀次数"
scoreboard objectives add statPlayerCombo5 dummy "5 连杀次数"
scoreboard objectives add statPlayerCombo6 dummy "6 连杀次数"
scoreboard objectives add statPlayerCombo7 dummy "7 连杀次数"
scoreboard objectives add statPlayerCombo_much dummy "传奇 连杀次数"

scoreboard objectives add statPlayerClassKill1 dummy "玩家职业 1 击杀"
scoreboard objectives add statPlayerClassKill2 dummy "玩家职业 2 击杀"
scoreboard objectives add statPlayerClassKill3 dummy "玩家职业 3 击杀"
scoreboard objectives add statPlayerClassKill4 dummy "玩家职业 4 击杀"
scoreboard objectives add statPlayerClassKill5 dummy "玩家职业 5 击杀"
scoreboard objectives add statPlayerClassKill6 dummy "玩家职业 6 击杀"
scoreboard objectives add statPlayerClassKill7 dummy "玩家职业 7 击杀"
scoreboard objectives add statPlayerClassKill8 dummy "玩家职业 8 击杀"
scoreboard objectives add statPlayerClassKill9 dummy "玩家职业 9 击杀"
scoreboard objectives add statPlayerClassKill10 dummy "玩家职业 10 击杀"

scoreboard objectives add statPlayerClassDeath1 dummy "玩家职业 1 死亡"
scoreboard objectives add statPlayerClassDeath2 dummy "玩家职业 2 死亡"
scoreboard objectives add statPlayerClassDeath3 dummy "玩家职业 3 死亡"
scoreboard objectives add statPlayerClassDeath4 dummy "玩家职业 4 死亡"
scoreboard objectives add statPlayerClassDeath5 dummy "玩家职业 5 死亡"
scoreboard objectives add statPlayerClassDeath6 dummy "玩家职业 6 死亡"
scoreboard objectives add statPlayerClassDeath7 dummy "玩家职业 7 死亡"
scoreboard objectives add statPlayerClassDeath8 dummy "玩家职业 8 死亡"
scoreboard objectives add statPlayerClassDeath9 dummy "玩家职业 9 死亡"
scoreboard objectives add statPlayerClassDeath10 dummy "玩家职业 10 死亡"

# 职业统计

scoreboard objectives add statClassKill dummy "职业总击杀"
scoreboard players add $1 statClassKill 0
scoreboard players add $2 statClassKill 0
scoreboard players add $3 statClassKill 0
scoreboard players add $4 statClassKill 0
scoreboard players add $5 statClassKill 0
scoreboard players add $6 statClassKill 0
scoreboard players add $7 statClassKill 0
scoreboard players add $8 statClassKill 0
scoreboard players add $9 statClassKill 0
scoreboard players add $10 statClassKill 0

scoreboard objectives add statClassDeath dummy "职业总死亡"
scoreboard players add $1 statClassDeath 0
scoreboard players add $2 statClassDeath 0
scoreboard players add $3 statClassDeath 0
scoreboard players add $4 statClassDeath 0
scoreboard players add $5 statClassDeath 0
scoreboard players add $6 statClassDeath 0
scoreboard players add $7 statClassDeath 0
scoreboard players add $8 statClassDeath 0
scoreboard players add $9 statClassDeath 0
scoreboard players add $10 statClassDeath 0

scoreboard objectives add statClassSelectReal dummy "职业选择次数"
scoreboard players add $1 statClassSelectReal 0
scoreboard players add $2 statClassSelectReal 0
scoreboard players add $3 statClassSelectReal 0
scoreboard players add $4 statClassSelectReal 0
scoreboard players add $5 statClassSelectReal 0
scoreboard players add $6 statClassSelectReal 0
scoreboard players add $7 statClassSelectReal 0
scoreboard players add $8 statClassSelectReal 0
scoreboard players add $9 statClassSelectReal 0
scoreboard players add $10 statClassSelectReal 0

scoreboard objectives add statClassCrossKill dummy "职业交叉击杀"
scoreboard players add $1->$1 statClassCrossKill 0
scoreboard players add $2->$1 statClassCrossKill 0
scoreboard players add $3->$1 statClassCrossKill 0
scoreboard players add $4->$1 statClassCrossKill 0
scoreboard players add $5->$1 statClassCrossKill 0
scoreboard players add $6->$1 statClassCrossKill 0
scoreboard players add $7->$1 statClassCrossKill 0
scoreboard players add $8->$1 statClassCrossKill 0
scoreboard players add $9->$1 statClassCrossKill 0
scoreboard players add $10->$1 statClassCrossKill 0
scoreboard players add $1->$2 statClassCrossKill 0
scoreboard players add $2->$2 statClassCrossKill 0
scoreboard players add $3->$2 statClassCrossKill 0
scoreboard players add $4->$2 statClassCrossKill 0
scoreboard players add $5->$2 statClassCrossKill 0
scoreboard players add $6->$2 statClassCrossKill 0
scoreboard players add $7->$2 statClassCrossKill 0
scoreboard players add $8->$2 statClassCrossKill 0
scoreboard players add $9->$2 statClassCrossKill 0
scoreboard players add $10->$2 statClassCrossKill 0
scoreboard players add $1->$3 statClassCrossKill 0
scoreboard players add $2->$3 statClassCrossKill 0
scoreboard players add $3->$3 statClassCrossKill 0
scoreboard players add $4->$3 statClassCrossKill 0
scoreboard players add $5->$3 statClassCrossKill 0
scoreboard players add $6->$3 statClassCrossKill 0
scoreboard players add $7->$3 statClassCrossKill 0
scoreboard players add $8->$3 statClassCrossKill 0
scoreboard players add $9->$3 statClassCrossKill 0
scoreboard players add $10->$3 statClassCrossKill 0
scoreboard players add $1->$4 statClassCrossKill 0
scoreboard players add $2->$4 statClassCrossKill 0
scoreboard players add $3->$4 statClassCrossKill 0
scoreboard players add $4->$4 statClassCrossKill 0
scoreboard players add $5->$4 statClassCrossKill 0
scoreboard players add $6->$4 statClassCrossKill 0
scoreboard players add $7->$4 statClassCrossKill 0
scoreboard players add $8->$4 statClassCrossKill 0
scoreboard players add $9->$4 statClassCrossKill 0
scoreboard players add $10->$4 statClassCrossKill 0
scoreboard players add $1->$5 statClassCrossKill 0
scoreboard players add $2->$5 statClassCrossKill 0
scoreboard players add $3->$5 statClassCrossKill 0
scoreboard players add $4->$5 statClassCrossKill 0
scoreboard players add $5->$5 statClassCrossKill 0
scoreboard players add $6->$5 statClassCrossKill 0
scoreboard players add $7->$5 statClassCrossKill 0
scoreboard players add $8->$5 statClassCrossKill 0
scoreboard players add $9->$5 statClassCrossKill 0
scoreboard players add $10->$5 statClassCrossKill 0
scoreboard players add $1->$6 statClassCrossKill 0
scoreboard players add $2->$6 statClassCrossKill 0
scoreboard players add $3->$6 statClassCrossKill 0
scoreboard players add $4->$6 statClassCrossKill 0
scoreboard players add $5->$6 statClassCrossKill 0
scoreboard players add $6->$6 statClassCrossKill 0
scoreboard players add $7->$6 statClassCrossKill 0
scoreboard players add $8->$6 statClassCrossKill 0
scoreboard players add $9->$6 statClassCrossKill 0
scoreboard players add $10->$6 statClassCrossKill 0
scoreboard players add $1->$7 statClassCrossKill 0
scoreboard players add $2->$7 statClassCrossKill 0
scoreboard players add $3->$7 statClassCrossKill 0
scoreboard players add $4->$7 statClassCrossKill 0
scoreboard players add $5->$7 statClassCrossKill 0
scoreboard players add $6->$7 statClassCrossKill 0
scoreboard players add $7->$7 statClassCrossKill 0
scoreboard players add $8->$7 statClassCrossKill 0
scoreboard players add $9->$7 statClassCrossKill 0
scoreboard players add $10->$7 statClassCrossKill 0
scoreboard players add $1->$8 statClassCrossKill 0
scoreboard players add $2->$8 statClassCrossKill 0
scoreboard players add $3->$8 statClassCrossKill 0
scoreboard players add $4->$8 statClassCrossKill 0
scoreboard players add $5->$8 statClassCrossKill 0
scoreboard players add $6->$8 statClassCrossKill 0
scoreboard players add $7->$8 statClassCrossKill 0
scoreboard players add $8->$8 statClassCrossKill 0
scoreboard players add $9->$8 statClassCrossKill 0
scoreboard players add $10->$8 statClassCrossKill 0
scoreboard players add $1->$9 statClassCrossKill 0
scoreboard players add $2->$9 statClassCrossKill 0
scoreboard players add $3->$9 statClassCrossKill 0
scoreboard players add $4->$9 statClassCrossKill 0
scoreboard players add $5->$9 statClassCrossKill 0
scoreboard players add $6->$9 statClassCrossKill 0
scoreboard players add $7->$9 statClassCrossKill 0
scoreboard players add $8->$9 statClassCrossKill 0
scoreboard players add $9->$9 statClassCrossKill 0
scoreboard players add $10->$9 statClassCrossKill 0
scoreboard players add $1->$10 statClassCrossKill 0
scoreboard players add $2->$10 statClassCrossKill 0
scoreboard players add $3->$10 statClassCrossKill 0
scoreboard players add $4->$10 statClassCrossKill 0
scoreboard players add $5->$10 statClassCrossKill 0
scoreboard players add $6->$10 statClassCrossKill 0
scoreboard players add $7->$10 statClassCrossKill 0
scoreboard players add $8->$10 statClassCrossKill 0
scoreboard players add $9->$10 statClassCrossKill 0
scoreboard players add $10->$10 statClassCrossKill 0