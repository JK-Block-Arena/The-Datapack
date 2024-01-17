# 清理背包
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:9b}]}] inventory.0 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:10b}]}] inventory.1 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:11b}]}] inventory.2 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:12b}]}] inventory.3 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:13b}]}] inventory.4 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:14b}]}] inventory.5 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:15b}]}] inventory.6 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:16b}]}] inventory.7 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:17b}]}] inventory.8 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:18b}]}] inventory.9 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:19b}]},scores={state=2..3}] inventory.10 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:20b}]}] inventory.11 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:21b}]}] inventory.12 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:22b}]}] inventory.13 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:23b}]}] inventory.14 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:24b}]}] inventory.15 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:25b}]}] inventory.16 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:26b}]}] inventory.17 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:27b}]}] inventory.18 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:28b}]},scores={state=2..3}] inventory.19 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:29b}]},scores={state=2..3}] inventory.20 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:30b}]},scores={state=2..3}] inventory.21 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:31b}]},scores={state=2..3}] inventory.22 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:32b}]},scores={state=2..3}] inventory.23 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:33b}]}] inventory.24 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:34b}]}] inventory.25 with air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:35b}]}] inventory.26 with air

function pvp:state/train/tick16

# 解锁进度
execute as @a[gamemode=adventure] at @s run function pvp:unlock_advancements
