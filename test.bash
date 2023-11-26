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
[ "${out}" = "合計:15.0, 総乗:120"  ] || ng ${LINENO}

out=$(seq 1 2 5 | ./plus)
[ "${out}" = "合計:9, 総乗:45" ] || ng $LINENO
　
[ "$res" = 0 ] && echo OK
exit $res
