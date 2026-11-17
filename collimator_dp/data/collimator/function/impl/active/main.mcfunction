execute if entity @s[gamemode=survival] run scoreboard players set #gamemode collimator.dummy 0
execute if entity @s[gamemode=creative] run scoreboard players set #gamemode collimator.dummy 1
execute if entity @s[gamemode=adventure] run scoreboard players set #gamemode collimator.dummy 2
execute if entity @s[gamemode=spectator] run scoreboard players set #gamemode collimator.dummy 3

execute unless score @s collimator.dummy = #gamemode collimator.dummy run function collimator:impl/active/gamemode

execute store result storage collimator:storage temp.pid int 1 run scoreboard players get @s collimator.id
function collimator:impl/active/check with storage collimator:storage temp