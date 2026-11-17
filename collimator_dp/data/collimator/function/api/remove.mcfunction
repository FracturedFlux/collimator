data modify storage collimator:storage temp.build set from storage collimator:storage input
data remove storage collimator:storage input

execute unless data storage collimator:storage temp.build.id run return run tellraw @s {translate:"collimator.warning.no_id",color:"red"}

data modify storage collimator:storage temp.id set from storage collimator:storage temp.build.id
execute store result storage collimator:storage temp.pid int 1 run scoreboard players get @s collimator.id
function collimator:impl/build/remove with storage collimator:storage temp
data remove storage collimator:storage temp