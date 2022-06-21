#!/usr/bin/env bash

## Note: LDFLAGS needs to have: -lsamplerate , if you get this error:
#### Undefined symbols for architecture arm64:
####  "_src_simple", referenced from:
####        _ExpandSoundData_SRC in i_sdlsound.c.o
####	ld: symbol(s) not found for architecture arm64
####	clang: error: linker command failed with exit code 1 (use -v to see invocation)

set -e

export DOOM=~/code/doom/chocolate-doom

v -cg -o doom_v/doom.o -w -translated doom_v

cc -o doomv \
  $DOOM/src/doom/doom_v/doom.o \
  $DOOM/src/CMakeFiles/chocolate-doom.dir/*.o \
  $DOOM/textscreen/CMakeFiles/textscreen.dir/*.o \
  $DOOM/pcsound/CMakeFiles/pcsound.dir/*.o \
  $DOOM/opl/CMakeFiles/opl.dir/*.o \
  $(sdl2-config --libs) -lSDL2_mixer -lSDL2_net -lpng $LDFLAGS
