#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit ec717fa2 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
AiAAAAogIAAgICAA/////yALBAAB//8gAwJzZXJ2ZXIBAQEgAQAUCiAgIAAgAP////8gCwwCAAAgASAAAAH//yAB//8gFAAKICAAIAD/////IAsB//8gAAABIAwCAAAgASAAAAEgABQKICAAACAB//8gAAU=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
