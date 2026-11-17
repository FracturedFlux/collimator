data remove storage collimator:storage input
execute store result storage collimator:storage temp.pid int 1 run scoreboard players get @s collimator.id
function collimator:impl/build/main with storage collimator:storage temp