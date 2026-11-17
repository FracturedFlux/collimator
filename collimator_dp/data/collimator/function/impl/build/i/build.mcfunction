data modify storage collimator:storage temp.entry.prefix set compute default integer collimator:prefix
data modify storage collimator:storage temp.entry.suffix set compute default integer collimator:suffix
data modify storage collimator:storage temp.entry.symbol set compute default integer collimator:symbol

data modify storage collimator:storage temp.entry.value set from storage collimator:storage temp.index[0].value
data modify storage collimator:storage temp.entry.pid set from storage collimator:storage temp.pid

function collimator:impl/build/i/append with storage collimator:storage temp.entry