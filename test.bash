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
[ "${out}" = "合計: 15, 総乗: 120"  ] || ng ${LINENO}

out=$(seq 50 | ./plus)
[ "${out}" = "合計: 1275, 総乗: 30414093201713378043612608166064768844377641568960512000000000000"  ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
