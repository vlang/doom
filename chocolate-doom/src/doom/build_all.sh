#!/usr/bin/env bash

## Note: LDFLAGS needs to have: -lsamplerate , if you get this error:
#### Undefined symbols for architecture arm64:
####  "_src_simple", referenced from:
####        _ExpandSoundData_SRC in i_sdlsound.c.o
####	ld: symbol(s) not found for architecture arm64
####	clang: error: linker command failed with exit code 1 (use -v to see invocation)

set -e

cc -o doomv \
  ~/code/doom/chocolate-doom/src/CMakeFiles/chocolate-doom.dir/*.o \
  ~/code/doom/chocolate-doom/textscreen/CMakeFiles/textscreen.dir/*.o \
  ~/code/doom/chocolate-doom/pcsound/CMakeFiles/pcsound.dir/*.o \
  ~/code/doom/chocolate-doom/opl/CMakeFiles/opl.dir/*.o \
  ~/code/doom/chocolate-doom/src/doom/c2v_out.dir/doom.o \
  $(sdl2-config --libs) -lSDL2_mixer -lSDL2_net -lpng $LDFLAGS
