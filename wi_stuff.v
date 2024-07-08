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
//      Miscellaneous.
//
@[c: 'M_StringCopy']
fn m_string_copy(dest &i8, src &i8, dest_size usize) bool

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
// Returns a number from 0 to 255,
// from a lookup table.
@[c: 'M_Random']
fn m_random() int

// As M_Random, but used only by the play simulation.
// Fix randoms for demos.
// Defined version of P_Random() - P_Random()
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

@[c: 'DEH_snprintf']
@[c2v_variadic]
fn deh_snprintf(buffer &i8, len usize, fmt ...&i8)

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
//	WAD I/O functions.
//
type Wad_file_t = Wad_file_s

struct Wad_file_class_t {
	// Open a file for reading.
	openFile fn (&i8) &Wad_file_t
	// Close the specified file.
	closeFile fn (&Wad_file_t)
	// Read data from the specified position in the file into the
	// provided buffer.  Returns the number of bytes read.
	read fn (&Wad_file_t, u32, voidptr, usize) usize
}

struct Wad_file_s {
	// Class of this file.
	file_class &Wad_file_class_t
	// If this is NULL, the file cannot be mapped into memory.  If this
	// is non-NULL, it is a pointer to the mapped file.
	mapped &u8
	// Length of the file, in bytes.
	length u32
	// File's location on disk.
	path &i8
}

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
type Lumpinfo_t = Lumpinfo_s
type Lumpindex_t = int

struct Lumpinfo_s {
	name     [8]i8
	wad_file &Wad_file_t
	position int
	size     int
	cache    voidptr
	// Used for hash table lookups
	next Lumpindex_t
}

@[c: 'W_CheckNumForName']
fn w_check_num_for_name(name &i8) Lumpindex_t

@[c: 'W_CacheLumpName']
fn w_cache_lump_name(name &i8, tag int) voidptr

@[c: 'W_ReleaseLumpName']
fn w_release_lump_name(name &i8)

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
//   Duh.
//
//
// GAME
//
// Can be called by the startup code or M_Responder.
// A normal game starts at map 1,
// but a warp test can start elsewhere
// Can be called by the startup code or M_Responder,
// calls P_SetupLevel or W_EnterWorld.
// Called by M_Responder.
// Only called by startup code.
@[c: 'G_WorldDone']
fn g_world_done()

// Read current data from inputs and build a player movement command.
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
// needed for pre rendering (fracs)
// for global animation
// Sprite....
//
// Lookup tables for map data.
//
//
// POV data.
//
// ?
// extern fixed_t		finetangent[FINEANGLES/2];
// angle to line origin
// Segs count?
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
// false if the back side is the same plane
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
//	The not so system specific sound interface.
//
// so that the individual game logic and sound driver code agree
//
// SoundFX struct.
//
//
// MusicInfo struct.
//
// Interface for sound modules
// Interface for music modules
// DMX version to emulate for OPL emulation:
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
//	Created by the sound utility written by Dave Taylor.
//	Kept as a sample, DOOM2  sounds. Frozen.
//
// the complete set of sound effects
// the complete set of music
//
// Identifiers for all music in game.
//
//
// Identifiers for all sfx in game.
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
//	The not so system specific sound interface.
//
//
// Initializes sound stuff, including volume
// Sets channels, SFX and music volume,
//  allocates channel buffer, sets S_sfx lookup.
//
// Shut down sound
//
// Per level startup code.
// Kills playing sounds at start of level,
//  determines music if any, changes music.
//
//
// Start sound for thing at <origin>
//  using <sound_id> from sounds.h
//
@[c: 'S_StartSound']
fn s_start_sound(origin voidptr, sound_id int)

// Stop sound for thing at <origin>
// Start music using <music_id> from sounds.h
// Start music using <music_id> from sounds.h,
//  and set whether looping
@[c: 'S_ChangeMusic']
fn s_change_music(music_id int, looping int)

// query if music is playing
// Stops the music fer sure.
// Stop and resume music, during game PAUSE.
//
// Updates music & sounds
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
// checkparm of -nomonsters
// checkparm of -respawn
// checkparm of -fast
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
// Savegame slot to load on startup.  This is the value provided to
// the -loadgame option.  If this has not been provided, this is -1.
// Selected by user.
// If non-zero, exit the level after this number of minutes
// Nightmare mode flag, single player.
// Netgame? Only true if >1 player.
// 0=Cooperative; 1=Deathmatch; 2=Altdeath
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
// In AutoMap mode?
// Menu overlayed?
// Game Pause?
// This one is related to the 3-screen display mode.
// ANG90 = left side, ANG270 = right
// Player taking events, and displaying.
// -------------------------------------
// Scores, rating.
// Statistics on a given map, for intermission.
//
// Timer, for scores.
// gametic at level start
// tics in game play for par
// --------------------------------------
// DEMO playback/recording related stuff.
// No demo, there is a human player in charge?
// Disable save/end game?
//?
// Round angleturn in ticcmds to the nearest 256.  This is used when
// recording Vanilla demos in netgames.
// Quit after playing a demo from cmdline.
//?
//-----------------------------
// Internal parameters, fixed.
// These are set by the engine, and not changed
//  according to user inputs. Partly load from
//  WAD, partly set at startup time.
// Bookkeeping on players - state.
// Alive? Disconnected?
// Player spawn spots for deathmatch.
// Player spawn spots.
// Intermission stats.
// Parameters for world map / intermission.
//-----------------------------------------
// Internal parameters, used for engine.
//
// File handling stuff.
// if true, load all graphics at level load
// wipegamestate can be set to -1
//  to force a wipe on the next draw
// Needed to store the number of the dummy sky flat.
// Used for rendering,
//  as well as tracking projectiles etc.
// skipping global dup "skyflatnum"
// Netgame stuff (buffers and pointers, i.e. indices).
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
//	Gamma correction LUT.
//	Functions to draw patches (by post) directly to screen.
//	Functions to blit a block to the screen.
//
// Needed because we are refering to patches.
//
// VIDEO
//
// haleyjd 08/28/10: implemented for Strife support
// haleyjd 08/28/10: Patch clipping callback, implemented to support Choco
// Strife.
type Vpatchclipfunc_t = fn (&Patch_t, int, int) bool

// Allocates buffer screens, call before R_Init.
// Draw a block from the specified source screen to the screen.
@[c: 'V_DrawPatch']
fn v_draw_patch(x int, y int, patch &Patch_t)

// villsa [STRIFE]
// Draw a linear block of pixels into the view buffer.
// Draw a raw screen lump
// Temporarily switch to using a different buffer to draw graphics, etc.
// Return to using the normal screen buffer to draw graphics.
// Save a screenshot of the current screen to a file, named in the
// format described in the string passed to the function, eg.
// "DOOM%02i.pcx"
// Load the lookup table for translucency calculations from the TINTTAB
// lump.
// villsa [STRIFE]
// Load the lookup table for translucency calculations from the XLATAB
// lump.
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
//  Intermission.
//
//#include "v_video.h"
// States for the intermission
enum Stateenum_t {
	no_state      = -1
	stat_count
	show_next_loc
}

// Called by main loop, animate the intermission.
@[c: 'WI_Ticker']
fn wi_ticker()

// Called by main loop,
// draws the intermission directly into the screen buffer.
@[c: 'WI_Drawer']
fn wi_drawer()

// Setup for an intermission screen.
@[c: 'WI_Start']
fn wi_start(wbstartstruct &Wbstartstruct_t)

// Shut down the intermission screen
@[c: 'WI_End']
fn wi_end()

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
//	Intermission screens.
//
// Data.
// Needs access to LFB.
//
// Data needed to add patches to full screen intermission pics.
// Patches are statistics messages, and animations.
// Loads of by-pixel layout and placement, offsets etc.
//
//
// Different vetween registered DOOM (1994) and
//  Ultimate DOOM - Final edition (retail, 1995?).
// This is supposedly ignored for commercial
//  release (aka DOOM II), which had 34 maps
//  in one episode. So there.
// in tics
// U #define PAUSELEN		(TICRATE*2)
// U #define SCORESTEP		100
// U #define ANIMPERIOD		32
// pixel distance from "(YOU)" to "PLAYER N"
// U #define STARDIST		10
// U #define WK 1
// GLOBAL LOCATIONS
// SINGPLE-PLAYER STUFF
// NET GAME STUFF
// DEATHMATCH STUFF
enum Animenum_t {
	anim_always
	anim_random
	anim_level
}

struct Point_t {
	x int
	y int
}

//
// Animation.
// There is another anim_t used in p_spec.
//
struct Anim_t {
	type_ Animenum_t
	// period in tics between animations
	period int
	// number of animation frames
	nanims int
	// location of animation
	loc Point_t
	// ALWAYS: n/a,
	// RANDOM: period deviation (<256),
	// LEVEL: level
	data1 int
	// ALWAYS: n/a,
	// RANDOM: random base period,
	// LEVEL: n/a
	data2 int
	// actual graphics for frames of animations
	p [3]&Patch_t
	// following must be initialized to zero before use!
	// next value of bcnt (used in conjunction with period)
	nexttic int
	// last drawn animation frame
	lastdrawn int
	// next frame number to animate
	ctr int
	// used by RANDOM and LEVEL when animating
	state int
}

//
// Animation locations for episode 0 (1).
// Using patches saves a lot of space,
//  as they replace 320x200 full screen frames.
//
// XTODO
//
// GENERAL DATA
//
//
// Locally used stuff.
//
// States for single-player
// in seconds
//#define SHOWLASTLOCDELAY	SHOWNEXTLOCDELAY
// used to accelerate or skip a stage
// wbs->pnum
// specifies current state
// contains information passed into intermission
// wbs->plyr[]
// used for general timing
// used for timing of background animation
// signals to refresh everything for one frame
// # of commercial levels
//
//	GRAPHICS
//
// You Are Here graphic
// splat
// %, : graphics
// 0-9 graphic
// minus sign
// "Finished!" graphics
// "Entering" graphic
// "secret"
// "Kills", "Scrt", "Items", "Frags"
// Time sucks.
// "killers", "victims"
// "Total", your face, your dead face
// "red P[1..MAXPLAYERS]"
// "gray P[1..MAXPLAYERS]"
// Name graphics of each level (centered)
// Buffer storing the backdrop
//
// CODE
//
// slam background
@[c: 'WI_slamBackground']
fn wi_slam_background() {
	v_draw_patch(0, 0, background)
}

// The ticker is used to detect keys
//  because of timing issues in netgames.
@[c: 'WI_Responder']
fn wi_responder(ev &Event_t) bool {
	return false
}

// Draws "<Levelname> Finished!"
@[c: 'WI_drawLF']
fn wi_draw_lf() {
	y := 2
	if gamemode != GameMode_t.commercial || wbs.last < NUMCMAPS {
		// draw <LevelName>
		v_draw_patch((320 - (i16((lnames[wbs.last].width)))) / 2, y, lnames[wbs.last])
		// draw "Finished!"
		y += (5 * (i16((lnames[wbs.last].height)))) / 4
		v_draw_patch((320 - (i16((finished.width)))) / 2, y, finished)
	} else if wbs.last == NUMCMAPS {
		// MAP33 - draw "Finished!" only
		v_draw_patch((320 - (i16((finished.width)))) / 2, y, finished)
	} else if wbs.last > NUMCMAPS {
		// > MAP33.  Doom bombs out here with a Bad V_DrawPatch error.
		// I'm pretty sure that doom2.exe is just reading into random
		// bits of memory at this point, but let's try to be accurate
		// anyway.  This deliberately triggers a V_DrawPatch error.
		tmp := Patch_t{
			width: 320
			height: 200
			leftoffset: 1
			topoffset: 1
			columnofs: [0, 0, 0, 0, 0, 0, 0, 0]!
		}

		v_draw_patch(0, y, &tmp)
	}
}

// Draws "Entering <LevelName>"
@[c: 'WI_drawEL']
fn wi_draw_el() {
	y := 2
	// draw "Entering"
	v_draw_patch((320 - (i16((entering.width)))) / 2, y, entering)
	// draw level
	y += (5 * (i16((lnames[wbs.next].height)))) / 4
	v_draw_patch((320 - (i16((lnames[wbs.next].width)))) / 2, y, lnames[wbs.next])
}

@[c: 'WI_drawOnLnode']
fn wi_draw_on_lnode(n int, c &&Patch_t) {
	i := 0
	left := 0
	top := 0
	right := 0
	bottom := 0
	fits := false
	i = 0
	for {
		left = lnodes[wbs.epsd][n].x - (i16((c[i].leftoffset)))
		top = lnodes[wbs.epsd][n].y - (i16((c[i].topoffset)))
		right = left + (i16((c[i].width)))
		bottom = top + (i16((c[i].height)))
		if left >= 0 && right < 320 && top >= 0 && bottom < 200 {
			fits = true
		} else {
			i++
		}
		// while()
		if !(!fits && i != 2 && c[i] != (unsafe { nil })) {
			break
		}
	}
	if fits && i < 2 {
		v_draw_patch(lnodes[wbs.epsd][n].x, lnodes[wbs.epsd][n].y, c[i])
	} else {
		// DEBUG
		C.printf(c'Could not place patch on level %d', n + 1)
	}
}

@[c: 'WI_initAnimatedBack']
fn wi_init_animated_back() {
	i := 0
	a := &Anim_t(0)
	if gamemode == GameMode_t.commercial {
		return
	}
	if wbs.epsd > 2 {
		return
	}
	for i = 0; i < NUMANIMS[wbs.epsd]; i++ {
		a = &anims[wbs.epsd][i]
		// init variables
		a.ctr = -1
		// specify the next time to draw it
		if a.type_ == Animenum_t.anim_always {
			a.nexttic = bcnt + 1 + (m_random() % a.period)
		} else if a.type_ == Animenum_t.anim_random {
			a.nexttic = bcnt + 1 + a.data2 + (m_random() % a.data1)
		} else if a.type_ == Animenum_t.anim_level {
			a.nexttic = bcnt + 1
		}
	}
}

@[c: 'WI_updateAnimatedBack']
fn wi_update_animated_back() {
	i := 0
	a := &Anim_t(0)
	if gamemode == GameMode_t.commercial {
		return
	}
	if wbs.epsd > 2 {
		return
	}
	for i = 0; i < NUMANIMS[wbs.epsd]; i++ {
		a = &anims[wbs.epsd][i]
		if bcnt == a.nexttic {
			match a.type_ {
				.anim_always { // case comp body kind=IfStmt is_enum=true
					if a.ctr++$ >= a.nanims {
						a.ctr = 0
					}
					a.nexttic = bcnt + a.period
				}
				.anim_random { // case comp body kind=UnaryOperator is_enum=true
					a.ctr++
					if a.ctr == a.nanims {
						a.ctr = -1
						a.nexttic = bcnt + a.data2 + (m_random() % a.data1)
					} else { // 3
						a.nexttic = bcnt + a.period
					}
				}
				.anim_level { // case comp body kind=IfStmt is_enum=true
					// gawd-awful hack for level anims
					if !(state == Stateenum_t.stat_count && i == 7) && wbs.next == a.data1 {
						a.ctr++
						if a.ctr == a.nanims {
							a.ctr--
						}
						a.nexttic = bcnt + a.period
					}
				}
				else {}
			}
		}
	}
}

@[c: 'WI_drawAnimatedBack']
fn wi_draw_animated_back() {
	i := 0
	a := &Anim_t(0)
	if gamemode == GameMode_t.commercial {
		return
	}
	if wbs.epsd > 2 {
		return
	}
	for i = 0; i < (NUMANIMS[wbs.epsd]); i++ {
		a = &anims[wbs.epsd][i]
		if a.ctr >= 0 {
			v_draw_patch(a.loc.x, a.loc.y, a.p[a.ctr])
		}
	}
}

//
// Draws a number.
// If digits > 0, then use that many digits minimum,
//  otherwise only use as many as necessary.
// Returns new x position.
//
@[c: 'WI_drawNum']
fn wi_draw_num(x int, y int, n int, digits int) int {
	fontwidth := (i16((num[0].width)))
	neg := 0
	temp := 0
	if digits < 0 {
		if !n {
			// make variable-length zeros 1 digit long
			digits = 1
		} else {
			// figure out # of digits in #
			digits = 0
			temp = n
			for temp {
				temp /= 10
				digits++
			}
		}
	}
	neg = n < 0
	if neg {
		n = -n
	}
	// if non-number, do not draw it
	if n == 1994 {
		return 0
	}
	// draw the new number
	for digits-- {
		x -= fontwidth
		v_draw_patch(x, y, num[n % 10])
		n /= 10
	}
	// draw a minus sign if necessary
	if neg && wiminus {
		// V_DrawPatch(x-=8, y, wiminus);
		v_draw_patch(x, y, wiminus)
		x -= 8
		// QTODO
	}
	return x
}

@[c: 'WI_drawPercent']
fn wi_draw_percent(x int, y int, p int) {
	if p < 0 {
		return
	}
	v_draw_patch(x, y, percent)
	wi_draw_num(x, y, p, -1)
}

//
// Display level completion time and par,
//  or "sucks" message if overflow.
//
@[c: 'WI_drawTime']
fn wi_draw_time(x int, y int, t int) {
	div_ := 0
	n := 0
	if t < 0 {
		return
	}
	if t <= 61 * 59 {
		div_ = 1
		for {
			n = (t / div_) % 60
			x = wi_draw_num(x, y, n, 2) - (i16((colon.width)))
			div_ *= 60
			// draw
			if div_ == 60 || t / div_ {
				v_draw_patch(x, y, colon)
			}
			// while()
			if !(t / div_) {
				break
			}
		}
	} else {
		// "sucks"
		v_draw_patch(x - (i16((sucks.width))), y, sucks)
	}
}

@[c: 'WI_unloadData']
fn wi_unload_data()

@[c: 'WI_End']
fn wi_end() {
	wi_unload_data()
}

@[c: 'WI_initNoState']
fn wi_init_no_state() {
	state = Stateenum_t.no_state
	acceleratestage = 0
	cnt = 10
}

@[c: 'WI_updateNoState']
fn wi_update_no_state() {
	wi_update_animated_back()
	if !cnt--$ {
		// Don't call WI_End yet.  G_WorldDone doesnt immediately
		// change gamestate, so WI_Drawer is still going to get
		// run until that happens.  If we do that after WI_End
		// (which unloads all the graphics), we're in trouble.
		// WI_End();
		g_world_done()
	}
}

@[c: 'WI_initShowNextLoc']
fn wi_init_show_next_loc() {
	state = Stateenum_t.show_next_loc
	acceleratestage = 0
	cnt = 4 * 35
	wi_init_animated_back()
}

@[c: 'WI_updateShowNextLoc']
fn wi_update_show_next_loc() {
	wi_update_animated_back()
	if !cnt--$ || acceleratestage {
		wi_init_no_state()
	} else { // 3
		snl_pointeron = (cnt & 31) < 20
	}
}

@[c: 'WI_drawShowNextLoc']
fn wi_draw_show_next_loc() {
	i := 0
	last := 0
	wi_slam_background()
	// draw animated background
	wi_draw_animated_back()
	if gamemode != GameMode_t.commercial {
		if wbs.epsd > 2 {
			wi_draw_el()
			return
		}
		last = if (wbs.last == 8) { wbs.next - 1 } else { wbs.last }
		// draw a splat on taken cities.
		for i = 0; i <= last; i++ {
			wi_draw_on_lnode(i, splat)
		}
		// splat the secret level?
		if wbs.didsecret {
			wi_draw_on_lnode(8, splat)
		}
		// draw flashing ptr
		if snl_pointeron {
			wi_draw_on_lnode(wbs.next, yah)
		}
	}
	// draws which level you are entering..
	if gamemode != GameMode_t.commercial || wbs.next != 30 {
		wi_draw_el()
	}
}

@[c: 'WI_drawNoState']
fn wi_draw_no_state() {
	snl_pointeron = true
	wi_draw_show_next_loc()
}

@[c: 'WI_fragSum']
fn wi_frag_sum(playernum int) int {
	i := 0
	frags := 0
	for i = 0; i < 4; i++ {
		if playeringame[i] && i != playernum {
			frags += plrs[playernum].frags[i]
		}
	}
	// JDC hack - negative frags.
	frags -= plrs[playernum].frags[playernum]
	// UNUSED if (frags < 0)
	// 	frags = 0;
	return frags
}

@[c: 'WI_initDeathmatchStats']
fn wi_init_deathmatch_stats() {
	i := 0
	j := 0
	state = Stateenum_t.stat_count
	acceleratestage = 0
	dm_state = 1
	cnt_pause = 35
	for i = 0; i < 4; i++ {
		if playeringame[i] {
			for j = 0; j < 4; j++ {
				if playeringame[j] {
					dm_frags[i][j] = 0
				}
			}
			dm_totals[i] = 0
		}
	}
	wi_init_animated_back()
}

@[c: 'WI_updateDeathmatchStats']
fn wi_update_deathmatch_stats() {
	i := 0
	j := 0
	stillticking := false
	wi_update_animated_back()
	if acceleratestage && dm_state != 4 {
		acceleratestage = 0
		for i = 0; i < 4; i++ {
			if playeringame[i] {
				for j = 0; j < 4; j++ {
					if playeringame[j] {
						dm_frags[i][j] = plrs[i].frags[j]
					}
				}
				dm_totals[i] = wi_frag_sum(i)
			}
		}
		s_start_sound(0, Sfxenum_t.sfx_barexp)
		dm_state = 4
	}
	if dm_state == 2 {
		if !(bcnt & 3) {
			s_start_sound(0, Sfxenum_t.sfx_pistol)
		}
		stillticking = false
		for i = 0; i < 4; i++ {
			if playeringame[i] {
				for j = 0; j < 4; j++ {
					if playeringame[j] && dm_frags[i][j] != plrs[i].frags[j] {
						if plrs[i].frags[j] < 0 {
							dm_frags[i][j]--
						} else { // 3
							dm_frags[i][j]++
						}
						if dm_frags[i][j] > 99 {
							dm_frags[i][j] = 99
						}
						if dm_frags[i][j] < -99 {
							dm_frags[i][j] = -99
						}
						stillticking = true
					}
				}
				dm_totals[i] = wi_frag_sum(i)
				if dm_totals[i] > 99 {
					dm_totals[i] = 99
				}
				if dm_totals[i] < -99 {
					dm_totals[i] = -99
				}
			}
		}
		if !stillticking {
			s_start_sound(0, Sfxenum_t.sfx_barexp)
			dm_state++
		}
	} else if dm_state == 4 {
		if acceleratestage {
			s_start_sound(0, Sfxenum_t.sfx_slop)
			if gamemode == GameMode_t.commercial {
				wi_init_no_state()
			} else { // 3
				wi_init_show_next_loc()
			}
		}
	} else if dm_state & 1 {
		if !cnt_pause--$ {
			dm_state++
			cnt_pause = 35
		}
	}
}

@[c: 'WI_drawDeathmatchStats']
fn wi_draw_deathmatch_stats() {
	i := 0
	j := 0
	x := 0
	y := 0
	w := 0
	wi_slam_background()
	// draw animated background
	wi_draw_animated_back()
	wi_draw_lf()
	// draw stat titles (top line)
	v_draw_patch(269 - (i16((total.width))) / 2, 68 - 33 + 10, total)
	v_draw_patch(10, 100, killers)
	v_draw_patch(5, 50, victims)
	// draw P?
	x = 42 + 40
	y = 68
	for i = 0; i < 4; i++ {
		if playeringame[i] {
			v_draw_patch(x - (i16((p[i].width))) / 2, 68 - 33, p[i])
			v_draw_patch(42 - (i16((p[i].width))) / 2, y, p[i])
			if i == me {
				v_draw_patch(x - (i16((p[i].width))) / 2, 68 - 33, bstar)
				v_draw_patch(42 - (i16((p[i].width))) / 2, y, star)
			}
		} else {
			// V_DrawPatch(x-SHORT(bp[i]->width)/2,

			//   DM_MATRIXY - WI_SPACINGY, bp[i]);

			// V_DrawPatch(DM_MATRIXX-SHORT(bp[i]->width)/2,

			//   y, bp[i]);
		}
		x += 40
		y += 33
	}
	// draw stats
	y = 68 + 10
	w = (i16((num[0].width)))
	for i = 0; i < 4; i++ {
		x = 42 + 40
		if playeringame[i] {
			for j = 0; j < 4; j++ {
				if playeringame[j] {
					wi_draw_num(x + w, y, dm_frags[i][j], 2)
				}
				x += 40
			}
			wi_draw_num(269 + w, y, dm_totals[i], 2)
		}
		y += 33
	}
}

@[c: 'WI_initNetgameStats']
fn wi_init_netgame_stats() {
	i := 0
	state = Stateenum_t.stat_count
	acceleratestage = 0
	ng_state = 1
	cnt_pause = 35
	for i = 0; i < 4; i++ {
		if !playeringame[i] {
			continue
		}
		cnt_kills[i] = 0
		cnt_items[i] = 0
		cnt_secret[i] = 0
		cnt_frags[i] = 0
		dofrags += wi_frag_sum(i)
	}
	dofrags = !!dofrags
	wi_init_animated_back()
}

@[c: 'WI_updateNetgameStats']
fn wi_update_netgame_stats() {
	i := 0
	fsum := 0
	stillticking := false
	wi_update_animated_back()
	if acceleratestage && ng_state != 10 {
		acceleratestage = 0
		for i = 0; i < 4; i++ {
			if !playeringame[i] {
				continue
			}
			cnt_kills[i] = (plrs[i].skills * 100) / wbs.maxkills
			cnt_items[i] = (plrs[i].sitems * 100) / wbs.maxitems
			cnt_secret[i] = (plrs[i].ssecret * 100) / wbs.maxsecret
			if dofrags {
				cnt_frags[i] = wi_frag_sum(i)
			}
		}
		s_start_sound(0, Sfxenum_t.sfx_barexp)
		ng_state = 10
	}
	if ng_state == 2 {
		if !(bcnt & 3) {
			s_start_sound(0, Sfxenum_t.sfx_pistol)
		}
		stillticking = false
		for i = 0; i < 4; i++ {
			if !playeringame[i] {
				continue
			}
			cnt_kills[i] += 2
			if cnt_kills[i] >= (plrs[i].skills * 100) / wbs.maxkills {
				cnt_kills[i] = (plrs[i].skills * 100) / wbs.maxkills
			} else { // 3
				stillticking = true
			}
		}
		if !stillticking {
			s_start_sound(0, Sfxenum_t.sfx_barexp)
			ng_state++
		}
	} else if ng_state == 4 {
		if !(bcnt & 3) {
			s_start_sound(0, Sfxenum_t.sfx_pistol)
		}
		stillticking = false
		for i = 0; i < 4; i++ {
			if !playeringame[i] {
				continue
			}
			cnt_items[i] += 2
			if cnt_items[i] >= (plrs[i].sitems * 100) / wbs.maxitems {
				cnt_items[i] = (plrs[i].sitems * 100) / wbs.maxitems
			} else { // 3
				stillticking = true
			}
		}
		if !stillticking {
			s_start_sound(0, Sfxenum_t.sfx_barexp)
			ng_state++
		}
	} else if ng_state == 6 {
		if !(bcnt & 3) {
			s_start_sound(0, Sfxenum_t.sfx_pistol)
		}
		stillticking = false
		for i = 0; i < 4; i++ {
			if !playeringame[i] {
				continue
			}
			cnt_secret[i] += 2
			if cnt_secret[i] >= (plrs[i].ssecret * 100) / wbs.maxsecret {
				cnt_secret[i] = (plrs[i].ssecret * 100) / wbs.maxsecret
			} else { // 3
				stillticking = true
			}
		}
		if !stillticking {
			s_start_sound(0, Sfxenum_t.sfx_barexp)
			ng_state += 1 + 2 * !dofrags
		}
	} else if ng_state == 8 {
		if !(bcnt & 3) {
			s_start_sound(0, Sfxenum_t.sfx_pistol)
		}
		stillticking = false
		for i = 0; i < 4; i++ {
			if !playeringame[i] {
				continue
			}
			cnt_frags[i] += 1
			// QTODO
			// if (cnt_frags[i] >= (fsum = WI_fragSum(i)))
			fsum = wi_frag_sum(i)
			if cnt_frags[i] >= fsum {
				cnt_frags[i] = fsum
			} else { // 3
				stillticking = true
			}
		}
		if !stillticking {
			s_start_sound(0, Sfxenum_t.sfx_pldeth)
			ng_state++
		}
	} else if ng_state == 10 {
		if acceleratestage {
			s_start_sound(0, Sfxenum_t.sfx_sgcock)
			if gamemode == GameMode_t.commercial {
				wi_init_no_state()
			} else { // 3
				wi_init_show_next_loc()
			}
		}
	} else if ng_state & 1 {
		if !cnt_pause--$ {
			ng_state++
			cnt_pause = 35
		}
	}
}

@[c: 'WI_drawNetgameStats']
fn wi_draw_netgame_stats() {
	i := 0
	x := 0
	y := 0
	pwidth := (i16((percent.width)))
	wi_slam_background()
	// draw animated background
	wi_draw_animated_back()
	wi_draw_lf()
	// draw stat titles (top line)
	v_draw_patch((32 + (i16((star.width))) / 2 + 32 * !dofrags) + 64 - (i16((kills.width))),
		50, kills)
	v_draw_patch((32 + (i16((star.width))) / 2 + 32 * !dofrags) + 2 * 64 - (i16((items.width))),
		50, items)
	v_draw_patch((32 + (i16((star.width))) / 2 + 32 * !dofrags) + 3 * 64 - (i16((secret.width))),
		50, secret)
	if dofrags {
		v_draw_patch((32 + (i16((star.width))) / 2 + 32 * !dofrags) + 4 * 64 - (i16((frags.width))),
			50, frags)
	}
	// draw stats
	y = 50 + (i16((kills.height)))
	for i = 0; i < 4; i++ {
		if !playeringame[i] {
			continue
		}
		x = (32 + (i16((star.width))) / 2 + 32 * !dofrags)
		v_draw_patch(x - (i16((p[i].width))), y, p[i])
		if i == me {
			v_draw_patch(x - (i16((p[i].width))), y, star)
		}
		x += 64
		wi_draw_percent(x - pwidth, y + 10, cnt_kills[i])
		x += 64
		wi_draw_percent(x - pwidth, y + 10, cnt_items[i])
		x += 64
		wi_draw_percent(x - pwidth, y + 10, cnt_secret[i])
		x += 64
		if dofrags {
			wi_draw_num(x, y + 10, cnt_frags[i], -1)
		}
		y += 33
	}
}

@[c: 'WI_initStats']
fn wi_init_stats() {
	state = Stateenum_t.stat_count
	acceleratestage = 0
	sp_state = 1
	cnt_kills[0] = -1
	cnt_items[0] = -1
	cnt_secret[0] = cnt_items[0]
	cnt_time = -1
	cnt_par = cnt_time
	cnt_pause = 35
	wi_init_animated_back()
}

@[c: 'WI_updateStats']
fn wi_update_stats() {
	wi_update_animated_back()
	if acceleratestage && sp_state != 10 {
		acceleratestage = 0
		cnt_kills[0] = (plrs[me].skills * 100) / wbs.maxkills
		cnt_items[0] = (plrs[me].sitems * 100) / wbs.maxitems
		cnt_secret[0] = (plrs[me].ssecret * 100) / wbs.maxsecret
		cnt_time = plrs[me].stime / 35
		cnt_par = wbs.partime / 35
		s_start_sound(0, Sfxenum_t.sfx_barexp)
		sp_state = 10
	}
	if sp_state == 2 {
		cnt_kills[0] += 2
		if !(bcnt & 3) {
			s_start_sound(0, Sfxenum_t.sfx_pistol)
		}
		if cnt_kills[0] >= (plrs[me].skills * 100) / wbs.maxkills {
			cnt_kills[0] = (plrs[me].skills * 100) / wbs.maxkills
			s_start_sound(0, Sfxenum_t.sfx_barexp)
			sp_state++
		}
	} else if sp_state == 4 {
		cnt_items[0] += 2
		if !(bcnt & 3) {
			s_start_sound(0, Sfxenum_t.sfx_pistol)
		}
		if cnt_items[0] >= (plrs[me].sitems * 100) / wbs.maxitems {
			cnt_items[0] = (plrs[me].sitems * 100) / wbs.maxitems
			s_start_sound(0, Sfxenum_t.sfx_barexp)
			sp_state++
		}
	} else if sp_state == 6 {
		cnt_secret[0] += 2
		if !(bcnt & 3) {
			s_start_sound(0, Sfxenum_t.sfx_pistol)
		}
		if cnt_secret[0] >= (plrs[me].ssecret * 100) / wbs.maxsecret {
			cnt_secret[0] = (plrs[me].ssecret * 100) / wbs.maxsecret
			s_start_sound(0, Sfxenum_t.sfx_barexp)
			sp_state++
		}
	} else if sp_state == 8 {
		if !(bcnt & 3) {
			s_start_sound(0, Sfxenum_t.sfx_pistol)
		}
		cnt_time += 3
		if cnt_time >= plrs[me].stime / 35 {
			cnt_time = plrs[me].stime / 35
		}
		cnt_par += 3
		if cnt_par >= wbs.partime / 35 {
			cnt_par = wbs.partime / 35
			if cnt_time >= plrs[me].stime / 35 {
				s_start_sound(0, Sfxenum_t.sfx_barexp)
				sp_state++
			}
		}
	} else if sp_state == 10 {
		if acceleratestage {
			s_start_sound(0, Sfxenum_t.sfx_sgcock)
			if gamemode == GameMode_t.commercial {
				wi_init_no_state()
			} else { // 3
				wi_init_show_next_loc()
			}
		}
	} else if sp_state & 1 {
		if !cnt_pause--$ {
			sp_state++
			cnt_pause = 35
		}
	}
}

@[c: 'WI_drawStats']
fn wi_draw_stats() {
	// line height
	lh := 0
	lh = (3 * (i16((num[0].height)))) / 2
	wi_slam_background()
	// draw animated background
	wi_draw_animated_back()
	wi_draw_lf()
	v_draw_patch(50, 50, kills)
	wi_draw_percent(320 - 50, 50, cnt_kills[0])
	v_draw_patch(50, 50 + lh, items)
	wi_draw_percent(320 - 50, 50 + lh, cnt_items[0])
	v_draw_patch(50, 50 + 2 * lh, sp_secret)
	wi_draw_percent(320 - 50, 50 + 2 * lh, cnt_secret[0])
	v_draw_patch(16, (200 - 32), timepatch)
	wi_draw_time(320 / 2 - 16, (200 - 32), cnt_time)
	if wbs.epsd < 3 {
		v_draw_patch(320 / 2 + 16, (200 - 32), par)
		// Emulation: don't draw partime value if map33
		if gamemode != GameMode_t.commercial || wbs.last != NUMCMAPS {
			wi_draw_time(320 - 16, (200 - 32), cnt_par)
		}
	}
}

@[c: 'WI_checkForAccelerate']
fn wi_check_for_accelerate() {
	i := 0
	player := &Player_t(0)
	// check for button presses to skip delays
	player = players
	for i = 0; i < 4; i++, player++ {
		if playeringame[i] {
			if player.cmd.buttons & Buttoncode_t.bt_attack {
				if !player.attackdown {
					acceleratestage = 1
				}
				player.attackdown = true
			} else { // 3
				player.attackdown = false
			}
			if player.cmd.buttons & Buttoncode_t.bt_use {
				if !player.usedown {
					acceleratestage = 1
				}
				player.usedown = true
			} else { // 3
				player.usedown = false
			}
		}
	}
}

// Updates stuff each tick
@[c: 'WI_Ticker']
fn wi_ticker() {
	// counter for general background animation
	bcnt++
	if bcnt == 1 {
		// intermission music
		if gamemode == GameMode_t.commercial {
			s_change_music(Musicenum_t.mus_dm2int, true)
		} else { // 3
			s_change_music(Musicenum_t.mus_inter, true)
		}
	}
	wi_check_for_accelerate()
	match Stateenum_t(state) {
		.stat_count { // case comp body kind=IfStmt is_enum=true
			if deathmatch {
				wi_update_deathmatch_stats()
			} else if netgame {
				wi_update_netgame_stats()
			} else { // 3
				wi_update_stats()
			}
		}
		.show_next_loc { // case comp body kind=CallExpr is_enum=true
			wi_update_show_next_loc()
		}
		.no_state { // case comp body kind=CallExpr is_enum=true
			wi_update_no_state()
		}
		else {}
	}
}

type Load_callback_t = fn (&i8, &&Patch_t)

// Common load/unload function.  Iterates over all the graphics
// lumps to be loaded/unloaded into memory.
@[c: 'WI_loadUnloadData']
fn wi_load_unload_data(callback Load_callback_t) {
	i := 0
	j := 0

	name := [9]i8{}
	a := &Anim_t(0)
	if gamemode == GameMode_t.commercial {
		for i = 0; i < NUMCMAPS; i++ {
			deh_snprintf(name, 9, c'CWILV%2.2d', i)
			callback(name, &lnames[i])
		}
	} else {
		for i = 0; i < 9; i++ {
			deh_snprintf(name, 9, c'WILV%d%d', wbs.epsd, i)
			callback(name, &lnames[i])
		}
		// you are here
		callback(deh_string(c'WIURH0'), &yah[0])
		// you are here (alt.)
		callback(deh_string(c'WIURH1'), &yah[1])
		// splat
		callback(deh_string(c'WISPLAT'), &splat[0])
		if wbs.epsd < 3 {
			for j = 0; j < NUMANIMS[wbs.epsd]; j++ {
				a = &anims[wbs.epsd][j]
				for i = 0; i < a.nanims; i++ {
					// MONDO HACK!
					if wbs.epsd != 1 || j != 8 {
						// animations
						deh_snprintf(name, 9, c'WIA%d%.2d%.2d', wbs.epsd, j, i)
						callback(name, &a.p[i])
					} else {
						// HACK ALERT!
						a.p[i] = anims[1][4].p[i]
					}
				}
			}
		}
	}
	// More hacks on minus sign.
	if w_check_num_for_name(deh_string(c'WIMINUS')) > 0 {
		callback(deh_string(c'WIMINUS'), &wiminus)
	} else { // 3
		wiminus = (unsafe { nil })
	}
	for i = 0; i < 10; i++ {
		// numbers 0-9
		deh_snprintf(name, 9, c'WINUM%d', i)
		callback(name, &num[i])
	}
	// percent sign
	callback(deh_string(c'WIPCNT'), &percent)
	// "finished"
	callback(deh_string(c'WIF'), &finished)
	// "entering"
	callback(deh_string(c'WIENTER'), &entering)
	// "kills"
	callback(deh_string(c'WIOSTK'), &kills)
	// "scrt"
	callback(deh_string(c'WIOSTS'), &secret)
	// "secret"
	callback(deh_string(c'WISCRT2'), &sp_secret)
	// french wad uses WIOBJ (?)
	if w_check_num_for_name(deh_string(c'WIOBJ')) >= 0 {
		// "items"
		if netgame && !deathmatch {
			callback(deh_string(c'WIOBJ'), &items)
		} else { // 3
			callback(deh_string(c'WIOSTI'), &items)
		}
	} else {
		callback(deh_string(c'WIOSTI'), &items)
	}
	// "frgs"
	callback(deh_string(c'WIFRGS'), &frags)
	// ":"
	callback(deh_string(c'WICOLON'), &colon)
	// "time"
	callback(deh_string(c'WITIME'), &timepatch)
	// "sucks"
	callback(deh_string(c'WISUCKS'), &sucks)
	// "par"
	callback(deh_string(c'WIPAR'), &par)
	// "killers" (vertical)
	callback(deh_string(c'WIKILRS'), &killers)
	// "victims" (horiz)
	callback(deh_string(c'WIVCTMS'), &victims)
	// "total"
	callback(deh_string(c'WIMSTT'), &total)
	for i = 0; i < 4; i++ {
		// "1,2,3,4"
		deh_snprintf(name, 9, c'STPB%d', i)
		callback(name, &p[i])
		// "1,2,3,4"
		deh_snprintf(name, 9, c'WIBP%d', i + 1)
		callback(name, &bp[i])
	}
	// Background image
	if gamemode == GameMode_t.commercial {
		m_string_copy(name, deh_string(c'INTERPIC'), sizeof(name))
	} else if gameversion >= GameVersion_t.exe_ultimate && wbs.epsd == 3 {
		m_string_copy(name, deh_string(c'INTERPIC'), sizeof(name))
	} else {
		deh_snprintf(name, sizeof(name), c'WIMAP%d', wbs.epsd)
	}
	// Draw backdrop and save to a temporary buffer
	callback(name, &background)
}

@[c: 'WI_loadCallback']
fn wi_load_callback(name &i8, variable &&Patch_t) {
	*variable = w_cache_lump_name(name, 1)
}

@[c: 'WI_loadData']
fn wi_load_data() {
	if gamemode == GameMode_t.commercial {
		NUMCMAPS = 32
		lnames = &&Patch_t(z_malloc(sizeof(&Patch_t) * NUMCMAPS, 1, (unsafe { nil })))
	} else {
		lnames = &&Patch_t(z_malloc(sizeof(&Patch_t) * 9, 1, (unsafe { nil })))
	}
	wi_load_unload_data(wi_load_callback)
	// These two graphics are special cased because we're sharing
	// them with the status bar code
	// your face
	star = w_cache_lump_name(deh_string(c'STFST01'), 1)
	// dead face
	bstar = w_cache_lump_name(deh_string(c'STFDEAD0'), 1)
}

@[c: 'WI_unloadCallback']
fn wi_unload_callback(name &i8, variable &&Patch_t) {
	w_release_lump_name(name)
	*variable = (unsafe { nil })
}

@[c: 'WI_unloadData']
fn wi_unload_data() {
	wi_load_unload_data(wi_unload_callback)
	// We do not free these lumps as they are shared with the status

	// bar code.

	// W_ReleaseLumpName("STFST01");

	// W_ReleaseLumpName("STFDEAD0");
}

@[c: 'WI_Drawer']
fn wi_drawer() {
	match Stateenum_t(state) {
		.stat_count { // case comp body kind=IfStmt is_enum=true
			if deathmatch {
				wi_draw_deathmatch_stats()
			} else if netgame {
				wi_draw_netgame_stats()
			} else { // 3
				wi_draw_stats()
			}
		}
		.show_next_loc { // case comp body kind=CallExpr is_enum=true
			wi_draw_show_next_loc()
		}
		.no_state { // case comp body kind=CallExpr is_enum=true
			wi_draw_no_state()
		}
		else {}
	}
}

@[c: 'WI_initVariables']
fn wi_init_variables(wbstartstruct &Wbstartstruct_t) {
	wbs = wbstartstruct
	acceleratestage = 0
	cnt = 0
	bcnt = cnt
	firstrefresh = 1
	me = wbs.pnum
	plrs = wbs.plyr
	if !wbs.maxkills {
		wbs.maxkills = 1
	}
	if !wbs.maxitems {
		wbs.maxitems = 1
	}
	if !wbs.maxsecret {
		wbs.maxsecret = 1
	}
	if gameversion < GameVersion_t.exe_ultimate {
		if wbs.epsd > 2 {
			wbs.epsd -= 3
		}
	}
}

@[c: 'WI_Start']
fn wi_start(wbstartstruct &Wbstartstruct_t) {
	wi_init_variables(wbstartstruct)
	wi_load_data()
	if deathmatch {
		wi_init_deathmatch_stats()
	} else if netgame {
		wi_init_netgame_stats()
	} else { // 3
		wi_init_stats()
	}
}
