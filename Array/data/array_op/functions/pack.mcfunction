#> array_op:pack
#お片付けしたデータをしまう

data modify storage array_op: out.pack set from storage array_op: out.back
data modify storage array_op: out.pack append from storage array_op: out.data
data modify storage array_op: out.pack append from storage array_op: out.front[]
