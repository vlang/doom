@[translated]
module main

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Simple basic typedefs, isolated here to make it easier
//	 separating modules.
//
// #define macros to provide functions missing in Windows.
// Outside Windows, we use strings.h for str[n]casecmp.
//
// The packed attribute forces structures to be packed into the minimum
// space necessary.  If this is not done, the compiler may align structure
// fields differently to optimize memory access, inflating the overall
// structure size.  It is important to use the packed attribute on certain
// structures where alignment is important, particularly data read/written
// to disk.
//
// C99 integer types; with gcc we just use this.  Other compilers
// should add conditional statements that define the C99 types.
// What is really wanted here is stdint.h; however, some old versions
// of Solaris don't have stdint.h and only have inttypes.h (the
// pre-standardisation version).  inttypes.h is also in the C99
// standard and defined to include stdint.h, so include this.
// Use builtin bool type with C++.
//
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
//
// Dehacked string replacements
//
// Used to do dehacked text substitutions throughout the program
@[c: 'DEH_String']
fn deh_string(s &i8) &i8

// Static macro versions of the functions above
// #ifndef DEH_STR_H
//
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//     SHA-1 digest.
//
// #ifndef __SHA1_H__
//
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
//
// Dehacked entrypoint and common code
//
// These are the limits that dehacked uses (from dheinit.h in the dehacked
// source).  If these limits are exceeded, it does not generate an error, but
// a warning is displayed.
// #ifndef DEH_MAIN_H
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//      System-specific timer interface
//
// Called by D_DoomLoop,
// returns current time in tics.
// returns current time in ms
// Pause for a specified number of ms
// Initialize timer
// Wait for vertical retrace or pause a bit.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//   Functions and definitions relating to the game type and operational
//   mode.
//
// The "mission" controls what game we are playing.
// The "mode" allows more accurate specification of the game mode we are
// in: eg. shareware vs. registered.  So doom1.wad and doom.wad are the
// same mission, but a different mode.
// What version are we emulating?
// What IWAD variant are we using?
// Skill level.
// #ifndef __D_MODE__
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//  Internally used data structures for virtually everything,
//   lots of other stuff.
//
//
// Global parameters/defines.
//
// DOOM version
// Version code for cph's longtics hack ("v1.91")
// If rangecheck is undefined,
// most parameter validation debugging code will not be compiled
// The maximum number of players, multiplayer/networking.
// The current state of the game: whether we are
// playing, gazing at the intermission screen,
// the game final animation, or a demo.
//
// Difficulty/skill settings/filters.
//
// Skill flags.
// Deaf monsters/do not react to sound.
//
// Key cards.
//
// The defined weapons,
//  including a marker indicating
//  user has not changed weapon.
// Ammunition types defined.
// Power up artifacts.
//
// Power up durations,
//  how many seconds till expiration,
//  assuming TICRATE is 35 ticks/second.
//
// __DOOMDEF__
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 1993-2008 Raven Software
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	System specific interface stuff.
//
// The data sampled per tick (single player)
// and transmitted to other peers (multiplayer).
// Mainly movements/button commands per game tick,
// plus a checksum for internal state consistency.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//
//
//
// Event handling.
//
// Input event types.
// Event structure.
//
// Button/action code definitions.
//
// villsa [STRIFE] Strife specific buttons
// TODO - not finished
// Called by IO functions when input is detected.
// Read an event from the event queue
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	System specific interface stuff.
//
// Called by DoomMain.
// Called by startup code
// to get the ammount of memory to malloc
// for the zone management.
// Asynchronous interrupt functions should maintain private queues
// that are read by the synchronous functions
// to be converted into events.
// Either returns a null ticcmd,
// or calls a loadable driver to build it.
// This ticcmd will then be modified by the gameloop
// for normal input.
// Called by M_Responder when quit is selected.
// Clean exit, displays sell blurb.
@[c: 'I_Error']
@[c2v_variadic]
fn i_error(error ...&i8)

// Schedule a function to be called when the program exits.
// If run_if_error is true, the function is called if the exit
// is due to an error (I_Error)
// Add all system-specific config file variable bindings.
// Print startup banner copyright message.
// Print a centered text banner displaying the given string.
// Print a dividing line for startup banners.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//      Zone Memory Allocation, perhaps NeXT ObjectiveC inspired.
//	Remark: this was the only stuff that, according
//	 to John Carmack, might have been useful for
//	 Quake.
//
//
// ZONE MEMORY
// PU - purge tags.
// static entire execution time
// static while playing
// static while playing
// a free block
// static until level exited
// a special thinker in a level
// Tags >= PU_PURGELEVEL are purgable whenever needed.
// Total number of different tag types
@[c: 'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

//
// This is used to get the local FILE:LINE info from CPP
// prior to really call the function in question.
//
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	WAD I/O functions.
//
// Open the specified file. Returns a pointer to a new wad_file_t
// handle for the WAD file, or NULL if it could not be opened.
// Close the specified WAD file.
// Read data from the specified file into the provided buffer.  The
// data is read from the specified offset from the start of the file.
// Returns the number of bytes read.
// #ifndef __W_FILE__
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	WAD I/O functions.
//
//
// TYPES
//
//
// WADFILE I/O related stuff.
//
@[c: 'W_GetNumForName']
fn w_get_num_for_name(name &i8) Lumpindex_t

@[c: 'W_CacheLumpNum']
fn w_cache_lump_num(lump Lumpindex_t, tag int) voidptr

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Fixed point arithemtics, implementation.
//
//
// Fixed point, 32bit as 16.16.
//
@[c: 'FixedMul']
fn fixed_mul(a int, b int) int

@[c: 'FixedDiv']
fn fixed_div(a int, b int) int

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 1993-2008 Raven Software
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Lookup tables.
//	Do not try to look them up :-).
//	In the order of appearance:
//
//	int finetangent[4096]	- Tangens LUT.
//	 Should work with BAM fairly well (12 of 16bit,
//      effectively, by shifting).
//
//	int finesine[10240]		- Sine lookup.
//	 Guess what, serves as cosine, too.
//	 Remarkable thing is, how to use BAMs with this?
//
//	int tantoangle[2049]	- ArcTan LUT,
//	  maps tan(angle) to angle fast. Gotta search.	
//
// 0x100000000 to 0x2000
// Effective size is 10240.
// Re-use data, is just PI/2 pahse shift.
// Effective size is 4096.
// Gamma correction tables.
// Binary Angle Measument, BAM.
// Heretic code uses this definition as though it represents one
// degree, but it is not!  This is actually ~1.40 degrees.
// Effective size is 2049;
// The +1 size is to handle the case when x==y
//  without additional checking.
// Utility function,
//  called by R_PointToAngle.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//  MapObj data. Map Objects or mobjs are actors, entities,
//  thinker, take-your-pick... anything that moves, acts, or
//  suffers state changes of more or less violent nature.
//
//
// Experimental stuff.
// To compile this as "ANSI C with classes"
//  we will need to handle the various
//  action functions cleanly.
//
// Historically, "think_t" is yet another
//  function pointer to a routine to handle
//  an actor.
// Doubly linked list of actors.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//  all external data is defined here
//  most of the data is loaded into different structures at run time
//  some internal structures shared by many modules are here
//
// The most basic types we use, portability.
// Some global defines, that configure the game.
//
// Map level types.
// The following data structures define the persistent format
// used in the lumps of the WAD files.
//
// Lump order in a map WAD: each map needs a couple of lumps
// to provide a complete scene geometry description.


// A single Vertex.
// A separator, name, ExMx or MAPxx
// Monsters, items..
// LineDefs, from editing                   // A single Vertex.
// SideDefs, from editing                   typedef PACKED_STRUCT (
// Vertices, edited and BSP splits generated{
// LineSegs, from LineDefs split by BSP       short		x;
// SubSectors, list of LineSegs               short		y;
// BSP nodes                                }) mapvertex_t;
// Sectors, from editing
// LUT, sector-sector visibility	
// LUT, motion clipping, walls/grid element // A SideDef, defining the visual appearance of a wall,
// by setting textures and offsets.
// A LineDef, as used for editing, and as input
// to the BSP builder.
//
// LineDef attributes.
//
// Solid, is an obstacle.
// Blocks monsters only.
// Backside will not be present at all
//  if not two sided.
// If a texture is pegged, the texture will have
// the end exposed to air held constant at the
// top or bottom of the texture (stairs or pulled
// down things) and will move with a height change
// of one of the neighbor sectors.
// Unpegged textures allways have the first row of
// the texture at the top pixel of the line for both
// top and bottom textures (use next to windows).
// upper texture unpegged
// lower texture unpegged
// In AutoMap: don't map as two sided: IT'S A SECRET!
// Sound rendering: don't let sound cross two of these.
// Don't draw on the automap at all.
// Set if already seen, thus drawn in automap.
// Sector definition, from editing.
// SubSector, as generated by BSP.
// LineSeg, generated by splitting LineDefs
// using partition lines selected by BSP builder.
// BSP node structure.
// Indicate a leaf.
// Thing definition, position, orientation and type,
// plus skill/visibility flags and attributes.
// __DOOMDATA__
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Thing frame/state LUT,
//	generated by multigen utilitiy.
//	This one is the original DOOM version, preserved.
//
// Needed for action function pointer handling.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Map Objects, MObj, definition and handling.
//
// Basics.
// We need the thinker_t stuff.
// We need the WAD data structure for Map things,
// from the THINGS lump.
// States are tied to finite states are
//  tied to animation frames.
// Needs precompiled tables/data structures.
//
// NOTES: mobj_t
//
// mobj_ts are used to tell the refresh where to draw an image,
// tell the world simulation when objects are contacted,
// and tell the sound driver how to position a sound.
//
// The refresh uses the next and prev links to follow
// lists of things in sectors as they are being drawn.
// The sprite, frame, and angle elements determine which patch_t
// is used to draw the sprite if it is visible.
// The sprite and frame values are allmost allways set
// from state_t structures.
// The statescr.exe utility generates the states.h and states.c
// files that contain the sprite/frame numbers from the
// statescr.txt source file.
// The xyz origin point represents a point at the bottom middle
// of the sprite (between the feet of a biped).
// This is the default origin position for patch_ts grabbed
// with lumpy.exe.
// A walking creature will have its z equal to the floor
// it is standing on.
//
// The sound code uses the x,y, and subsector fields
// to do stereo positioning of any sound effited by the mobj_t.
//
// The play simulation uses the blocklinks, x,y,z, radius, height
// to determine when mobj_ts are touching each other,
// touching lines in the map, or hit by trace lines (gunshots,
// lines of sight, etc).
// The mobj_t->flags element has various bit flags
// used by the simulation.
//
// Every mobj_t is linked into a single sector
// based on its origin coordinates.
// The subsector_t is found with R_PointInSubsector(x,y),
// and the sector_t can be found with subsector->sector.
// The sector links are only used by the rendering code,
// the play simulation does not care about them at all.
//
// Any mobj_t that needs to be acted upon by something else
// in the play world (block movement, be shot, etc) will also
// need to be linked into the blockmap.
// If the thing has the MF_NOBLOCK flag set, it will not use
// the block links. It can still interact with other things,
// but only as the instigator (missiles will run into other
// things, but nothing can run into a missile).
// Each block in the grid is 128*128 units, and knows about
// every line_t that it contains a piece of, and every
// interactable mobj_t that has its origin contained.
//
// A valid mobj_t is a mobj_t that has the proper subsector_t
// filled in for its xy coordinates and is linked into the
// sector from which the subsector was made, or has the
// MF_NOSECTOR flag set (the subsector_t needs to be valid
// even if MF_NOSECTOR is set), and is linked into a blockmap
// block or has the MF_NOBLOCKMAP flag set.
// Links should only be modified by the P_[Un]SetThingPosition()
// functions.
// Do not change the MF_NO? flags while a thing is valid.
//
// Any questions?
//
//
// Misc. mobj flags
//
// Map Object definition.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	System specific interface stuff.
//
// Screen width and height.
// Screen height used when aspect_ratio_correct=true.
// Called by D_DoomMain,
// determines the hardware configuration
// and sets up the video mode
// Takes full 8 bit values.
// Called before processing any tics in a frame (just after displaying a frame).
// Time consuming syncronous operations are performed here (joystick reading).
// Called before processing each tic in a frame.
// Quick syncronous operations are performed here.
// Enable the loading disk image displayed when reading from disk.
// Joystic/gamepad hysteresis
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//      Refresh/rendering module, shared data struct definitions.
//
// Screenwidth.
// Some more or less basic data types
// we depend on.
// We rely on the thinker data struct
// to handle sound origins in sectors.
// SECTORS do store MObjs anyway.
// Silhouette, needed for clipping Segs (mainly)
// and sprites representing things.
//
// INTERNAL MAP TYPES
//  used by play and refresh
//
//
// Your plain vanilla vertex.
// Note: transformed values not buffered locally,
//  like some DOOM-alikes ("wt", "WebView") did.
//
// Forward of LineDefs, for Sectors.
// Each sector has a degenmobj_t in its center
//  for sound origin purposes.
// I suppose this does not handle sound from
//  moving objects (doppler), because
//  position is prolly just buffered, not
//  updated.
//
// The SECTORS record, at runtime.
// Stores things/mobjs.
//
//
// The SideDef.
//
//
// Move clipping aid for LineDefs.
//
//
// A SubSector.
// References a Sector.
// Basically, this is a list of LineSegs,
//  indicating the visible walls that define
//  (all or some) sides of a convex BSP leaf.
//
//
// The LineSeg.
//
//
// BSP node.
//
// PC direct to screen pointers
// B UNUSED - keep till detailshift in r_draw.c resolved
// extern byte*	destview;
// extern byte*	destscreen;
//
// OTHER TYPES
//
// This could be wider for >8 bit display.
// Indeed, true color support is posibble
//  precalculating 24bpp lightmap/colormap LUT.
//  from darkening PLAYPAL to all black.
// Could even us emore than 32 levels.
// typedef pixel_t		lighttable_t;
// XTODO  alias to alias
//
// ?
//
// A vissprite_t is a thing
//  that will be drawn during a refresh.
// I.e. a sprite object that is partly visible.
//	
// Sprites are patches with a special naming convention
//  so they can be recognized by R_InitSprites.
// The base name is NNNNFx or NNNNFxFx, with
//  x indicating the rotation, x = 0, 1-7.
// The sprite and frame specified by a thing_t
//  is range checked at run time.
// A sprite is a patch_t that is assumed to represent
//  a three dimensional object and may have multiple
//  rotations pre drawn.
// Horizontal flipping is used to save space,
//  thus NNNNF2F5 defines a mirrored patch.
// Some sprites will only have one picture used
// for all views: NNNNF0
//
//
// A sprite definition:
//  a number of animation frames.
//
//
// Now what is a visplane, anyway?
//
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Items: key cards, artifacts, weapon, ammunition.
//
// Weapon info: sprite frames, ammunition use.
// skipping global dup "weaponinfo"
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//  Sprite animation.
//
// Basic data types.
// Needs fixed point, and BAM angles.
//
// Needs to include the precompiled
//  sprite animation tables.
// Header generated by multigen utility.
// This includes all the data for thing animation,
// i.e. the Thing Atrributes table
// and the Frame Sequence table.
//
// Frame flags:
// handles maximum brightness (torches, muzzle flare, light sources)
//
// flag in thing->frame
//
// Overlay psprites are scaled shapes
// drawn directly on the view screen,
// coordinates are given for a 320*200 view screen.
//
//
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//     Definitions for use in networking code.
//
// Absolute maximum number of "nodes" in the game.  This is different to
// NET_MAXPLAYERS, as there may be observers that are not participating
// (eg. left/right monitors)
// The maximum number of players, multiplayer/networking.
// This is the maximum supported by the networking code; individual games
// have their own values for MAXPLAYERS that can be smaller.
// Maximum length of a player's name.
// Networking and tick handling related.
// net_addr_t
// Magic number sent when connecting to check this is a valid client
// Old magic number used by Chocolate Doom versions before v3.0:
// header field value indicating that the packet is a reliable packet
// Supported protocols. If you're developing a fork of Chocolate
// Doom, you can add your own entry to this list while maintaining
// compatibility with Chocolate Doom servers. Higher-numbered enum values
// will be preferred when negotiating a protocol for the client and server
// to use, so the order matters.
// NOTE: The values in this enum do not have any special value outside of
// the program they're compiled in. What matters is the string representation.
// packet types
// Settings specified when the client connects to the server.
// Game settings sent by client to server when initiating game start,
// and received from the server by clients when the game starts.
// Complete set of ticcmds from all players
// Data sent in response to server queries
// Data sent by the server while waiting for the game to start.
// #ifndef NET_DEFS_H
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//
//
// The player data structure depends on a number
// of other structs: items (internal inventory),
// animation states (closely tied to the sprites
// used to represent them, unfortunately).
// In addition, the player is just a special
// case of the generic moving object/actor.
// Finally, for odd reasons, the player input
// is buffered within the player data struct,
// as commands per game tick.
//
// Player states.
//
//
// Player internal flags, for cheats and debug.
//
//
// Extended player object info: player_t
//
//
// INTERMISSION
// Structure passed e.g. to WI_Start(wb)
//
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Refresh/render internal state variables (global).
//
// Need data structure definitions.
//
// Refresh internal data structures,
//  for rendering.
//
// needed for texture pegging
// skipping global dup "textureheight"
// needed for pre rendering (fracs)
// skipping global dup "spritewidth"
// skipping global dup "spriteoffset"
// skipping global dup "spritetopoffset"
// skipping global dup "colormaps"
// skipping global dup "firstflat"
// for global animation
// skipping global dup "flattranslation"
// skipping global dup "texturetranslation"
// Sprite....
// skipping global dup "firstspritelump"
// skipping global dup "lastspritelump"
// skipping global dup "numspritelumps"
//
// Lookup tables for map data.
//
// skipping global dup "numvertexes"
// skipping global dup "vertexes"
// skipping global dup "numsegs"
// skipping global dup "segs"
// skipping global dup "numsectors"
// skipping global dup "sectors"
// skipping global dup "numsubsectors"
// skipping global dup "subsectors"
// skipping global dup "numnodes"
// skipping global dup "nodes"
// skipping global dup "numlines"
// skipping global dup "lines"
// skipping global dup "numsides"
// skipping global dup "sides"
//
// POV data.
//
// ?
// extern fixed_t		finetangent[FINEANGLES/2];
// skipping global dup "rw_distance"
// skipping global dup "rw_normalangle"
// angle to line origin
// skipping global dup "rw_angle1"
// Segs count?
// skipping global dup "floorplane"
// skipping global dup "ceilingplane"
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//  Refresh module, data I/O, caching, retrieval of graphics
//  by name.
//
// Retrieve column data for span blitting.
// I/O, setting up the stuff.
// Retrieval.
// Floor/ceiling opaque texture tiles,
// lookup by name. For animation?
// Called by P_Ticker for switches and animations,
// returns the texture number for the texture name.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	System specific interface stuff.
//
//
// POV related.
//
//
// Lighting LUT.
// Used for z-depth cuing per column/row,
//  and other lighting effects (sector ambient, flash).
//
// Lighting constants.
// Now why not 32 levels here?
// Number of diminishing brightness levels.
// There a 0-31, i.e. 32 LUT in the COLORMAP lump.
// Blocky/low detail mode.
// B remove this?
//  0 = high, 1 = low
//
// Function pointers to switch refresh/drawing functions.
// Used to select shadow mode etc.
//
// No shadow effects on floors.
//
// Utility functions.
@[c: 'R_PointOnSegSide']
fn r_point_on_seg_side(x int, y int, line &Seg_t) int

@[c: 'R_PointToAngle']
fn r_point_to_angle(x int, y int) Angle_t

//
// REFRESH - the actual rendering functions.
//
// Called by G_Drawer.
// Called by startup code.
// Called by M_Responder.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Refresh module, BSP traversal and handling.
//
// skipping global dup "curline"
// skipping global dup "sidedef"
// skipping global dup "linedef"
// skipping global dup "frontsector"
// skipping global dup "backsector"
// skipping global dup "rw_x"
// skipping global dup "rw_stopx"
// skipping global dup "segtextured"
// false if the back side is the same plane
// skipping global dup "markfloor"
// skipping global dup "markceiling"
// skipping global dup "drawsegs"
// skipping global dup "ds_p"
// BSP?
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Refresh module, drawing LineSegs from BSP.
//
@[c: 'R_RenderMaskedSegRange']
fn r_render_masked_seg_range(ds &Drawseg_t, x1 int, x2 int)

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Refresh, visplane stuff (floor, ceilings).
//
// Visplane related.
// skipping global dup "lastopening"
// skipping global dup "floorfunc"
// skipping global dup "floorclip"
// skipping global dup "ceilingclip"
// skipping global dup "yslope"
// skipping global dup "distscale"
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Rendering of moving objects, sprites.
//
// Constant arrays used for psprite clipping
//  and initializing clipping.
// vars for R_DrawMaskedColumn
@[c: 'R_DrawMaskedColumn']
fn r_draw_masked_column(column &Column_t)

@[c: 'R_SortVisSprites']
fn r_sort_vis_sprites()

@[c: 'R_AddSprites']
fn r_add_sprites(sec &Sector_t)

@[c: 'R_InitSprites']
fn r_init_sprites(namelist &&u8)

@[c: 'R_ClearSprites']
fn r_clear_sprites()

@[c: 'R_DrawMasked']
fn r_draw_masked()

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	System specific interface stuff.
//
// first pixel in a column
// The span blitting interface.
// Hook in assembler or system specific BLT
//  here.
// The Spectre/Invisibility effect.
// Draw with color translation tables,
//  for player sprite rendering,
//  Green/Red/Blue/Indigo shirts.
// start of a 64*64 tile image
// Span blitting for rows, floor/ceiling.
// No Sepctre effect needed.
// Low resolution mode, 160x200?
// Initialize color translation tables,
//  for player rendering etc.
// Rendering function.
// If the view size is not full screen, draws a border around it.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Main loop stuff.
//
// Callback function invoked while waiting for the netgame to start.
// The callback is invoked when new players are ready. The callback
// should return true, or return false to abort startup.
// Register callback functions for the main loop code to use.
// Create any new ticcmds and broadcast to other players.
// Broadcasts special packets to other players
//  to notify of game exit
//? how many ticks to run?
// Called at start of game loop to initialize timers
// Initialize networking code and connect to server.
// Start game with specified settings. The structure will be updated
// with the actual settings for the game.
// Check if it is permitted to record a demo with a non-vanilla feature.
// Check if it is permitted to play back a demo with a non-vanilla feature.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//   All the global variables that store the internal state.
//   Theoretically speaking, the internal state of the engine
//    should be found by looking at the variables collected
//    here, and every relevant module will have to include
//    this header file.
//   In practice, things are a bit messy.
//
// We need globally shared data structures,
//  for defining the global state variables.
// We need the playr data structure as well.
// Game mode/mission
// ------------------------
// Command line parameters.
//
// skipping global dup "nomonsters"
// checkparm of -nomonsters
// skipping global dup "respawnparm"
// checkparm of -respawn
// skipping global dup "fastparm"
// checkparm of -fast
// skipping global dup "devparm"
// DEBUG: launched with -devparm
// -----------------------------------------------------
// Game Mode - identify IWAD as shareware, retail etc.
//
// Convenience macro.
// 'gamemission' can be equal to pack_chex or pack_hacx, but these are
// just modified versions of doom and doom2, and should be interpreted
// as the same most of the time.
//
//#define logical_gamemission                             \
//    (gamemission == pack_chex ? doom :                  \
//     gamemission == pack_hacx ? doom2 : gamemission)
//
// Set if homebrew PWAD stuff has been added.
// -------------------------------------------
// Selected skill type, map etc.
//
// Defaults for menu, methinks.
// skipping global dup "startskill"
// skipping global dup "startepisode"
// skipping global dup "startmap"
// Savegame slot to load on startup.  This is the value provided to
// the -loadgame option.  If this has not been provided, this is -1.
// skipping global dup "startloadgame"
// skipping global dup "autostart"
// Selected by user.
// skipping global dup "gameskill"
// skipping global dup "gameepisode"
// skipping global dup "gamemap"
// If non-zero, exit the level after this number of minutes
// skipping global dup "timelimit"
// Nightmare mode flag, single player.
// skipping global dup "respawnmonsters"
// Netgame? Only true if >1 player.
// skipping global dup "netgame"
// 0=Cooperative; 1=Deathmatch; 2=Altdeath
// skipping global dup "deathmatch"
// -------------------------
// Internal parameters for sound rendering.
// These have been taken from the DOS version,
//  but are not (yet) supported with Linux
//  (e.g. no sound volume adjustment with menu.
// From m_menu.c:
//  Sound FX volume has default, 0 - 15
//  Music volume has default, 0 - 15
// These are multiplied by 8.
// Current music/sfx card - index useless
//  w/o a reference LUT in a sound module.
// Ideally, this would use indices found
//  in: /usr/include/linux/soundcard.h
// Config file? Same disclaimer as above.
// -------------------------
// Status flags for refresh.
//
// Depending on view size - no status bar?
// Note that there is no way to disable the
//  status bar explicitely.
// skipping global dup "automapactive"
// In AutoMap mode?
// skipping global dup "menuactive"
// Menu overlayed?
// skipping global dup "paused"
// Game Pause?
// skipping global dup "viewactive"
// skipping global dup "nodrawers"
// skipping global dup "testcontrols"
// skipping global dup "testcontrols_mousespeed"
// This one is related to the 3-screen display mode.
// ANG90 = left side, ANG270 = right
// Player taking events, and displaying.
// skipping global dup "consoleplayer"
// skipping global dup "displayplayer"
// -------------------------------------
// Scores, rating.
// Statistics on a given map, for intermission.
//
// skipping global dup "totalkills"
// skipping global dup "totalitems"
// skipping global dup "totalsecret"
// Timer, for scores.
// skipping global dup "levelstarttic"
// gametic at level start
// skipping global dup "leveltime"
// tics in game play for par
// --------------------------------------
// DEMO playback/recording related stuff.
// No demo, there is a human player in charge?
// Disable save/end game?
// skipping global dup "usergame"
//?
// skipping global dup "demoplayback"
// skipping global dup "demorecording"
// Round angleturn in ticcmds to the nearest 256.  This is used when
// recording Vanilla demos in netgames.
// skipping global dup "lowres_turn"
// Quit after playing a demo from cmdline.
// skipping global dup "singledemo"
//?
// skipping global dup "gamestate"
//-----------------------------
// Internal parameters, fixed.
// These are set by the engine, and not changed
//  according to user inputs. Partly load from
//  WAD, partly set at startup time.
// Bookkeeping on players - state.
// skipping global dup "players"
// Alive? Disconnected?
// skipping global dup "playeringame"
// Player spawn spots for deathmatch.
// skipping global dup "deathmatchstarts"
// skipping global dup "deathmatch_p"
// Player spawn spots.
// skipping global dup "playerstarts"
// skipping global dup "playerstartsingame"
// Intermission stats.
// Parameters for world map / intermission.
// skipping global dup "wminfo"
//-----------------------------------------
// Internal parameters, used for engine.
//
// File handling stuff.
// skipping global dup "savegamedir"
// if true, load all graphics at level load
// skipping global dup "precache"
// wipegamestate can be set to -1
//  to force a wipe on the next draw
// skipping global dup "wipegamestate"
// skipping global dup "mouseSensitivity"
// skipping global dup "bodyqueslot"
// Needed to store the number of the dummy sky flat.
// Used for rendering,
//  as well as tracking projectiles etc.
// skipping global dup "skyflatnum"
// Netgame stuff (buffers and pointers, i.e. indices).
// skipping global dup "rndindex"
// skipping global dup "netcmds"
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Refresh of things, i.e. objects represented by sprites.
//
// void R_DrawColumn (void);
// void R_DrawFuzzColumn (void);
struct Maskdraw_t {
	x1         int
	x2         int
	column     int
	topclip    int
	bottomclip int
}

//
// Sprite rotation 0 is facing the viewer,
//  rotation 1 is one angle turn CLOCKWISE around the axis.
// This is not the same as the angle,
//  which increases counter clockwise (protractor).
// There was a lot of stuff grabbed wrong, so I changed it...
//
// constant arrays
//  used for psprite clipping and initializing clipping
//
// INITIALIZATION FUNCTIONS
//
// variables used to look up
//  and range check thing_t sprites patches
//
// R_InstallSpriteLump
// Local function for R_InitSprites.
//
@[c: 'R_InstallSpriteLump']
fn r_install_sprite_lump(lump int, frame u32, rotation u32, flipped bool) {
	r := 0
	if frame >= 29 || rotation > 8 {
		i_error(c'R_InstallSpriteLump: Bad frame characters in lump %i', lump)
	}
	if int(frame) > maxframe {
		maxframe = frame
	}
	if rotation == 0 {
		// the lump should be used for all rotations
		if sprtemp[frame].rotate == false {
			i_error(c'R_InitSprites: Sprite %s frame %c has multip rot=0 lump', spritename,
				`A` + frame)
		}
		if sprtemp[frame].rotate == true {
			i_error(c'R_InitSprites: Sprite %s frame %c has rotations and a rot=0 lump',
				spritename, `A` + frame)
		}
		sprtemp[frame].rotate = false
		for r = 0; r < 8; r++ {
			sprtemp[frame].lump[r] = lump - firstspritelump
			sprtemp[frame].flip[r] = u8(flipped)
		}
		return
	}
	// the lump is only used for one rotation
	if sprtemp[frame].rotate == false {
		i_error(c'R_InitSprites: Sprite %s frame %c has rotations and a rot=0 lump', spritename,
			`A` + frame)
	}
	sprtemp[frame].rotate = true
	// make 0 based
	rotation--
	if sprtemp[frame].lump[rotation] != -1 {
		i_error(c'R_InitSprites: Sprite %s : %c : %c has two lumps mapped to it', spritename,
			`A` + frame, `1` + rotation)
	}
	sprtemp[frame].lump[rotation] = lump - firstspritelump
	sprtemp[frame].flip[rotation] = u8(flipped)
}

//
// R_InitSpriteDefs
// Pass a null terminated list of sprite names
//  (4 chars exactly) to be used.
// Builds the sprite rotation matrixes to account
//  for horizontally flipped sprites.
// Will report an error if the lumps are inconsistant.
// Only called at startup.
//
// Sprite lump names are 4 characters for the actor,
//  a letter for the frame, and a number for the rotation.
// A sprite that is flippable will have an additional
//  letter/number appended.
// The rotation character can be 0 to signify no rotations.
//
@[c: 'R_InitSpriteDefs']
fn r_init_sprite_defs(namelist &&u8) {
	check := &&u8(0)
	i := 0
	l := 0
	frame := 0
	rotation := 0
	start := 0
	end := 0
	patched := 0
	// count the number of sprite names
	check = namelist
	for *check != (unsafe { nil }) {
		check++
	}
	numsprites = check - namelist
	if !numsprites {
		return
	}
	sprites = z_malloc(numsprites * sizeof(*sprites), 1, (unsafe { nil }))
	start = firstspritelump - 1
	end = lastspritelump + 1
	// scan all the lump names for each of the names,
	//  noting the highest frame letter.
	// Just compare 4 characters as ints
	for i = 0; i < numsprites; i++ {
		spritename = deh_string(namelist[i])
		C.memset(sprtemp, -1, sizeof(sprtemp))
		maxframe = -1
		// scan the lumps,
		//  filling in the frames for whatever is found
		for l = start + 1; l < end; l++ {
			if !C.strncasecmp(lumpinfo[l].name, spritename, 4) {
				frame = lumpinfo[l].name[4] - `A`
				rotation = lumpinfo[l].name[5] - `0`
				if modifiedgame {
					patched = w_get_num_for_name(lumpinfo[l].name)
				} else { // 3
					patched = l
				}
				r_install_sprite_lump(patched, frame, rotation, false)
				if lumpinfo[l].name[6] {
					frame = lumpinfo[l].name[6] - `A`
					rotation = lumpinfo[l].name[7] - `0`
					r_install_sprite_lump(l, frame, rotation, true)
				}
			}
		}
		// check the frames that were found for completeness
		if maxframe == -1 {
			sprites[i].numframes = 0
			continue
		}
		maxframe++
		for frame = 0; frame < maxframe; frame++ {
			match int(sprtemp[frame].rotate) {
				-1 { // case comp body kind=CallExpr is_enum=true
					// no rotations were found for that frame at all
					i_error(c'R_InitSprites: No patches found for %s frame %c', spritename,
						frame + `A`)
				}
				0 { // case comp body kind=BreakStmt is_enum=true
					// only the first rotation is needed
				}
				1 { // case comp body kind=ForStmt is_enum=true
					// must have all 8 frames
					for rotation = 0; rotation < 8; rotation++ {
						if sprtemp[frame].lump[rotation] == -1 {
							i_error(c'R_InitSprites: Sprite %s frame %c is missing rotations',
								spritename, frame + `A`)
						}
					}
				}
				else {}
			}
		}
		// allocate space for the frames present and copy sprtemp to it
		sprites[i].numframes = maxframe
		sprites[i].spriteframes = z_malloc(maxframe * sizeof(Spriteframe_t), 1, (unsafe { nil }))
		C.memcpy(sprites[i].spriteframes, sprtemp, maxframe * sizeof(Spriteframe_t))
	}
}

//
// GAME FUNCTIONS
//
//
// R_InitSprites
// Called at program start.
//
@[c: 'R_InitSprites']
fn r_init_sprites(namelist &&u8) {
	i := 0
	for i = 0; i < 320; i++ {
		negonearray[i] = -1
	}
	r_init_sprite_defs(namelist)
}

//
// R_ClearSprites
// Called at frame start.
//
@[c: 'R_ClearSprites']
fn r_clear_sprites() {
	vissprite_p = vissprites
}

//
// R_NewVisSprite
//
@[c: 'R_NewVisSprite']
fn r_new_vis_sprite() &Vissprite_t {
	// if (vissprite_p == &vissprites[MAXVISSPRITES])
	// return &overflowsprite;
	vissprite_p++
	return vissprite_p - 1
}

//
// R_DrawMaskedColumn
// Used for sprites and masked mid textures.
// Masked means: partly transparent, i.e. stored
//  in posts/runs of opaque pixels.
//
@[c: 'R_DrawMaskedColumn']
fn r_draw_masked_column(column &Column_t) {
	topscreen := 0
	bottomscreen := 0
	basetexturemid := 0
	basetexturemid = dc_texturemid
	for ; column.topdelta != 255; {
		// calculate unclipped screen coordinates
		//  for post
		topscreen = sprtopscreen + spryscale * column.topdelta
		bottomscreen = topscreen + spryscale * column.length
		dc_yl = (topscreen + (1 << 16) - 1) >> 16
		dc_yh = (bottomscreen - 1) >> 16
		if dc_yh >= mfloorclip[dc_x] {
			dc_yh = mfloorclip[dc_x] - 1
		}
		if dc_yl <= mceilingclip[dc_x] {
			dc_yl = mceilingclip[dc_x] + 1
		}
		if dc_yl <= dc_yh {
			dc_source = &u8(column) + 3
			dc_texturemid = basetexturemid - (column.topdelta << 16)
			// dc_source = (byte *)column + 3 - column->topdelta;
			// Drawn by either R_DrawColumn
			//  or (SHADOW) R_DrawFuzzColumn.
			colfunc()
		}
		column = &Column_t((&u8(column) + column.length + 4))
	}
	dc_texturemid = basetexturemid
}

//
// R_DrawVisSprite
//  mfloorclip and mceilingclip should also be set.
//
@[c: 'R_DrawVisSprite']
fn r_draw_vis_sprite(vis &Vissprite_t, x1 int, x2 int) {
	column := &Column_t(0)
	texturecolumn := 0
	frac := 0
	patch := &Patch_t(0)
	patch = w_cache_lump_num(vis.patch + firstspritelump, 8)
	dc_colormap = vis.colormap
	if !dc_colormap {
		// NULL colormap = shadow draw
		colfunc = fuzzcolfunc
	} else if vis.mobjflags & Mobjflag_t.mf_translation {
		colfunc = transcolfunc
		dc_translation = translationtables - 256 +
			((vis.mobjflags & Mobjflag_t.mf_translation) >> (Mobjflag_t.mf_transshift - 8))
	}
	dc_iscale = C.abs(vis.xiscale) >> detailshift
	dc_texturemid = vis.texturemid
	frac = vis.startfrac
	spryscale = vis.scale
	sprtopscreen = centeryfrac - fixed_mul(dc_texturemid, spryscale)
	for dc_x = vis.x1; dc_x <= vis.x2; dc_x++ {
		texturecolumn = frac >> 16
		if texturecolumn < 0 || texturecolumn >= (i16((patch.width))) {
			i_error(c'R_DrawSpriteRange: bad texturecolumn')
		}
		column = &Column_t((&u8(patch) + (int((patch.columnofs[texturecolumn])))))
		r_draw_masked_column(column)
		frac += vis.xiscale
	}
	colfunc = basecolfunc
}

//
// R_ProjectSprite
// Generates a vissprite for a thing
//  if it might be visible.
//
@[c: 'R_ProjectSprite']
fn r_project_sprite(thing &Mobj_t) {
	tr_x := 0
	tr_y := 0
	gxt := 0
	gyt := 0
	tx := 0
	tz := 0
	xscale := 0
	x1 := 0
	x2 := 0
	sprdef := &Spritedef_t(0)
	sprframe := &Spriteframe_t(0)
	lump := 0
	rot := u32(0)
	flip := false
	index := 0
	vis := &Vissprite_t(0)
	ang := u32(0)
	iscale := 0
	// transform the origin point
	tr_x = thing.x - viewx
	tr_y = thing.y - viewy
	gxt = fixed_mul(tr_x, viewcos)
	gyt = -fixed_mul(tr_y, viewsin)
	tz = gxt - gyt
	// thing is behind view plane?
	if tz < ((1 << 16) * 4) {
		return
	}
	xscale = fixed_div(projection, tz)
	gxt = -fixed_mul(tr_x, viewsin)
	gyt = fixed_mul(tr_y, viewcos)
	tx = -(gyt + gxt)
	// too far off the side?
	if C.abs(tx) > (tz << 2) {
		return
	}
	// decide which patch to use for sprite relative to player
	if u32(thing.sprite) >= u32(numsprites) {
		i_error(c'R_ProjectSprite: invalid sprite number %i ', thing.sprite)
	}
	sprdef = &sprites[thing.sprite]
	if (thing.frame & 32767) >= sprdef.numframes {
		i_error(c'R_ProjectSprite: invalid sprite frame %i : %i ', thing.sprite, thing.frame)
	}
	sprframe = &sprdef.spriteframes[thing.frame & 32767]
	if sprframe.rotate {
		// choose a different rotation based on player view
		ang = r_point_to_angle(thing.x, thing.y)
		rot = (ang - thing.angle + u32((536870912 / 2)) * 9) >> 29
		lump = sprframe.lump[rot]
		flip = bool(sprframe.flip[rot])
	} else {
		// use single rotation for all views
		lump = sprframe.lump[0]
		flip = bool(sprframe.flip[0])
	}
	// calculate edges of the shape
	tx -= spriteoffset[lump]
	x1 = (centerxfrac + fixed_mul(tx, xscale)) >> 16
	// off the right side?
	if x1 > viewwidth {
		return
	}
	tx += spritewidth[lump]
	x2 = ((centerxfrac + fixed_mul(tx, xscale)) >> 16) - 1
	// off the left side
	if x2 < 0 {
		return
	}
	// store information in a vissprite
	vis = r_new_vis_sprite()
	vis.mobjflags = thing.flags
	vis.scale = xscale << detailshift
	vis.gx = thing.x
	vis.gy = thing.y
	vis.gz = thing.z
	vis.gzt = thing.z + spritetopoffset[lump]
	vis.texturemid = vis.gzt - viewz
	vis.x1 = if x1 < 0 { 0 } else { x1 }
	vis.x2 = if x2 >= viewwidth { viewwidth - 1 } else { x2 }
	iscale = fixed_div((1 << 16), xscale)
	if flip {
		vis.startfrac = spritewidth[lump] - 1
		vis.xiscale = -iscale
	} else {
		vis.startfrac = 0
		vis.xiscale = iscale
	}
	if vis.x1 > x1 {
		vis.startfrac += vis.xiscale * (vis.x1 - x1)
	}
	vis.patch = lump
	// get light level
	if thing.flags & Mobjflag_t.mf_shadow {
		// shadow draw
		vis.colormap = (unsafe { nil })
	} else if fixedcolormap {
		// fixed map
		vis.colormap = fixedcolormap
	} else if thing.frame & 32768 {
		// full bright
		vis.colormap = colormaps
	} else {
		// diminished light
		index = xscale >> (12 - detailshift)
		if index >= 48 {
			index = 48 - 1
		}
		vis.colormap = spritelights[index]
	}
}

//
// R_AddSprites
// During BSP traversal, this adds sprites by sector.
//
@[c: 'R_AddSprites']
fn r_add_sprites(sec &Sector_t) {
	thing := &Mobj_t(0)
	lightnum := 0
	// BSP is traversed by subsector.
	// A sector might have been split into several
	//  subsectors during BSP building.
	// Thus we check whether its already added.
	if sec.validcount == validcount {
		return
	}
	// Well, now it will be done.
	sec.validcount = validcount
	lightnum = (sec.lightlevel >> 4) + extralight
	if lightnum < 0 {
		spritelights = scalelight[0]
	} else if lightnum >= 16 {
		spritelights = scalelight[16 - 1]
	} else { // 3
		spritelights = scalelight[lightnum]
	}
	// Handle all things in sector.
	for thing = sec.thinglist; thing; thing = thing.snext {
		r_project_sprite(thing)
	}
}

//
// R_DrawPSprite
//
@[c: 'R_DrawPSprite']
fn r_draw_ps_prite(psp &Pspdef_t) {
	tx := 0
	x1 := 0
	x2 := 0
	sprdef := &Spritedef_t(0)
	sprframe := &Spriteframe_t(0)
	lump := 0
	flip := false
	vis := &Vissprite_t(0)
	avis := Vissprite_t{}
	// decide which patch to use
	if u32(psp.state.sprite) >= u32(numsprites) {
		i_error(c'R_ProjectSprite: invalid sprite number %i ', psp.state.sprite)
	}
	sprdef = &sprites[psp.state.sprite]
	if (psp.state.frame & 32767) >= sprdef.numframes {
		i_error(c'R_ProjectSprite: invalid sprite frame %i : %i ', psp.state.sprite, psp.state.frame)
	}
	sprframe = &sprdef.spriteframes[psp.state.frame & 32767]
	lump = sprframe.lump[0]
	flip = bool(sprframe.flip[0])
	// calculate edges of the shape
	tx = psp.sx - (320 / 2) * (1 << 16)
	tx -= spriteoffset[lump]
	x1 = (centerxfrac + fixed_mul(tx, pspritescale)) >> 16
	// off the right side
	if x1 > viewwidth {
		return
	}
	tx += spritewidth[lump]
	x2 = ((centerxfrac + fixed_mul(tx, pspritescale)) >> 16) - 1
	// off the left side
	if x2 < 0 {
		return
	}
	// store information in a vissprite
	vis = &avis
	vis.mobjflags = 0
	vis.texturemid = ((200 / 2) << 16) + (1 << 16) / 2 - (psp.sy - spritetopoffset[lump])
	vis.x1 = if x1 < 0 { 0 } else { x1 }
	vis.x2 = if x2 >= viewwidth { viewwidth - 1 } else { x2 }
	vis.scale = pspritescale << detailshift
	if flip {
		vis.xiscale = -pspriteiscale
		vis.startfrac = spritewidth[lump] - 1
	} else {
		vis.xiscale = pspriteiscale
		vis.startfrac = 0
	}
	if vis.x1 > x1 {
		vis.startfrac += vis.xiscale * (vis.x1 - x1)
	}
	vis.patch = lump
	if viewplayer.powers[int(Powertype_t.pw_invisibility)] > 4 * 32
		|| viewplayer.powers[int(Powertype_t.pw_invisibility)] & 8 {
		// shadow draw
		vis.colormap = (unsafe { nil })
	} else if fixedcolormap {
		// fixed color
		vis.colormap = fixedcolormap
	} else if psp.state.frame & 32768 {
		// full bright
		vis.colormap = colormaps
	} else {
		// local light
		vis.colormap = spritelights[48 - 1]
	}
	r_draw_vis_sprite(vis, vis.x1, vis.x2)
}

//
// R_DrawPlayerSprites
//
@[c: 'R_DrawPlayerSprites']
fn r_draw_player_sprites() {
	i := 0
	lightnum := 0
	psp := &Pspdef_t(0)
	// get light level
	lightnum = (viewplayer.mo.subsector.sector.lightlevel >> 4) + extralight
	if lightnum < 0 {
		spritelights = scalelight[0]
	} else if lightnum >= 16 {
		spritelights = scalelight[16 - 1]
	} else { // 3
		spritelights = scalelight[lightnum]
	}
	// clip to screen bounds
	mfloorclip = screenheightarray
	mceilingclip = negonearray
	// add all active psprites
	i = 0
	for psp = viewplayer.psprites; i < Psprnum_t.numpsprites; i++ {
		if psp.state {
			r_draw_ps_prite(psp)
		}
		psp++
	}
}

//
// R_SortVisSprites
//
@[c: 'R_SortVisSprites']
fn r_sort_vis_sprites() {
	i := 0
	count := 0
	ds := &Vissprite_t(0)
	best := &Vissprite_t(0)
	unsorted := Vissprite_t{}
	bestscale := 0
	count = vissprite_p - vissprites
	unsorted.next = &unsorted
	unsorted.prev = unsorted.next
	if !count {
		return
	}
	for ds = vissprites; ds < vissprite_p; ds++ {
		ds.next = ds + 1
		ds.prev = ds - 1
	}
	vissprites[0].prev = &unsorted
	unsorted.next = &vissprites[0]
	prevv := vissprite_p - 1
	//(vissprite_p-1)->next = &unsorted;
	prevv.next = &unsorted
	unsorted.prev = vissprite_p - 1
	// pull the vissprites out by scale
	vsprsortedhead.next = &vsprsortedhead
	vsprsortedhead.prev = vsprsortedhead.next
	for i = 0; i < count; i++ {
		bestscale = 2147483647
		best = unsorted.next
		for ds = unsorted.next; ds != &unsorted; ds = ds.next {
			if ds.scale < bestscale {
				bestscale = ds.scale
				best = ds
			}
		}
		best.next.prev = best.prev
		best.prev.next = best.next
		best.next = &vsprsortedhead
		best.prev = vsprsortedhead.prev
		vsprsortedhead.prev.next = best
		vsprsortedhead.prev = best
	}
}

//
// R_DrawSprite
//
@[c: 'R_DrawSprite']
fn r_draw_sprite(spr &Vissprite_t) {
	ds := &Drawseg_t(0)
	clipbot := [320]i16{}
	cliptop := [320]i16{}
	x := 0
	r1 := 0
	r2 := 0
	scale := 0
	lowscale := 0
	silhouette := 0
	for x = spr.x1; x <= spr.x2; x++ {
		clipbot[x] = -2
		cliptop[x] = clipbot[x]
	}
	// Scan drawsegs from end to start for obscuring segs.
	// The first drawseg that has a greater scale
	//  is the clip seg.
	for ds = ds_p - 1; ds >= drawsegs; ds-- {
		// determine if the drawseg obscures the sprite
		if ds.x1 > spr.x2 || ds.x2 < spr.x1 || (!ds.silhouette && !ds.maskedtexturecol) {
			// does not cover sprite
			continue
		}
		r1 = if ds.x1 < spr.x1 { spr.x1 } else { ds.x1 }
		r2 = if ds.x2 > spr.x2 { spr.x2 } else { ds.x2 }
		if ds.scale1 > ds.scale2 {
			lowscale = ds.scale2
			scale = ds.scale1
		} else {
			lowscale = ds.scale1
			scale = ds.scale2
		}
		if scale < spr.scale
			|| (lowscale < spr.scale && !r_point_on_seg_side(spr.gx, spr.gy, ds.curline)) {
			// masked mid texture?
			if ds.maskedtexturecol {
				r_render_masked_seg_range(ds, r1, r2)
			}
			// seg is behind sprite
			continue
		}
		// clip this piece of the sprite
		silhouette = ds.silhouette
		if spr.gz >= ds.bsilheight {
			silhouette &= ~1
		}
		if spr.gzt <= ds.tsilheight {
			silhouette &= ~2
		}
		if silhouette == 1 {
			// bottom sil
			for x = r1; x <= r2; x++ {
				if clipbot[x] == -2 {
					clipbot[x] = ds.sprbottomclip[x]
				}
			}
		} else if silhouette == 2 {
			// top sil
			for x = r1; x <= r2; x++ {
				if cliptop[x] == -2 {
					cliptop[x] = ds.sprtopclip[x]
				}
			}
		} else if silhouette == 3 {
			// both
			for x = r1; x <= r2; x++ {
				if clipbot[x] == -2 {
					clipbot[x] = ds.sprbottomclip[x]
				}
				if cliptop[x] == -2 {
					cliptop[x] = ds.sprtopclip[x]
				}
			}
		}
	}
	// all clipping has been performed, so draw the sprite
	// check for unclipped columns
	for x = spr.x1; x <= spr.x2; x++ {
		if clipbot[x] == -2 {
			clipbot[x] = viewheight
		}
		if cliptop[x] == -2 {
			cliptop[x] = -1
		}
	}
	mfloorclip = clipbot
	mceilingclip = cliptop
	r_draw_vis_sprite(spr, spr.x1, spr.x2)
}

//
// R_DrawMasked
//
@[c: 'R_DrawMasked']
fn r_draw_masked() {
	spr := &Vissprite_t(0)
	ds := &Drawseg_t(0)
	r_sort_vis_sprites()
	if vissprite_p > vissprites {
		// draw all vissprites back to front
		for spr = vsprsortedhead.next; spr != &vsprsortedhead; spr = spr.next {
			r_draw_sprite(spr)
		}
	}
	// render any remaining masked mid textures
	for ds = ds_p - 1; ds >= drawsegs; ds-- {
		if ds.maskedtexturecol {
			r_render_masked_seg_range(ds, ds.x1, ds.x2)
		}
	}
	// draw the psprites on top of everything
	//  but does not draw on side views
	if !viewangleoffset {
		r_draw_player_sprites()
	}
}
