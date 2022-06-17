#!/usr/bin/env bash

set -e

v -o doom.c -is_o -gc none -showcc -cg -cflags "-w" -w -translated c2v_out.dir

cc -c -w -std=c99 -D_DEFAULT_SOURCE -g -o doom.o -x objective-c "doom.c"  -x none -mmacosx-version-min=10.7 -rdynamic
