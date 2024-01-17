# 标记受害者
execute as @e[distance=..1.3,type=#modules:living] at @s run tag @s add fangs_victim
# 给予效果
tag @s add self_8
execute as @e[tag=fangs_victim] at @s run effect give @s unluck 1 0 true
execute as @e[tag=fangs_victim,scores={class=8}] if score @s team = @e[tag=self_8,limit=1] team run effect give @s resistance 1 1 true
execute as @e[tag=fangs_victim] if score @s team = @e[tag=self_8,limit=1] team run effect give @s resistance 1 0 true
tag @e[tag=fangs_victim] remove fangs_victim