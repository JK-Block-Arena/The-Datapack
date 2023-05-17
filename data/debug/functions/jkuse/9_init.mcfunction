# reload
tellraw @a [{"text": " ❇  准备重置游戏中..."}]
schedule function debug:init 1s replace
schedule function debug:jkuse/jk_init 2s replace
#schedule function debug:jkuse/xmas/init 3s replace