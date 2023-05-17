title @a[scores={state=1..2}] actionbar {"color":"gold","text":"⚠ 队伍人数差距过大","bold":true}
execute if score #red mem = #max mem run title @a[scores={state=1..2},team=red] actionbar {"color":"gold","text":"⚠ 当前队伍人数过多","bold":true}
execute if score #blue mem = #max mem run title @a[scores={state=1..2},team=blue] actionbar {"color":"gold","text":"⚠ 当前队伍人数过多","bold":true}
execute if score #green mem = #max mem run title @a[scores={state=1..2},team=green] actionbar {"color":"gold","text":"⚠ 当前队伍人数过多","bold":true}
execute if score #yellow mem = #max mem run title @a[scores={state=1..2},team=yellow] actionbar {"color":"gold","text":"⚠ 当前队伍人数过多","bold":true}