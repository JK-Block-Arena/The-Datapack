scoreboard players add $skill_friendly_fire debug 1
execute if score $skill_friendly_fire debug matches 2.. run scoreboard players set $skill_friendly_fire debug 0

execute if score $skill_friendly_fire debug matches 0 run team modify red friendlyFire false
execute if score $skill_friendly_fire debug matches 0 run team modify blue friendlyFire false
execute if score $skill_friendly_fire debug matches 0 run team modify green friendlyFire false
execute if score $skill_friendly_fire debug matches 0 run team modify yellow friendlyFire false
execute if score $skill_friendly_fire debug matches 1 run team modify red friendlyFire true
execute if score $skill_friendly_fire debug matches 1 run team modify blue friendlyFire true
execute if score $skill_friendly_fire debug matches 1 run team modify green friendlyFire true
execute if score $skill_friendly_fire debug matches 1 run team modify yellow friendlyFire true