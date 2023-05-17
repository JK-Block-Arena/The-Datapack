# 记录统计信息
# 职业击杀
execute as @s[scores={class=1}] run scoreboard players add $1 statClassKill 1
execute as @s[scores={class=2}] run scoreboard players add $2 statClassKill 1
execute as @s[scores={class=3}] run scoreboard players add $3 statClassKill 1
execute as @s[scores={class=4}] run scoreboard players add $4 statClassKill 1
execute as @s[scores={class=5}] run scoreboard players add $5 statClassKill 1
execute as @s[scores={class=6}] run scoreboard players add $6 statClassKill 1
execute as @s[scores={class=7}] run scoreboard players add $7 statClassKill 1
execute as @s[scores={class=8}] run scoreboard players add $8 statClassKill 1
execute as @s[scores={class=9}] run scoreboard players add $9 statClassKill 1
execute as @s[scores={class=10}] run scoreboard players add $10 statClassKill 1
# 职业死亡
execute if entity @a[tag=victim,scores={class=1}] run scoreboard players add $1 statClassDeath 1
execute if entity @a[tag=victim,scores={class=2}] run scoreboard players add $2 statClassDeath 1
execute if entity @a[tag=victim,scores={class=3}] run scoreboard players add $3 statClassDeath 1
execute if entity @a[tag=victim,scores={class=4}] run scoreboard players add $4 statClassDeath 1
execute if entity @a[tag=victim,scores={class=5}] run scoreboard players add $5 statClassDeath 1
execute if entity @a[tag=victim,scores={class=6}] run scoreboard players add $6 statClassDeath 1
execute if entity @a[tag=victim,scores={class=7}] run scoreboard players add $7 statClassDeath 1
execute if entity @a[tag=victim,scores={class=8}] run scoreboard players add $8 statClassDeath 1
execute if entity @a[tag=victim,scores={class=9}] run scoreboard players add $9 statClassDeath 1
execute if entity @a[tag=victim,scores={class=10}] run scoreboard players add $10 statClassDeath 1
# 职业交叉击杀
execute as @s[scores={class=1}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $1->$1 statClassCrossKill 1
execute as @s[scores={class=2}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $2->$1 statClassCrossKill 1
execute as @s[scores={class=3}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $3->$1 statClassCrossKill 1
execute as @s[scores={class=4}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $4->$1 statClassCrossKill 1
execute as @s[scores={class=5}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $5->$1 statClassCrossKill 1
execute as @s[scores={class=6}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $6->$1 statClassCrossKill 1
execute as @s[scores={class=7}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $7->$1 statClassCrossKill 1
execute as @s[scores={class=8}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $8->$1 statClassCrossKill 1
execute as @s[scores={class=9}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $9->$1 statClassCrossKill 1
execute as @s[scores={class=10}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $10->$1 statClassCrossKill 1

execute as @s[scores={class=1}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $1->$2 statClassCrossKill 1
execute as @s[scores={class=2}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $2->$2 statClassCrossKill 1
execute as @s[scores={class=3}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $3->$2 statClassCrossKill 1
execute as @s[scores={class=4}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $4->$2 statClassCrossKill 1
execute as @s[scores={class=5}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $5->$2 statClassCrossKill 1
execute as @s[scores={class=6}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $6->$2 statClassCrossKill 1
execute as @s[scores={class=7}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $7->$2 statClassCrossKill 1
execute as @s[scores={class=8}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $8->$2 statClassCrossKill 1
execute as @s[scores={class=9}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $9->$2 statClassCrossKill 1
execute as @s[scores={class=10}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $10->$2 statClassCrossKill 1

execute as @s[scores={class=1}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $1->$3 statClassCrossKill 1
execute as @s[scores={class=2}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $2->$3 statClassCrossKill 1
execute as @s[scores={class=3}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $3->$3 statClassCrossKill 1
execute as @s[scores={class=4}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $4->$3 statClassCrossKill 1
execute as @s[scores={class=5}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $5->$3 statClassCrossKill 1
execute as @s[scores={class=6}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $6->$3 statClassCrossKill 1
execute as @s[scores={class=7}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $7->$3 statClassCrossKill 1
execute as @s[scores={class=8}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $8->$3 statClassCrossKill 1
execute as @s[scores={class=9}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $9->$3 statClassCrossKill 1
execute as @s[scores={class=10}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $10->$3 statClassCrossKill 1

execute as @s[scores={class=1}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $1->$4 statClassCrossKill 1
execute as @s[scores={class=2}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $2->$4 statClassCrossKill 1
execute as @s[scores={class=3}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $3->$4 statClassCrossKill 1
execute as @s[scores={class=4}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $4->$4 statClassCrossKill 1
execute as @s[scores={class=5}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $5->$4 statClassCrossKill 1
execute as @s[scores={class=6}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $6->$4 statClassCrossKill 1
execute as @s[scores={class=7}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $7->$4 statClassCrossKill 1
execute as @s[scores={class=8}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $8->$4 statClassCrossKill 1
execute as @s[scores={class=9}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $9->$4 statClassCrossKill 1
execute as @s[scores={class=10}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $10->$4 statClassCrossKill 1

execute as @s[scores={class=1}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $1->$5 statClassCrossKill 1
execute as @s[scores={class=2}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $2->$5 statClassCrossKill 1
execute as @s[scores={class=3}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $3->$5 statClassCrossKill 1
execute as @s[scores={class=4}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $4->$5 statClassCrossKill 1
execute as @s[scores={class=5}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $5->$5 statClassCrossKill 1
execute as @s[scores={class=6}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $6->$5 statClassCrossKill 1
execute as @s[scores={class=7}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $7->$5 statClassCrossKill 1
execute as @s[scores={class=8}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $8->$5 statClassCrossKill 1
execute as @s[scores={class=9}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $9->$5 statClassCrossKill 1
execute as @s[scores={class=10}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $10->$5 statClassCrossKill 1

execute as @s[scores={class=1}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $1->$6 statClassCrossKill 1
execute as @s[scores={class=2}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $2->$6 statClassCrossKill 1
execute as @s[scores={class=3}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $3->$6 statClassCrossKill 1
execute as @s[scores={class=4}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $4->$6 statClassCrossKill 1
execute as @s[scores={class=5}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $5->$6 statClassCrossKill 1
execute as @s[scores={class=6}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $6->$6 statClassCrossKill 1
execute as @s[scores={class=7}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $7->$6 statClassCrossKill 1
execute as @s[scores={class=8}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $8->$6 statClassCrossKill 1
execute as @s[scores={class=9}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $9->$6 statClassCrossKill 1
execute as @s[scores={class=10}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $10->$6 statClassCrossKill 1

execute as @s[scores={class=1}] if entity @a[tag=victim,scores={class=7}] run scoreboard players add $1->$7 statClassCrossKill 1
execute as @s[scores={class=2}] if entity @a[tag=victim,scores={class=7}] run scoreboard players add $2->$7 statClassCrossKill 1
execute as @s[scores={class=3}] if entity @a[tag=victim,scores={class=7}] run scoreboard players add $3->$7 statClassCrossKill 1
execute as @s[scores={class=4}] if entity @a[tag=victim,scores={class=7}] run scoreboard players add $4->$7 statClassCrossKill 1
execute as @s[scores={class=5}] if entity @a[tag=victim,scores={class=7}] run scoreboard players add $5->$7 statClassCrossKill 1
execute as @s[scores={class=6}] if entity @a[tag=victim,scores={class=7}] run scoreboard players add $6->$7 statClassCrossKill 1
execute as @s[scores={class=7}] if entity @a[tag=victim,scores={class=7}] run scoreboard players add $7->$7 statClassCrossKill 1
execute as @s[scores={class=8}] if entity @a[tag=victim,scores={class=7}] run scoreboard players add $8->$7 statClassCrossKill 1
execute as @s[scores={class=9}] if entity @a[tag=victim,scores={class=7}] run scoreboard players add $9->$7 statClassCrossKill 1
execute as @s[scores={class=10}] if entity @a[tag=victim,scores={class=7}] run scoreboard players add $10->$7 statClassCrossKill 1

execute as @s[scores={class=1}] if entity @a[tag=victim,scores={class=8}] run scoreboard players add $1->$8 statClassCrossKill 1
execute as @s[scores={class=2}] if entity @a[tag=victim,scores={class=8}] run scoreboard players add $2->$8 statClassCrossKill 1
execute as @s[scores={class=3}] if entity @a[tag=victim,scores={class=8}] run scoreboard players add $3->$8 statClassCrossKill 1
execute as @s[scores={class=4}] if entity @a[tag=victim,scores={class=8}] run scoreboard players add $4->$8 statClassCrossKill 1
execute as @s[scores={class=5}] if entity @a[tag=victim,scores={class=8}] run scoreboard players add $5->$8 statClassCrossKill 1
execute as @s[scores={class=6}] if entity @a[tag=victim,scores={class=8}] run scoreboard players add $6->$8 statClassCrossKill 1
execute as @s[scores={class=7}] if entity @a[tag=victim,scores={class=8}] run scoreboard players add $7->$8 statClassCrossKill 1
execute as @s[scores={class=8}] if entity @a[tag=victim,scores={class=8}] run scoreboard players add $8->$8 statClassCrossKill 1
execute as @s[scores={class=9}] if entity @a[tag=victim,scores={class=8}] run scoreboard players add $9->$8 statClassCrossKill 1
execute as @s[scores={class=10}] if entity @a[tag=victim,scores={class=8}] run scoreboard players add $10->$8 statClassCrossKill 1

execute as @s[scores={class=1}] if entity @a[tag=victim,scores={class=9}] run scoreboard players add $1->$9 statClassCrossKill 1
execute as @s[scores={class=2}] if entity @a[tag=victim,scores={class=9}] run scoreboard players add $2->$9 statClassCrossKill 1
execute as @s[scores={class=3}] if entity @a[tag=victim,scores={class=9}] run scoreboard players add $3->$9 statClassCrossKill 1
execute as @s[scores={class=4}] if entity @a[tag=victim,scores={class=9}] run scoreboard players add $4->$9 statClassCrossKill 1
execute as @s[scores={class=5}] if entity @a[tag=victim,scores={class=9}] run scoreboard players add $5->$9 statClassCrossKill 1
execute as @s[scores={class=6}] if entity @a[tag=victim,scores={class=9}] run scoreboard players add $6->$9 statClassCrossKill 1
execute as @s[scores={class=7}] if entity @a[tag=victim,scores={class=9}] run scoreboard players add $7->$9 statClassCrossKill 1
execute as @s[scores={class=8}] if entity @a[tag=victim,scores={class=9}] run scoreboard players add $8->$9 statClassCrossKill 1
execute as @s[scores={class=9}] if entity @a[tag=victim,scores={class=9}] run scoreboard players add $9->$9 statClassCrossKill 1
execute as @s[scores={class=10}] if entity @a[tag=victim,scores={class=9}] run scoreboard players add $10->$9 statClassCrossKill 1

execute as @s[scores={class=1}] if entity @a[tag=victim,scores={class=10}] run scoreboard players add $1->$10 statClassCrossKill 1
execute as @s[scores={class=2}] if entity @a[tag=victim,scores={class=10}] run scoreboard players add $2->$10 statClassCrossKill 1
execute as @s[scores={class=3}] if entity @a[tag=victim,scores={class=10}] run scoreboard players add $3->$10 statClassCrossKill 1
execute as @s[scores={class=4}] if entity @a[tag=victim,scores={class=10}] run scoreboard players add $4->$10 statClassCrossKill 1
execute as @s[scores={class=5}] if entity @a[tag=victim,scores={class=10}] run scoreboard players add $5->$10 statClassCrossKill 1
execute as @s[scores={class=6}] if entity @a[tag=victim,scores={class=10}] run scoreboard players add $6->$10 statClassCrossKill 1
execute as @s[scores={class=7}] if entity @a[tag=victim,scores={class=10}] run scoreboard players add $7->$10 statClassCrossKill 1
execute as @s[scores={class=8}] if entity @a[tag=victim,scores={class=10}] run scoreboard players add $8->$10 statClassCrossKill 1
execute as @s[scores={class=9}] if entity @a[tag=victim,scores={class=10}] run scoreboard players add $9->$10 statClassCrossKill 1
execute as @s[scores={class=10}] if entity @a[tag=victim,scores={class=10}] run scoreboard players add $10->$10 statClassCrossKill 1
