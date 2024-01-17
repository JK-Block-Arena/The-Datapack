function pvp:state/lobby/lobby_item

setblock 16 235 0 birch_sign[rotation=2]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/function debug:jkuse/ranking_list/join_gray"},"text":"查看排行榜"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b} destroy
setblock 18 235 -2 birch_sign[rotation=10]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/function debug:jkuse/1_back_spawn"},"text":"离开排行榜"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b} destroy
setblock 24 235 -8 birch_sign[rotation=2]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function debug:jkuse/ranking_list/count"},"text":"顺序切换排行榜"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b} destroy
setblock 24 236 -6 birch_wall_sign[facing=west]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function debug:jkuse/ranking_list/count_5"},"text":"排行榜序号+5"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b} destroy
setblock 22 237 -8 birch_wall_sign[facing=south]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"black","clickEvent":{"action":"run_command","value":"/function debug:jkuse/ranking_list/get_all_scores"},"text":"获取个人数据"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b} destroy

setblock 16 236 17 oak_wall_sign[facing=north]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function debug:jkuse/combokill_exp"},"text":"旧版传奇连杀"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b} destroy
setblock 17 236 16 oak_wall_sign[facing=west]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"#FF41E7","clickEvent":{"action":"run_command","value":"/function debug:jkuse/combokill_exp2"},"text":"新版传奇连杀"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b} destroy

setblock 3 235 18 spruce_sign[rotation=8]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/function debug:jkuse/lobby_tp_battler"},"text":"点我观战"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b} destroy
setblock 0 235 16 oak_sign[rotation=10]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"color":"gold","clickEvent":{"action":"run_command","value":"/function debug:jkuse/trigger_guide"},"text":"trigger"}', '{"text":"指南","color":"green"}', '{"text":""}']}, is_waxed: 1b} destroy

setblock 9 318 8 oak_wall_sign[facing=west]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"#9100c9","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/note"},"text":"点我选择音符尾迹"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b} destroy
setblock 7 318 8 oak_wall_sign[facing=east]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":false,"color":"white","clickEvent":{"action":"run_command","value":"/function debug:jkuse/1_back_spawn"},"text":"返回大厅"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b} destroy

setblock 1037 93 1027 birch_wall_sign[facing=east]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/function modules:tip/0_tutorial/0_reset"},"text":"新人酱重置当前职业"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b} destroy

# 粒子尾迹
setblock 31 11 4 oak_wall_sign[facing=south]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/heart"},"text":"点我选择爱心尾迹"}', '{"text":"白嫖的不香嘛awa","bold":true,"italic":false,"color":"red"}', '{"text":""}']}, is_waxed: 1b} destroy
setblock 32 11 4 oak_wall_sign[facing=south]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/water"},"text":"点我选择水尾迹"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b}
setblock 33 11 4 oak_wall_sign[facing=south]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/flame"},"text":"点我选择火焰尾迹"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b}
setblock 34 11 4 oak_wall_sign[facing=south]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/rainbow"},"text":"点我选择彩色尾迹"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b}
setblock 35 11 4 oak_wall_sign[facing=south]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"#9100c9","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/note"},"text":"点我选择音符尾迹"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b}
setblock 36 11 4 oak_wall_sign[facing=south]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/cherry"},"text":"点我选择樱花尾迹"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b}
setblock 37 11 4 oak_wall_sign[facing=south]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/gold"},"text":"点我选择黄金尾迹"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b}
setblock 38 11 4 oak_wall_sign[facing=south]{front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":false,"color":"white","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/clear"},"text":"点我关闭尾迹"}', '{"text":""}', '{"text":""}']}, is_waxed: 1b}

give @s oak_sign{BlockEntityTag: {front_text: {messages: ['{"text":""}', '{"bold":true,"italic":false,"underlined":false,"color":"light_purple","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/rainbow_unlock"},"text":"点我解锁彩色尾迹"}', '{"text":"恭喜你找到了此地","bold":true,"italic":false,"color":"light_purple"}', '{"text":""}']}, is_waxed: 1b}}