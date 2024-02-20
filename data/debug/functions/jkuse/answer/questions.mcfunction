# 答对结算
tag @a remove right_answer
execute if score #question mem matches 2 run tag @a[scores={answer=1}] add right_answer
execute if score #question mem matches 3 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 4 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 5 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 6 run tag @a[scores={answer=3}] add right_answer
execute if score #question mem matches 7 run tag @a[scores={answer=3}] add right_answer
execute if score #question mem matches 8 run tag @a[scores={answer=3}] add right_answer
execute if score #question mem matches 9 run tag @a[scores={answer=3}] add right_answer
execute if score #question mem matches 10 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 11 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 12 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 13 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 14 run tag @a[scores={answer=4}] add right_answer
execute if score #question mem matches 15 run tag @a[scores={answer=1}] add right_answer
execute if score #question mem matches 16 run tag @a[scores={answer=1}] add right_answer
execute if score #question mem matches 17 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 18 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 19 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 20 run tag @a[scores={answer=4}] add right_answer
execute if score #question mem matches 21 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 22 run tag @a[scores={answer=3}] add right_answer
execute if score #question mem matches 23 run tag @a[scores={answer=3}] add right_answer
execute if score #question mem matches 24 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 25 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 26 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 27 run tag @a[scores={answer=3}] add right_answer
execute if score #question mem matches 28 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 29 run tag @a[scores={answer=2}] add right_answer
execute if score #question mem matches 30 run tag @a[scores={answer=4}] add right_answer
execute if score #question mem matches 31 run tag @a[scores={answer=3}] add right_answer
scoreboard players add @a[tag=right_answer] answer_right 1

# 题目
tag @a remove answered
scoreboard players reset @a answer
scoreboard players enable @a answer
tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score #question mem matches 2.. run tellraw @a[tag=right_answer] {"text": "你答对了上题！","color": "green"}
execute if score #question mem matches 2.. run playsound entity.experience_orb.pickup player @a[tag=right_answer]
execute if score #question mem matches 2.. run tellraw @a[tag=!right_answer] {"text": "你答错了上题！","color": "red"}
execute if score #question mem matches 2.. run playsound entity.villager.no player @a[tag=!right_answer]

# 提问
execute if score #question mem matches 1..30 run tellraw @a ["",{"text": "第 ","color": "aqua","bold": true},{"score":{"name": "#question","objective": "mem"},"color": "aqua","bold": true},{"text": " 题","color": "aqua","bold": true}]

execute if score #question mem matches 1 run tellraw @a "在beta1.8前，Notch死亡时会额外掉落？\nA.苹果 B.皮革 C.面包 D.生猪肉"
execute if score #question mem matches 2 run tellraw @a "与 潮涌核心 稀有度相同的物品是：\nA.命令方块矿车 B.cat-音乐唱片 C.海洋之心 D.山羊角"
execute if score #question mem matches 3 run tellraw @a "下列能 直接 让多个非红石相关相邻完整方块使侦测器产生红石信号的方块是？\nA.石头 B.木头 C.圆石 D.木板"
execute if score #question mem matches 4 run tellraw @a "从主世界进入末地与从下界进入末地生成的黑曜石平台高度差为？\nA.0 B.1 C.2 D.4"
execute if score #question mem matches 5 run tellraw @a "使用命令 /tick rate 800 后，玩家在水上开船时会发生什么？\nA.船开的飞快 B.船变慢了 C.船是正常的 D.命令执行失败"
execute if score #question mem matches 6 run tellraw @a "虚空平台自然生成时，它的中心圆石坐标是？\nA.(0 0 0) B.(0 -61 0) C.(8 -61 8) D.(-8 -61 -8)"
execute if score #question mem matches 7 run tellraw @a "\"下界合金楼梯\"出现在哪个愚人节版本？\nA.一次一个方块更新 B.爱与抱抱更新 C.终极内容更新 D.投票更新"
execute if score #question mem matches 8 run tellraw @a "能击退玩家的实体有：\na.爆炸的烟花火箭 b.带火的雪球 c.烈焰人发射的火焰弹 d.避雷针引来的闪电\nA.ad B.bc C.ac D.bd"
execute if score #question mem matches 9 run tellraw @a "\"威廉与境界\"指的是？（老版本译名相关）\nA.多人游戏 B.领域服 C.超级秘密设置 D.我的世界"
execute if score #question mem matches 10 run tellraw @a "\"HIM\"是一个传说，那么 H 指的是：\nA.Herobroue B.Herobrine C.Helpmine D.Herobrain"
execute if score #question mem matches 11 run tellraw @a "以下哪个生物不会对玩家造成伤害：\nA.羊驼 B.狐狸 C.村民 D.熊猫"
execute if score #question mem matches 12 run tellraw @a "以下哪种物品佩戴在玩家头上时，没有特殊造型：\nA.拴绳 B.拉杆 C.羽毛 D.生鳕鱼"
execute if score #question mem matches 13 run tellraw @a "除了玩家，以下哪种生物会获得 反胃 效果？\nA.蜜蜂蛰了玩家后 B.溺尸转换为僵尸时\nC.村民转换成僵尸村民时 D.猪灵转化为僵尸猪灵时"
execute if score #question mem matches 14 run tellraw @a "给棕色哞菇喂火把花再用闪电劈过后用碗接起，会得到什么效果的蜜汁炖菜？\nA.夜视 B.抗火 C.饱和 D.没有效果"
execute if score #question mem matches 15 run tellraw @a "下列哪一项标签定义的方块不会阻断对附魔台的增益？\nA.#replaceable B.#replaceable_plants\nC.#replaceable_enchantment D.#enchatment_replaceable"
execute if score #question mem matches 16 run tellraw @a "下列哪种生物是原版自然可生成的？\nA.藤壶 B.夜空之怪 C.幻术师 D.僵尸马"
execute if score #question mem matches 17 run tellraw @a "与 美西螈 并肩作战后，会清除以下哪种状态效果？\nA.凋零 B.挖掘疲劳 C.中毒 D.虚弱"
execute if score #question mem matches 18 run tellraw @a "以下哪款游戏没被MC闪烁标语提到过？\nA.骑马与砍杀 B.死亡细胞 C.地狱边境 D.僵尸毁灭工程"
execute if score #question mem matches 19 run tellraw @a "以下哪对生物在 任何 情况下都不会造成敌对：\nA.末影龙与末影人 B.铁傀儡与村民 C.凋灵与坚守者 D.狐狸与羊"
execute if score #question mem matches 20 run tellraw @a "以下哪两种方法可以酿造出瞬间伤害药水\na.先在粗制药水里加发酵蛛眼，再加闪烁的西瓜\nb.先在粗制药水里加闪烁的西瓜，再加发酵蛛眼\nc.先在粗制药水里加发酵蛛眼，再加发酵蛛眼\nd.先在粗制药水里加蜘蛛眼，再加发酵蛛眼\nA.ac B.bd C.ab D.cd"
execute if score #question mem matches 21 run tellraw @a ["",{"text": "现在开始，全为JK魔改竞技场相关内容！","color": "green","bold": true},"\n\n下列职业中，没有昼夜冷却区分的是？\nA.海嗣 B.有用之人 C.千机 D.召唤师"]
execute if score #question mem matches 22 run tellraw @a "服务器里有几款可选粒子？（不算无粒子）\nA.5 B.6 C.7 D.8"
execute if score #question mem matches 23 run tellraw @a "目前已无法收集到的彩蛋进度是什么？\nA.菲律宾炸鱼队 B.Sky?Space! C.一箭双雕 D.Believer"
execute if score #question mem matches 24 run tellraw @a "在默认启用的地图中，地图作者 Joseph3094 有多少张单人地图？\nA.3 B.4 C.5 D.6"
execute if score #question mem matches 25 run tellraw @a "能组成“袭击”相关要素的职业有：\na.游侠 b.突袭者 c.耀骑士 d.牧师 e.夹子 f.千机 g.召唤师 h.魔术师\nA.abcde B.bdefg C.bdegh D.acdef"
execute if score #question mem matches 26 run tellraw @a "包括未启用的，锥盔总共写了几个 新的 突变？\nA.3 B.4 C.5 D.6"
execute if score #question mem matches 27 run tellraw @a "《诡秘之主》世界观中，“占卜家”序列7的名称为？\nA.牧师 B.魔术师 C.召唤师 D.诡秘之主"
execute if score #question mem matches 28 run tellraw @a "哪些地图 曾经 启用过？\na.玄素 b.球场 c.方块 d.四季 e.海岛\nA.ae B.ac C.ace D.abce"
execute if score #question mem matches 29 run tellraw @a "含有Rick彩蛋的地图有？\na.古堡 b.沙滩 c.冰树 d.瀑布 e.丛林 f.商店 g.村庄\nA.adeg B.acdf C.bceg D.bcfg"
execute if score #question mem matches 30 run tellraw @a "这个服务器开了多久了？\nA.1年 B.1坤年 C.644天 D.我不知道"

execute if score #question mem matches 1..30 run tellraw @a ["",{"text": "\n你的选择是：\n"},{"text": "[A]","color": "yellow","underlined": true,"clickEvent": {"action":"run_command","value": "/trigger answer set 1"}},"  ",{"text": "[B]","color": "yellow","underlined": true,"clickEvent": {"action":"run_command","value": "/trigger answer set 2"}},"  ",{"text": "[C]","color": "yellow","underlined": true,"clickEvent": {"action":"run_command","value": "/trigger answer set 3"}},"  ",{"text": "[D]","color": "yellow","underlined": true,"clickEvent": {"action":"run_command","value": "/trigger answer set 4"}}]