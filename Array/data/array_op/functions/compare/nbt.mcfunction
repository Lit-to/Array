#> array_op:compare/nbt
#execute store success storage compare: result int 1 run data modify storage compare: A set from storage compare: B 
execute store success storage compare: result int 1 run data modify storage compare: B set from storage compare: A
#成功(違うデータで)1
#失敗(同じデータで)0

