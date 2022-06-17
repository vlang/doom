#!/usr/bin/env bash

set -e

cc -o doomv \
  ~/code/doom/chocolate-doom/src/CMakeFiles/chocolate-doom.dir/*.o \
  ~/code/doom/chocolate-doom/textscreen/CMakeFiles/textscreen.dir/*.o \
  ~/code/doom/chocolate-doom/pcsound/CMakeFiles/pcsound.dir/*.o \
  ~/code/doom/chocolate-doom/opl/CMakeFiles/opl.dir/*.o \
  ~/code/doom/chocolate-doom/src/doom/c2v_out.dir/doom.o \
  $(sdl2-config --libs) -lSDL2_mixer -lSDL2_net -lpng -lsamplerate
