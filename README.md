# DOOM.v
DOOM translated from C to V.  Builds in 0.7 seconds (x25 speed-up).


Current problems that will be fixed asap:

- All comments are missing
- #define consts are replaced with their values
- No indentation in functions
- Music works fine, but monster and weapon sounds don't


It is possible to translate files one by one and gradually replace C with V. Object files compiled with V have full binary compatibility with object files produced by C, and can be a drop-in replacement:

```bash
# Download and build DOOM
git clone https://github.com/chocolate-doom/chocolate-doom
cd chocolate-doom
cmake .
make chocolate-doom

# Build p_enemy.v and replace the object file
wget https://raw.githubusercontent.com/vlang/doom/master/p_enemy.v
v -lib translated p_enemy.v
cp p_enemy.o src/doom/CMakeFiles/doom.dir/p_enemy.c.o

# Rebuild it again with p_enemy.v.o and launch it
make chocolate-doom && src/chocolate-doom -width 640
```

There are several things that are allowed in translated code:
- Globals
- `++/--` expressions and int to bool conversions (`for i-- {`)
- Variables can be unsed
- Immutability is not enforced

All of these except for the globals are going to be fixed by the translator: 

- `++/--` expressions will be replaced with statements at the right place
- unused variables will be removed
- mutable variables will be marked as mutable.

## How to build and run this demo

### Preparations (Ubuntu Linux)

1. Install dependencies
   ```bash
   apt install libsdl2-dev libsdl2-mixer-dev libsdl2-net-dev
   ```

2. Download doom1.wad into `~/Downloads` from [here](https://distro.ibiblio.org/slitaz/sources/packages/d/doom1.wad). (ref: `External links` section in [this doomwiki page](https://doomwiki.org/wiki/DOOM1.WAD))

### Clone, build and run the demo

```bash
git clone git@github.com:vlang/doom.git
cd doom/
./build_whole_project.sh
```
