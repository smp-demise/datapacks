team add dead
team add 3
team add 2
team add 1

team add admin
team add logs

team empty dead
team empty 3
team empty 2
team empty 1

execute as @p[team=] run team join 1

scoreboard objectives add lives dummy
scoreboard objectives add death deathCount
scoreboard objectives add time dummy "Play Time (m)"
scoreboard objectives add Dkills minecraft.killed:minecraft.ender_dragon

scoreboard objectives add one dummy
scoreboard objectives add two dummy
scoreboard objectives add three dummy

scoreboard objectives add true dummy
scoreboard objectives add false dummy
scoreboard objectives add endOpen dummy
scoreboard objectives add netherOpen dummy

scoreboard objectives setdisplay belowName lives
scoreboard objectives setdisplay sidebar lives

scoreboard players set @a time 0
scoreboard players set @a death 0
scoreboard players set @a Dkills 0

scoreboard players set @a lives 3

scoreboard players set demise one 1
scoreboard players set demise two 2
scoreboard players set demise three 3
scoreboard players set demise true 1
scoreboard players set demise false 0
scoreboard players set demise endOpen 0
scoreboard players set demise netherOpen 0

team modify 3 color dark_blue
team modify 2 color dark_red
team modify 1 color yellow

team modify dead nametagVisibility never
team modify dead collisionRule never
team modify dead seeFriendlyInvisibles true
team modify dead prefix {"text": "Dead", "color": "red"}
team modify dead friendlyFire false

effect clear @a saturation
gamerule doDaylightCycle true

schedule function demise:addtime 60s