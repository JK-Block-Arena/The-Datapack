function pvp:state/lobby/lobby_item

setblock 16 235 0 birch_sign[rotation=2]{Text2:'[{"text":"查看排行榜","bold":true,"italic":false,"underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/function debug:jkuse/ranking_list/join_gray"}}]'} destroy
setblock 18 235 -2 birch_sign[rotation=10]{Text2:'[{"text":"离开排行榜","bold":true,"italic":false,"underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/function debug:jkuse/1_back_spawn"}}]'} destroy
setblock 24 235 -8 birch_sign[rotation=2]{Text2:'[{"text":"顺序切换排行榜","bold":true,"italic":false,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function debug:jkuse/ranking_list/count"}}]'} destroy
setblock 24 236 -6 birch_wall_sign[facing=west]{Text2:'[{"text":"排行榜序号+5","bold":true,"italic":false,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function debug:jkuse/ranking_list/count_5"}}]'} destroy
setblock 22 237 -8 birch_wall_sign[facing=south]{Text2:'[{"text":"获取个人数据","bold":true,"italic":false,"underlined":true,"color":"black","clickEvent":{"action":"run_command","value":"/function debug:jkuse/ranking_list/get_all_scores"}}]'} destroy

setblock 16 236 17 oak_wall_sign[facing=north]{Text2:'[{"text":"旧版传奇连杀","bold":true,"italic":false,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function debug:jkuse/combokill_exp"}}]'} destroy
setblock 17 236 16 oak_wall_sign[facing=west]{Text2:'[{"text":"新版传奇连杀","bold":true,"italic":false,"underlined":true,"color":"#FF41E7","clickEvent":{"action":"run_command","value":"/function debug:jkuse/combokill_exp2"}}]'} destroy

setblock 3 235 18 spruce_sign[rotation=8]{Text2:'[{"text":"点我观战","bold":true,"italic":false,"underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/function debug:jkuse/lobby_tp_battler"}}]'} destroy

setblock 9 318 8 oak_wall_sign[facing=west]{Text2:'[{"text":"点我选择音符尾迹","bold":true,"italic":false,"underlined":true,"color":"#9100c9","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/music"}}]'} destroy
setblock 7 318 8 oak_wall_sign[facing=east]{Text2:'[{"text":"返回大厅","bold":true,"italic":false,"underlined":false,"color":"white","clickEvent":{"action":"run_command","value":"/function debug:jkuse/1_back_spawn"}}]'} destroy

setblock 1037 93 1027 birch_wall_sign[facing=east]{Text2:'[{"text":"新人酱重置当前职业","bold":true,"italic":false,"underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/function modules:tip/0_tutorial/0_reset"}}]'} destroy

# 粒子尾迹

give @s oak_sign{BlockEntityTag:{Text1:'[{"text":"点我选择水尾迹","bold":true,"italic":false,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/water"}}]'}}
give @s oak_sign{BlockEntityTag:{Text1:'[{"text":"点我选择火焰尾迹","bold":true,"italic":false,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/flame"}}]'}}
give @s oak_sign{BlockEntityTag:{Text1:'[{"text":"点我选择音符尾迹","bold":true,"italic":false,"underlined":true,"color":"#9100c9","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/music"}}]'}}
give @s oak_sign{BlockEntityTag:{Text1:'[{"text":"点我选择黄金尾迹","bold":true,"italic":false,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/gold"}}]'}}

give @s oak_sign{BlockEntityTag:{Text1:'[{"text":"点我选择彩色尾迹","bold":true,"italic":false,"underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/rainbow"}}]'}}
give @s oak_sign{BlockEntityTag:{Text1:'[{"text":"点我解锁彩色尾迹","bold":true,"italic":false,"underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/rainbow_unlock"}}]',Text3:'[{"text":"恭喜你找到了此地","bold":true,"italic":false,"color":"light_purple"}]'}}

give @s oak_sign{BlockEntityTag:{Text1:'[{"text":"点我选择爱心尾迹","bold":true,"italic":false,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/heart"}}]',Text3:'[{"text":"白嫖的不香嘛awa","bold":true,"italic":false,"color":"red"}]'}}

give @s oak_sign{BlockEntityTag:{Text1:'[{"text":"点我关闭尾迹","bold":true,"italic":false,"color":"white","clickEvent":{"action":"run_command","value":"/function debug:jkuse/particle/trigger/clear"}}]'}}