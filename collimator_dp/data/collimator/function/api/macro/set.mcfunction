$data modify storage collimator:storage temp.build set value $(args)
execute unless data storage collimator:storage temp.build.id run return run tellraw @s {translate:"collimator.warning.no_id",color:"red"}
execute unless data storage collimator:storage temp.build.width run return run tellraw @s {translate:"collimator.warning.no_width",color:"red"}
execute if data storage collimator:storage temp.build{width:0} run return run tellraw @s {translate:"collimator.warning.bad_width",color:"red"}
execute unless data storage collimator:storage temp.build.value run return run tellraw @s {translate:"collimator.warning.no_value",color:"red"}
data modify storage collimator:storage temp.id set from storage collimator:storage temp.build.id
execute store result storage collimator:storage temp.pid int 1 run scoreboard players get @s collimator.id
function collimator:impl/build/set with storage collimator:storage temp