#> array_op:operation
#配列操作用
#配列をひとつひとつ開いて見る必要があるため、赤石愛氏のArrayUtilityを参考に作成
#declare storage array_op:
data modify storage array_op: main.list set value []
data modify storage array_op: main.temp set value []
data modify storage array_op: in.list set value []
data modify storage array_op: in.subscript set value 0
data modify storage array_op: out.data set value {}
data modify storage array_op: out.count set value 0

