tag @s add collimator.active
$data remove storage collimator:storage players.$(pid).build
$data modify storage collimator:storage temp.index set from storage collimator:storage players.$(pid).index
execute if data storage collimator:storage temp.index[0] run return run function collimator:impl/build/i/main
