#> array_op:open
#moveより使いやすいものをと思いついたのでやってみる
#moveは開けて取り出してしまうのを一気に行ってしまうが、openは 1.添え字よりも前のリスト2.添え字番目の要素、3.添え字よりも後のリストに切り分ける。

function array_op:prepare
data modify storage array_op: main.list set from storage array_op: in.list
execute store result score list array_op run data get storage array_op: in.list
execute store result score sub array_op run data get storage array_op: in.subscript
scoreboard players remove list array_op 1
scoreboard players operation list array_op -= sub array_op
execute if score list array_op matches ..0 run function array_op:error/invalid
execute if score list array_op matches 1.. run function array_op:open/loop
data modify storage array_op: out.back set from storage array_op: main.list
data remove storage array_op: out.back[-1]
data modify storage array_op: out.data set from storage array_op: main.list[-1]
execute store result storage array_op: out.count int 1 run data get storage array_op: out.data 1

