#> array_op:get/loop
data remove storage array_op: main.list[-1]
scoreboard players remove list array_op 1
execute if score list array_op matches 1.. run function array_op:get/loop
