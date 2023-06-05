# 检查：至少有 2 个人才触发
execute store result score #count mem if entity @a[scores={state=2,team=1..4}]
execute if score #count mem matches 2.. run function modules:mutation/special/7_trigger_real