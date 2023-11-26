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

out=$(seq 100 | ./plus)
[ "${out}" = "合計: 15.0, 総乗: 120.0"  ] || ng ${LINENO}

out=$(seq 1 2 5 | ./plus)
[ "${out}" = "合計: 9.0, 総乗: 15.0" ] || ng $LINENO

out=$(echo abc | ./plus)
[ "${out}" = "数値以外のものが入力されています: abc
合計: 0, 総乗: 1" ] || ng $LINENO
　
[ "$res" = 0 ] && echo OK
exit $res
