#!/bin/bash

set -e;
set -x;

if [ -z ${CC+x} ]; then export CC=clang; fi
if [ -z ${DOOM_FOLDER+x} ]; then export DOOM_FOLDER=~/code/doom; fi
if [ -z ${WAD_FILE+x} ]; then export WAD_FILE=~/Downloads/DOOM1.WAD; fi

cd $DOOM_FOLDER/chocolate-doom ;
git clean -xf ;
rm -rf src/doom/doom_v/ ;
cmake -DCMAKE_BUILD_TYPE=Debug . ;
make chocolate-doom ;

v translate src/doom ;

cat << EOF > src/doom/doom_v/vdoom_patch_linux.v
module main
const _is_space = 8192
type U16 = u16
fn C.__ctype_b_loc() &&U16
fn __ctype_b_loc() &&U16 { return C.__ctype_b_loc() }
EOF

cd $DOOM_FOLDER/chocolate-doom/src/doom ;
## compile the produced V source code to an .o file that can be linked to the rest:
v -cc $CC -o doom_v/doom.o -w -translated doom_v/

$CC -o doomv \
  $DOOM_FOLDER/chocolate-doom/src/CMakeFiles/chocolate-doom.dir/*.o \
  $DOOM_FOLDER/chocolate-doom/textscreen/CMakeFiles/textscreen.dir/*.o \
  $DOOM_FOLDER/chocolate-doom/pcsound/CMakeFiles/pcsound.dir/*.o \
  $DOOM_FOLDER/chocolate-doom/opl/CMakeFiles/opl.dir/*.o \
  $DOOM_FOLDER/chocolate-doom/src/doom/doom_v/doom.o \
  $(sdl2-config --libs) -lSDL2_mixer -lSDL2_net -lpng -lsamplerate -lm

cp $WAD_FILE .

echo "Run doom with:"
echo "$DOOM_FOLDER/chocolate-doom/src/doom/doomv"
