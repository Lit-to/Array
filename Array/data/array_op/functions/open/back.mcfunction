#> array_op:open/back
execute unless data storage array_op: {out:{back:[]}} run data modify storage array_op: out.front prepend from storage array_op: out.data 
execute unless data storage array_op: {out:{back:[]}} run data modify storage array_op: out.data set from storage array_op: out.back[0] 
execute unless data storage array_op: {out:{back:[]}} run data remove storage array_op: out.back[0] 


