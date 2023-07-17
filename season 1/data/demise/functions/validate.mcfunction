execute as @p[scores={lives=4}] run scoreboard players set @s lives 3

execute as @p[scores={death=0,lives=0}] run scoreboard players set @s lives 3
execute as @p[scores={death=0,lives=1}] run scoreboard players set @s lives 3
execute as @p[scores={death=0,lives=2}] run scoreboard players set @s lives 3

execute as @p[scores={death=1,lives=3}] run scoreboard players set @s lives 2
execute as @p[scores={death=1,lives=1}] run scoreboard players set @s lives 2

execute as @p[scores={death=2,lives=3}] run scoreboard players set @s lives 1
execute as @p[scores={death=2,lives=2}] run scoreboard players set @s lives 1

execute as @p[scores={death=3,lives=3}] run scoreboard players set @s lives 0
execute as @p[scores={death=3,lives=2}] run scoreboard players set @s lives 0
execute as @p[scores={death=3,lives=1}] run scoreboard players set @s lives 0
