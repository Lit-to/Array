#> array_op:compare/check
#declare storage compare:
execute store success storage compare: is_a int 1 run data get storage compare: A
execute store success storage compare: is_b int 1 run data get storage compare: B
execute unless data storage compare: {is_a:1,is_b:1} run data modify storage compare: result set value 2
execute unless data storage compare: {result:2} run function array_op:compare/nbt

