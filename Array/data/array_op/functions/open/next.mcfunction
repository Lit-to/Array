#> array_op:open/next
#配列を一個左にずらす

execute unless data storage array_op: {out:{front:[]}} run data modify storage array_op: out.back append from storage array_op: out.data 
execute unless data storage array_op: {out:{front:[]}} run data modify storage array_op: out.data set from storage array_op: out.front[0] 
execute unless data storage array_op: {out:{front:[]}} run data remove storage array_op: out.front[0] 

