#!/bin/bash

FAIL_CHECK=1
FAIL_GATE=1
TEST_OUTPUT="XXX TEST_ID: 6a7afd47-d94c-4ee3-b08f-395094d4bf39"

echo "$TEST_OUTPUT"

case "$BONNYCI_TEST_PIPELINE" in
    "check") [[ "$FAIL_CHECK" == 1 ]] && exit 1 ;;
    "gate") [[ "$FAIL_GATE" == 1 ]] && exit 1 ;;
esac

exit 0