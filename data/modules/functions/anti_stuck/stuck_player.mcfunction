execute unless block ~ ~ ~ #modules:air_or_harmful if block ~ ~1 ~ #modules:air if block ~ ~2 ~ #modules:air run tp @s ~ ~1 ~
execute unless block ~ ~-1 ~ #modules:harmful if block ~ ~ ~ #modules:air if block ~ ~1 ~ #modules:air if block ~ ~2 ~ #modules:air run tp @s ~ ~1 ~
execute unless block ~ ~-2 ~ #modules:harmful if block ~ ~-1 ~ #modules:air if block ~ ~ ~ #modules:air run tp @s ~ ~-1 ~
execute unless block ~1 ~-1 ~ #modules:harmful if block ~1 ~ ~ #modules:air if block ~1 ~1 ~ #modules:air run tp @s ~1 ~ ~
execute unless block ~-1 ~-1 ~ #modules:harmful if block ~-1 ~ ~ #modules:air if block ~-1 ~1 ~ #modules:air run tp @s ~-1 ~ ~
execute unless block ~ ~-1 ~1 #modules:harmful if block ~ ~ ~1 #modules:air if block ~ ~1 ~1 #modules:air run tp @s ~ ~ ~1
execute unless block ~ ~-1 ~-1 #modules:harmful if block ~ ~ ~-1 #modules:air if block ~ ~1 ~-1 #modules:air run tp @s ~ ~ ~-1