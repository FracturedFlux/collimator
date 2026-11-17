scoreboard objectives add collimator.dummy dummy
scoreboard players set #con.-1 collimator.dummy -1
scoreboard players set #con.2 collimator.dummy 2

scoreboard objectives add collimator.id dummy
execute unless score #global collimator.id matches -2147483648..2147483647 run scoreboard players set #global collimator.id 0