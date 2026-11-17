scoreboard objectives add collimator.dummy dummy

scoreboard objectives add collimator.id dummy
execute unless score #global collimator.id matches -2147483648..2147483647 run scoreboard players set #global collimator.id 0