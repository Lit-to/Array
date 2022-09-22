#> array_op:get
#添え字番目を取るだけ
function array_op:prepare
data remove storage array_op: out
data modify storage array_op: main.list set from storage array_op: in.list
execute store result score list array_op run data get storage array_op: in.list
execute store result score sub array_op run data get storage array_op: in.subscript
scoreboard players remove list array_op 1
scoreboard players operation list array_op -= sub array_op
execute if score list array_op matches 1.. run function array_op:get/loop
data modify storage array_op: out.data set from storage array_op: main.list[-1]
data remove storage array_op: main
