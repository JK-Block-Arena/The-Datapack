execute as @s[tag=!9_arrow] run execute store result score #random mem run random value 1..7
execute as @s[tag=!9_arrow] run scoreboard players operation @s 9_firework = #random mem

item replace entity @s[team=lobby,scores={9_firework=1},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充普通款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;16777215]},{Type:0b,Colors:[I;16777215]}]}}}],HideFlags:63}
item replace entity @s[team=lobby,scores={9_firework=2},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充加强款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;16777215]},{Type:0b,Colors:[I;16777215]},{Type:0b,Colors:[I;16777215]},{Type:0b,Colors:[I;16777215]}]}}}],HideFlags:63}
item replace entity @s[team=lobby,scores={9_firework=3},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充超强款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;16777215]},{Type:0b,Colors:[I;16777215]},{Type:0b,Colors:[I;16777215]},{Type:0b,Colors:[I;16777215]},{Type:0b,Colors:[I;16777215]},{Type:0b,Colors:[I;16777215]}]}}}],HideFlags:63}
item replace entity @s[team=lobby,scores={9_firework=4},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充大型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:1b,Colors:[I;16777215]},{Type:1b,Colors:[I;16777215]}]}}}],HideFlags:63}
item replace entity @s[team=lobby,scores={9_firework=5},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充星型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:2b,Colors:[I;16777215]},{Type:2b,Colors:[I;16777215]}]}}}],HideFlags:63}
item replace entity @s[team=lobby,scores={9_firework=6},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充苦力怕型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:3b,Colors:[I;16777215]},{Type:3b,Colors:[I;16777215]}]}}}],HideFlags:63}
item replace entity @s[team=lobby,scores={9_firework=7},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充爆裂型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:4b,Colors:[I;16777215]},{Type:4b,Colors:[I;16777215]}]}}}],HideFlags:63}

item replace entity @s[team=red,scores={9_firework=1},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充普通款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]}]}}}],HideFlags:63}
item replace entity @s[team=red,scores={9_firework=2},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充加强款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]}]}}}],HideFlags:63}
item replace entity @s[team=red,scores={9_firework=3},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充超强款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]}]}}}],HideFlags:63}
item replace entity @s[team=red,scores={9_firework=4},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充大型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:1b,Colors:[I;11743532]},{Type:1b,Colors:[I;11743532]}]}}}],HideFlags:63}
item replace entity @s[team=red,scores={9_firework=5},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充星型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:2b,Colors:[I;11743532]},{Type:2b,Colors:[I;11743532]}]}}}],HideFlags:63}
item replace entity @s[team=red,scores={9_firework=6},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充苦力怕型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:3b,Colors:[I;11743532]},{Type:3b,Colors:[I;11743532]}]}}}],HideFlags:63}
item replace entity @s[team=red,scores={9_firework=7},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充爆裂型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:4b,Colors:[I;11743532]},{Type:4b,Colors:[I;11743532]}]}}}],HideFlags:63}

item replace entity @s[team=blue,scores={9_firework=1},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充普通款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]}]}}}],HideFlags:63}
item replace entity @s[team=blue,scores={9_firework=2},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充加强款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]}]}}}],HideFlags:63}
item replace entity @s[team=blue,scores={9_firework=3},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充超强款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]}]}}}],HideFlags:63}
item replace entity @s[team=blue,scores={9_firework=4},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充大型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:1b,Colors:[I;1186264]},{Type:1b,Colors:[I;1186264]}]}}}],HideFlags:63}
item replace entity @s[team=blue,scores={9_firework=5},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充星型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:2b,Colors:[I;1186264]},{Type:2b,Colors:[I;1186264]}]}}}],HideFlags:63}
item replace entity @s[team=blue,scores={9_firework=6},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充苦力怕型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:3b,Colors:[I;1186264]},{Type:3b,Colors:[I;1186264]}]}}}],HideFlags:63}
item replace entity @s[team=blue,scores={9_firework=7},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充爆裂型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:4b,Colors:[I;1186264]},{Type:4b,Colors:[I;1186264]}]}}}],HideFlags:63}

item replace entity @s[team=green,scores={9_firework=1},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充普通款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;4312372]},{Type:0b,Colors:[I;4312372]}]}}}],HideFlags:63}
item replace entity @s[team=green,scores={9_firework=2},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充加强款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;4312372]},{Type:0b,Colors:[I;4312372]},{Type:0b,Colors:[I;4312372]},{Type:0b,Colors:[I;4312372]}]}}}],HideFlags:63}
item replace entity @s[team=green,scores={9_firework=3},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充超强款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;4312372]},{Type:0b,Colors:[I;4312372]},{Type:0b,Colors:[I;4312372]},{Type:0b,Colors:[I;4312372]},{Type:0b,Colors:[I;4312372]},{Type:0b,Colors:[I;4312372]}]}}}],HideFlags:63}
item replace entity @s[team=green,scores={9_firework=4},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充大型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:1b,Colors:[I;4312372]},{Type:1b,Colors:[I;4312372]}]}}}],HideFlags:63}
item replace entity @s[team=green,scores={9_firework=5},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充星型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:2b,Colors:[I;4312372]},{Type:2b,Colors:[I;4312372]}]}}}],HideFlags:63}
item replace entity @s[team=green,scores={9_firework=6},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充苦力怕型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:3b,Colors:[I;4312372]},{Type:3b,Colors:[I;4312372]}]}}}],HideFlags:63}
item replace entity @s[team=green,scores={9_firework=7},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充爆裂型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:4b,Colors:[I;4312372]},{Type:4b,Colors:[I;4312372]}]}}}],HideFlags:63}

item replace entity @s[team=yellow,scores={9_firework=1},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充普通款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;14602026]},{Type:0b,Colors:[I;14602026]}]}}}],HideFlags:63}
item replace entity @s[team=yellow,scores={9_firework=2},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充加强款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;14602026]},{Type:0b,Colors:[I;14602026]},{Type:0b,Colors:[I;14602026]},{Type:0b,Colors:[I;14602026]}]}}}],HideFlags:63}
item replace entity @s[team=yellow,scores={9_firework=3},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充超强款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;14602026]},{Type:0b,Colors:[I;14602026]},{Type:0b,Colors:[I;14602026]},{Type:0b,Colors:[I;14602026]},{Type:0b,Colors:[I;14602026]},{Type:0b,Colors:[I;14602026]}]}}}],HideFlags:63}
item replace entity @s[team=yellow,scores={9_firework=4},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充大型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:1b,Colors:[I;14602026]},{Type:1b,Colors:[I;14602026]}]}}}],HideFlags:63}
item replace entity @s[team=yellow,scores={9_firework=5},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充星型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:2b,Colors:[I;14602026]},{Type:2b,Colors:[I;14602026]}]}}}],HideFlags:63}
item replace entity @s[team=yellow,scores={9_firework=6},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充苦力怕型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:3b,Colors:[I;14602026]},{Type:3b,Colors:[I;14602026]}]}}}],HideFlags:63}
item replace entity @s[team=yellow,scores={9_firework=7},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充爆裂型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:4b,Colors:[I;14602026]},{Type:4b,Colors:[I;14602026]}]}}}],HideFlags:63}

item replace entity @s[team=red_v1,scores={9_firework=1},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充普通款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]}]}}}],HideFlags:63}
item replace entity @s[team=red_v1,scores={9_firework=2},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充加强款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]}]}}}],HideFlags:63}
item replace entity @s[team=red_v1,scores={9_firework=3},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充超强款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]},{Type:0b,Colors:[I;11743532]}]}}}],HideFlags:63}
item replace entity @s[team=red_v1,scores={9_firework=4},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充大型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:1b,Colors:[I;11743532]},{Type:1b,Colors:[I;11743532]}]}}}],HideFlags:63}
item replace entity @s[team=red_v1,scores={9_firework=5},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充星型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:2b,Colors:[I;11743532]},{Type:2b,Colors:[I;11743532]}]}}}],HideFlags:63}
item replace entity @s[team=red_v1,scores={9_firework=6},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充苦力怕型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:3b,Colors:[I;11743532]},{Type:3b,Colors:[I;11743532]}]}}}],HideFlags:63}
item replace entity @s[team=red_v1,scores={9_firework=7},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充爆裂型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:4b,Colors:[I;11743532]},{Type:4b,Colors:[I;11743532]}]}}}],HideFlags:63}

item replace entity @s[team=blue_v1,scores={9_firework=1},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充普通款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]}]}}}],HideFlags:63}
item replace entity @s[team=blue_v1,scores={9_firework=2},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充加强款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]}]}}}],HideFlags:63}
item replace entity @s[team=blue_v1,scores={9_firework=3},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充超强款烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]},{Type:0b,Colors:[I;1186264]}]}}}],HideFlags:63}
item replace entity @s[team=blue_v1,scores={9_firework=4},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充大型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:1b,Colors:[I;1186264]},{Type:1b,Colors:[I;1186264]}]}}}],HideFlags:63}
item replace entity @s[team=blue_v1,scores={9_firework=5},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充星型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:2b,Colors:[I;1186264]},{Type:2b,Colors:[I;1186264]}]}}}],HideFlags:63}
item replace entity @s[team=blue_v1,scores={9_firework=6},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充苦力怕型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:3b,Colors:[I;1186264]},{Type:3b,Colors:[I;1186264]}]}}}],HideFlags:63}
item replace entity @s[team=blue_v1,scores={9_firework=7},nbt=!{Inventory:[{Slot:-106b,tag:{CustomModelData:113}}]}] weapon.offhand with crossbow{CustomModelData:913,Unbreakable:1b,Enchantments:[{id:"quick_charge",lvl:2}],display:{Name:'{"text":"重弩 [已填充爆裂型烟花火箭]","italic": false,"color":"white"}',Lore:['[{"text":"箭装载后可以迅速射出","color":"gray","italic": false}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:904,Fireworks:{Flight:1b,Explosions:[{Type:4b,Colors:[I;1186264]},{Type:4b,Colors:[I;1186264]}]}}}],HideFlags:63}