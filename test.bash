#!/bin/bash
# SPDX-FileCopyrightText: 2023 Sho Yoshida　　　　　
# SPDX-License-Identifier: BSD-3-Clause
ng () {
      echo NG at Line $1
      res=1
}
　
res=0
　
### I/O TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = "合計: 15.0, 総乗: 120.0"  ] || ng ${LINENO}

out=$(seq 50 | ./plus)
[ "${out}" = "合計: 1275.0, 総乗: 3.0414093201713376e+64"  ] || ng ${LINENO}

out=$(seq 1000 | ./plus)
[ "${out}" = "総乗がオーバーフロー: 1.50e+300
合計: 14028.0, 総乗: 1.5036165148649983e+300"  ] || ng ${LINENO}

out=$(seq 1 2 5 | ./plus)
[ "${out}" = "合計: 9.0, 総乗: 15.0" ] || ng $LINENO

out=$(seq -1 2 3 | ./plus)
[ "${out}" = "合計: 3.0, 総乗: -3.0" ] || ng $LINENO

out=$(seq 0.1 0.2 0.5 | ./plus)
[ "${out}" = "合計: 0.9, 総乗: 0.015" ] || ng $LINENO

out=$(echo abc | ./plus)
[ "${out}" = "数値以外のものが入力されています: abc
合計: 0, 総乗: 1" ] || ng $LINENO

out=$(echo   | ./plus)
[ "${out}" = "数値以外のものが入力されています: 
合計: 0, 総乗: 1" ] || ng $LINENO
　
[ "$res" = 0 ] && echo OK
exit $res
