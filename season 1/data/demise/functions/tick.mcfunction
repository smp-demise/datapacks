function demise:validate

execute if score demise endOpen = demise false in overworld run tp @p[nbt={Dimension: "minecraft:the_end"}] 220 120 -22
execute if score demise netherOpen = demise false in overworld run tp @p[nbt={Dimension: "minecraft:the_nether"}] 220 120 -22

execute if entity @p[scores={lives=1}] if score demise endOpen = demise false run function demise:openend

execute as @p[scores={Dkills=1,lives=1}] run function demise:addlive
execute as @p[scores={Dkills=1,lives=2}] run function demise:addlive
execute as @p[scores={Dkills=1}] run scoreboard players operation @s Dkills -= demise one

execute if entity @p[team=] as @p[team=] run function demise:join

execute as @p[scores={death=0},team=!3,team=!admin] run team leave @s
execute as @p[scores={death=0},team=!3,team=!admin] run team join 3 @s

execute as @p[scores={death=1},team=!2,team=!admin] run team leave @s
execute as @p[scores={death=1},team=!2,team=!admin] run team join 2 @s

execute as @p[scores={death=2},team=!1,team=!admin] run team leave @s
execute as @p[scores={death=2},team=!1,team=!admin] run team join 1 @s

execute as @p[scores={death=3},team=!dead,team=!admin] run team leave @s
execute as @p[scores={death=3},team=!dead,team=!admin] run team join dead @s

execute if entity @p[scores={death=3},team=!admin,gamemode=!spectator] run gamemode spectator @p[scores={death=3},gamemode=!spectator]