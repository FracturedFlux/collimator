execute store result score #input_width collimator.dummy run data get storage collimator:storage temp.index[0].width

# Set prefix to width / 2
scoreboard players operation #space.prefix collimator.dummy = #input_width collimator.dummy
scoreboard players operation #space.prefix collimator.dummy /= #con.2 collimator.dummy

# Set suffix to the same and remove 1
scoreboard players operation #space.suffix collimator.dummy = #space.prefix collimator.dummy
execute store result storage collimator:storage temp.entry.suffix int 1 run scoreboard players remove #space.suffix collimator.dummy 1

# Make prefix negative
execute store result storage collimator:storage temp.entry.prefix int 1 run scoreboard players operation #space.prefix collimator.dummy *= #con.-1 collimator.dummy

# Set symbol to negative width
scoreboard players operation #space.symbol collimator.dummy = #input_width collimator.dummy
execute store result storage collimator:storage temp.entry.symbol int 1 run scoreboard players operation #space.symbol collimator.dummy *= #con.-1 collimator.dummy

data modify storage collimator:storage temp.entry.value set from storage collimator:storage temp.index[0].value
data modify storage collimator:storage temp.entry.pid set from storage collimator:storage temp.pid

function collimator:impl/build/i/append with storage collimator:storage temp.entry