scoreboard players operation @s collimator.id = #global collimator.id
scoreboard players add #global collimator.id 1

execute store result storage collimator:storage temp.pid int 1 run scoreboard players get @s collimator.id
function collimator:impl/player/init_storage with storage collimator:storage temp
data remove storage collimator:storage temp
