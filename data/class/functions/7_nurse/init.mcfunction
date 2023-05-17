scoreboard objectives add 7_tip dummy

scoreboard objectives remove believer_book
scoreboard objectives add believer_book trigger

scoreboard objectives remove potion_use
scoreboard objectives add potion_use minecraft.used:minecraft.potion "检测饮药水"

scoreboard objectives remove potion_throw
scoreboard objectives add potion_throw minecraft.used:minecraft.splash_potion "检测丢药水"

scoreboard objectives remove 7_heal_storage
scoreboard objectives add 7_heal_storage dummy "神圣 存储"
scoreboard objectives remove 7_heal_cd
scoreboard objectives add 7_heal_cd dummy "神圣 冷却"

scoreboard objectives remove 7_strength_storage
scoreboard objectives add 7_strength_storage dummy "勇猛 存储"
scoreboard objectives remove 7_strength_cd
scoreboard objectives add 7_strength_cd dummy "勇猛 冷却"

scoreboard objectives remove 7_turtle_storage
scoreboard objectives add 7_turtle_storage dummy "保护 存储"
scoreboard objectives remove 7_turtle_cd
scoreboard objectives add 7_turtle_cd dummy "保护 冷却"

scoreboard objectives remove 7_damage_storage
scoreboard objectives add 7_damage_storage dummy "净化 存储"
scoreboard objectives remove 7_damage_cd
scoreboard objectives add 7_damage_cd dummy "净化 冷却"

scoreboard objectives remove 7_eye_cd
scoreboard objectives add 7_eye_cd dummy "支援 冷却"
scoreboard objectives remove 7_eye_storage
scoreboard objectives add 7_eye_storage dummy "支援 存储"
