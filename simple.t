#!/bin/sh

test_description='Basic simple framework test'

SHARNESS_TEST_SRCDIR="$(dirname "${0}")/sharness"
. "${SHARNESS_TEST_SRCDIR}/sharness.sh"

command -v grep > /dev/null && test_set_prereq GREP

test_expect_success 'Simple successful test' '
	echo hello world | grep hello
'

test_done

# vim: set noet sts=0 ts=4 sw=4 sr ft=sh:
