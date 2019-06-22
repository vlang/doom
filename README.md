# doom
DOOM translated from C to V.  Builds in 0.7 seconds (x25 speed-up).


Current problems that will be fixed asap:

- All comments are missing
- #define consts are replaced with their values
- No indentation in functions
- Music works fine, but monster and weapon sounds don't


It is possible to translate files one by one and gradually replace C with V. Object files compiled with V have full binary compatibility with object files produced by C, and can be a drop-in replacement:

```
v -lib translated p_enemy.v
cp p_enemy.o ~/doom/src/doom/CMakeFiles/doom.dir/p_enemy.c.o
cd ~/doom
make chocolate-doom && src/chocolate-doom -width 640
```

