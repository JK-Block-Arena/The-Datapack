scoreboard players set $skill_friendly_fire debug 0
function debug:trigger/skill_friendly_fire
scoreboard players set $track_damage debug 0
function debug:trigger/track_damage
scoreboard players set $skill_respawn debug 0
function debug:trigger/skill_respawn
scoreboard players set $skill_cd debug 2
function debug:trigger/skill_cd
scoreboard players set $mutation_speed debug 1
function debug:trigger/mutation_speed
scoreboard players set $info_ignore_afk debug 0
function debug:trigger/info_ignore_afk

function debug:prepare

tp @a JK137

#effect give @a regeneration infinite 9
