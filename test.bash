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

out=$(seq 1 2 5 | ./plus)
[ "${out}" = "合計: 9, 総乗: 15"  ] || ng ${LINENO}

out=$(seq -1 2 3 | ./plus)
[ "${out}" = "合計: 3, 総乗: -3"  ] || ng ${LINENO}

out=$(seq 0.1 0.2 0.5 | ./plus)
[ "${out}" = "合計: 0.9, 総乗: 0.015"  ] || ng ${LINENO}

out=$(seq -0.1 0.2 0.3 | ./plus)
[ "${out}" = "合計: 0.3, 総乗: -0.003"  ] || ng ${LINENO}

out=$(seq 0.1 0.2 0.5 | ./plus)
[ "${out}" = "合計: 0.9, 総乗: 0.015"  ] || ng ${LINENO}

out=$(seq 0.1 0.2 0.5 | ./plus)
[ "${out}" = "合計: 0.9, 総乗: 0.015"  ] || ng ${LINENO}

out=$(seq 0.02 0.02 0.1 | ./plus)
[ "${out}" = "合計: 0.30, 総乗: 3.840E-7"  ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo | ./plus)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo 1a2b3c| ./plus)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo abc | ./plus)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res
