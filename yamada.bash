#!/bin/bash

ng () {
          echo ${1}行目が違うよ   #$1はngの1番目の引数
          ret=1                   #最後に返す終了ステータスをセット
  }
ret=0
a=山田
[ "$a" = 上田 ] || ng "$LINENO"  # LINENOは，この行の行番号の入る変数
[ "$a" = 山田 ] || ng "$LINENO"  # ngに第一引数として$LINENOを付与

exit $ret     # このシェルスクリプトの終了ステータスを返して終了
