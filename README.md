# 配列処理用データパック
## 作成目的
Minecraftのストレージにおける配列処理用のデータパックです。
他の方の配列処理データパックを参考に自作しました。
完全にデータパッククリエイター用です。
あと、ついでにnbtの比較も作りました。
## 作成環境
ver 1.18.2
前提データパックなし

## 配列処理
配列を[{0番目からn-1番目まで}]、{n番目}、[{n+1から最後まで}]の三つにスライスします。
そして、再帰的に処理する必要がある場合一度切り分けた配列をそのまま次にスライド出来ます。

### 使い方
1. storage ``array_op in.list`` に配列を入れる
2. storage ``array_op: in.subscript``に添字を入れる(一番最初は0)
3. ``function array_op:open``を実行
4. storage ``array_op: out``に出力

5. ``function array_op:open/next``もしくは``function array_op:open/back``で次にスライドor前にスライド

### 出力結果内容
| storage   | 内容           | 型       |
| --------- | -------------- | -------- |
| out.back  | 添字よりも前   | List     |
| out.data  | 添字           | データ型 |
| out.front | 添え字よりも後 | List     |

## データ比較
nbtデータについて比較を行います。
全く同じデータが二つあった場合、0を返します。
違うデータだった場合1を返します。

### 使い方
1. storage ``compare: A``にデータを入れる
2. storage ``compare: B``に比較データを入れる
3. ``function array_op:compare``
4. 比較結果が``compare: result``にint出力されます。



