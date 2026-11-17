scoreboard players set #gamemode collimator.dummy 0

execute unless data storage collimator:storage temp.index[0].gamemodes run scoreboard players set #gamemode collimator.dummy 1
execute if data storage collimator:storage temp.index[0].gamemodes{survival:true} if entity @s[gamemode=survival] run scoreboard players set #gamemode collimator.dummy 1
execute if data storage collimator:storage temp.index[0].gamemodes{creative:true} if entity @s[gamemode=creative] run scoreboard players set #gamemode collimator.dummy 1
execute if data storage collimator:storage temp.index[0].gamemodes{adventure:true} if entity @s[gamemode=adventure] run scoreboard players set #gamemode collimator.dummy 1
execute if data storage collimator:storage temp.index[0].gamemodes{spectator:true} if entity @s[gamemode=spectator] run scoreboard players set #gamemode collimator.dummy 1

execute if score #gamemode collimator.dummy matches 1 run function collimator:impl/build/i/build

data remove storage collimator:storage temp.index[0]
execute if data storage collimator:storage temp.index[0] run function collimator:impl/build/i/main

