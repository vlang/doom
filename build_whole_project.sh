#!/bin/bash

set -e;
set -x;

if [ -z ${CC+x} ]; then export CC=clang; fi
if [ -z ${DOOM_FOLDER+x} ]; then export DOOM_FOLDER=~/code/doom; fi
if [ -z ${WAD_FILE+x} ]; then export WAD_FILE=~/Downloads/DOOM1.WAD; fi

cd $DOOM_FOLDER/chocolate-doom ;
git clean -xf ;
rm -rf src/doom/c2v_out.dir/ ;
cmake -DCMAKE_BUILD_TYPE=Debug . ;
make chocolate-doom ;

v translate src/doom ;

cat << EOF > src/doom/c2v_out.dir/vdoom_patch_linux.v
module main
const _isspace = 8192
type U16 = u16
fn C.__ctype_b_loc() &&U16
fn __ctype_b_loc() &&U16 { return C.__ctype_b_loc() }
EOF

cd $DOOM_FOLDER/chocolate-doom/src/doom ;
v -cc $CC -o /tmp/doom.c -is_o -gc none -showcc -cg -cflags "-w" -w -translated c2v_out.dir/
$CC -c -w -std=c99 -D_DEFAULT_SOURCE -g -o c2v_out.dir/doom.o -c /tmp/doom.c -rdynamic
$CC -o doomv \
  $DOOM_FOLDER/chocolate-doom/src/CMakeFiles/chocolate-doom.dir/*.o \
  $DOOM_FOLDER/chocolate-doom/textscreen/CMakeFiles/textscreen.dir/*.o \
  $DOOM_FOLDER/chocolate-doom/pcsound/CMakeFiles/pcsound.dir/*.o \
  $DOOM_FOLDER/chocolate-doom/opl/CMakeFiles/opl.dir/*.o \
  $DOOM_FOLDER/chocolate-doom/src/doom/c2v_out.dir/doom.o \
  $(sdl2-config --libs) -lSDL2_mixer -lSDL2_net -lpng -lsamplerate -lm

cp $WAD_FILE .

echo "Run doom with:"
echo "$DOOM_FOLDER/chocolate-doom/src/doom/doomv"
