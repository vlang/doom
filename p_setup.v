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

@[c: 'Z_FreeTags']
fn z_free_tags(lowtag int, hightag int)

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
//  Nil.
//
//
// MISC
//
// Returns the position of the given parameter
// in the arg list (0 if not found).
@[c: 'M_CheckParm']
fn m_check_parm(check &i8) int

// Same as M_CheckParm, but checks that num_args arguments are available
// following the specified argument.
// Parameter has been specified?
// Get name of executable used to run this program:
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
@[c: 'FixedDiv']
fn fixed_div(a int, b int) int

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
//    Nil.
//
// Bounding box coordinate storage.

// empty enum
const boxtop = 0
const boxbottom = 1
const boxleft = 2
const boxright = 3

// bbox coordinates
// Bounding box functions.
@[c: 'M_ClearBox']
fn m_clear_box(box &int)

@[c: 'M_AddToBox']
fn m_add_to_box(box &int, x int, y int)

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
//   Duh.
//
//
// GAME
//
@[c: 'G_DeathMatchSpawnPlayer']
fn g_death_match_spawn_player(playernum int)

// Can be called by the startup code or M_Responder.
// A normal game starts at map 1,
// but a warp test can start elsewhere
// Can be called by the startup code or M_Responder,
// calls P_SetupLevel or W_EnterWorld.
// Called by M_Responder.
// Only called by startup code.
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

@[c: 'I_GetMemoryValue']
fn i_get_memory_value(offset u32, value voidptr, size int) bool

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
@[c: 'W_Reload']
fn w_reload()

@[c: 'W_GetNumForName']
fn w_get_num_for_name(name &i8) Lumpindex_t

@[c: 'W_LumpLength']
fn w_lump_length(lump Lumpindex_t) int

@[c: 'W_ReadLump']
fn w_read_lump(lump Lumpindex_t, dest voidptr)

@[c: 'W_CacheLumpNum']
fn w_cache_lump_num(lump Lumpindex_t, tag int) voidptr

@[c: 'W_ReleaseLumpNum']
fn w_release_lump_num(lump Lumpindex_t)

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
@[c: 'R_PrecacheLevel']
fn r_precache_level()

// Retrieval.
// Floor/ceiling opaque texture tiles,
// lookup by name. For animation?
@[c: 'R_FlatNumForName']
fn r_flat_num_for_name(name &i8) int

// Called by P_Ticker for switches and animations,
// returns the texture number for the texture name.
@[c: 'R_TextureNumForName']
fn r_texture_num_for_name(name &i8) int

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
@[c: 'R_InitSprites']
fn r_init_sprites(namelist &&u8)

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
//	Play functions, animation, global header.
//
// mapblocks are used to check movement
// against lines and things
// player radius for movement checking
// MAXRADIUS is for precalculated sector block boxes
// the spider demon is larger,
// but we do not have any moving sectors nearby
// follow a player exlusively for 3 seconds
//
// P_TICK
//
// both the head and tail of the thinker list
@[c: 'P_InitThinkers']
fn p_init_thinkers()

//
// P_PSPR
//
//
// P_USER
//
//
// P_MOBJ
//
// Time interval for item respawning.
//
// P_ENEMY
//
//
// P_MAPUTL
//
// Extended MAXINTERCEPTS, to allow for intercepts overrun emulation.
//
// P_MAP
//
// If "floatok" true, move would be ok
// if within "tmfloorz - tmceilingz".
// fraggle: I have increased the size of this buffer.  In the original Doom,
// overrunning past this limit caused other bits of memory to be overwritten,
// affecting demo playback.  However, in doing so, the limit was still
// exceeded.  So we have to support more than 8 specials.
//
// We keep the original limit, to detect what variables in memory were
// overwritten (see SpechitOverrun())
// who got hit (or NULL)
//
// P_SETUP
//
// for fast sight rejection
// offsets in blockmap are from here
// in mapblocks
// origin of block map
// for thing chains
//
// P_INTER
//
//
// P_SPEC
//
// __P_LOCAL__
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
// DESCRIPTION:  none
//	Implements special effects:
//	Texture animation, height or lighting changes
//	 according to adjacent sectors, respective
//	 utility functions, etc.
//
//
// End-level timer (-TIMER option)
//
//      Define values for map objects
// at game start
@[c: 'P_InitPicAnims']
fn p_init_pic_anims()

// at map load
@[c: 'P_SpawnSpecials']
fn p_spawn_specials()

// every tic
// when needed
//
// SPECIAL
//
//
// P_LIGHTS
//
//
// P_SWITCH
//
// max # of wall switches in a level
// 4 players, 4 buttons each at once, max.
// 1 second, in ticks.
// skipping global dup "buttonlist"
@[c: 'P_InitSwitchList']
fn p_init_switch_list()

//
// P_PLATS
//
//
// P_DOORS
//
// UNUSED
//
//      Sliding doors...
//
// how many frames of animation
// how many diff. types of anims
//
// P_CEILNG
//
//
// P_FLOOR
//
//
// P_TELEPT
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
@[c: 'S_Start']
fn s_start()

//
// Start sound for thing at <origin>
//  using <sound_id> from sounds.h
//
// Stop sound for thing at <origin>
// Start music using <music_id> from sounds.h
// Start music using <music_id> from sounds.h,
//  and set whether looping
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
// skipping global dup "savegamedir"
// if true, load all graphics at level load
// wipegamestate can be set to -1
//  to force a wipe on the next draw
// skipping global dup "wipegamestate"
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
//	Do all the WAD I/O, get map description,
//	set up initial state and misc. LUTs.
//
@[c: 'P_SpawnMapThing']
fn p_spawn_map_thing(mthing &Mapthing_t)

//
// MAP related Lookup tables.
// Store VERTEXES, LINEDEFS, SIDEDEFS, etc.
//
// BLOCKMAP
// Created from axis aligned bounding box
// of the map, a rectangular array of
// blocks of size ...
// Used to speed up collision detection
// by spatial subdivision in 2D.
//
// Blockmap size.
// size in mapblocks
// int for larger maps
// offsets in blockmap are from here
// origin of block map
// for thing chains
// REJECT
// For fast sight rejection.
// Speeds up enemy AI by skipping detailed
//  LineOf Sight calculation.
// Without special effect, this could be
//  used as a PVS lookup as well.
//
// Maintain single and multi player starting spots.
//
// P_LoadVertexes
//
@[c: 'P_LoadVertexes']
fn p_load_vertexes(lump int) {
	data := &u8(0)
	i := 0
	ml := &Mapvertex_t(0)
	li := &Vertex_t(0)
	// Determine number of lumps:
	//  total lump length / vertex record length.
	numvertexes = w_lump_length(lump) / sizeof(Mapvertex_t)
	// Allocate zone memory for buffer.
	vertexes = z_malloc(numvertexes * sizeof(Vertex_t), 5, 0)
	// Load data into cache.
	data = w_cache_lump_num(lump, 1)
	ml = &Mapvertex_t(data)
	li = vertexes
	// Copy and convert vertex coordinates,
	// internal representation as fixed.
	for i = 0; i < numvertexes; i++ {
		li.x = (i16((ml.x))) << 16
		li.y = (i16((ml.y))) << 16
		li++
		ml++
	}
	// Free buffer memory.
	w_release_lump_num(lump)
}

//
// GetSectorAtNullAddress
//
@[c: 'GetSectorAtNullAddress']
fn get_sector_at_null_address() &Sector_t {
	null_sector_is_initialized := false
	null_sector := Sector_t{}
	if !null_sector_is_initialized {
		C.memset(&null_sector, 0, sizeof(null_sector))
		i_get_memory_value(0, &null_sector.floorheight, 4)
		i_get_memory_value(4, &null_sector.ceilingheight, 4)
		null_sector_is_initialized = true
	}
	return &null_sector
}

//
// P_LoadSegs
//
@[c: 'P_LoadSegs']
fn p_load_segs(lump int) {
	data := &u8(0)
	i := 0
	ml := &Mapseg_t(0)
	li := &Seg_t(0)
	ldef := &Line_t(0)
	linedef := 0
	side := 0
	sidenum := 0
	numsegs = w_lump_length(lump) / sizeof(Mapseg_t)
	segs = z_malloc(numsegs * sizeof(Seg_t), 5, 0)
	C.memset(segs, 0, numsegs * sizeof(Seg_t))
	data = w_cache_lump_num(lump, 1)
	ml = &Mapseg_t(data)
	li = segs
	for i = 0; i < numsegs; i++ {
		li.v1 = &vertexes[(i16((ml.v1)))]
		li.v2 = &vertexes[(i16((ml.v2)))]
		li.angle = (i16((ml.angle))) << 16
		li.offset = (i16((ml.offset))) << 16
		linedef = (i16((ml.linedef)))
		ldef = &lines[linedef]
		li.linedef = ldef
		side = (i16((ml.side)))
		// e6y: check for wrong indexes
		if u32(ldef.sidenum[side]) >= u32(numsides) {
			i_error(c'P_LoadSegs: linedef %d for seg %d references a non-existent sidedef %d',
				linedef, i, u32(ldef.sidenum[side]))
		}
		li.sidedef = &sides[ldef.sidenum[side]]
		li.frontsector = sides[ldef.sidenum[side]].sector
		if ldef.flags & 4 {
			sidenum = ldef.sidenum[side ^ 1]
			// If the sidenum is out of range, this may be a "glass hack"
			// impassible window.  Point at side #0 (this may not be
			// the correct Vanilla behavior; however, it seems to work for
			// OTTAWAU.WAD, which is the one place I've seen this trick
			// used).
			if sidenum < 0 || sidenum >= numsides {
				li.backsector = get_sector_at_null_address()
			} else {
				li.backsector = sides[sidenum].sector
			}
		} else {
			li.backsector = 0
		}
		li++
		ml++
	}
	w_release_lump_num(lump)
}

//
// P_LoadSubsectors
//
@[c: 'P_LoadSubsectors']
fn p_load_subsectors(lump int) {
	data := &u8(0)
	i := 0
	ms := &Mapsubsector_t(0)
	ss := &Subsector_t(0)
	numsubsectors = w_lump_length(lump) / sizeof(Mapsubsector_t)
	subsectors = z_malloc(numsubsectors * sizeof(Subsector_t), 5, 0)
	data = w_cache_lump_num(lump, 1)
	ms = &Mapsubsector_t(data)
	C.memset(subsectors, 0, numsubsectors * sizeof(Subsector_t))
	ss = subsectors
	for i = 0; i < numsubsectors; i++ {
		ss.numlines = (i16((ms.numsegs)))
		ss.firstline = (i16((ms.firstseg)))
		ss++
		ms++
	}
	w_release_lump_num(lump)
}

//
// P_LoadSectors
//
@[c: 'P_LoadSectors']
fn p_load_sectors(lump int) {
	data := &u8(0)
	i := 0
	ms := &Mapsector_t(0)
	ss := &Sector_t(0)
	numsectors = w_lump_length(lump) / sizeof(Mapsector_t)
	sectors = z_malloc(numsectors * sizeof(Sector_t), 5, 0)
	C.memset(sectors, 0, numsectors * sizeof(Sector_t))
	data = w_cache_lump_num(lump, 1)
	ms = &Mapsector_t(data)
	ss = sectors
	for i = 0; i < numsectors; i++ {
		ss.floorheight = (i16((ms.floorheight))) << 16
		ss.ceilingheight = (i16((ms.ceilingheight))) << 16
		ss.floorpic = r_flat_num_for_name(ms.floorpic)
		ss.ceilingpic = r_flat_num_for_name(ms.ceilingpic)
		ss.lightlevel = (i16((ms.lightlevel)))
		ss.special = (i16((ms.special)))
		ss.tag = (i16((ms.tag)))
		ss.thinglist = (unsafe { nil })
		ss++
		ms++
	}
	w_release_lump_num(lump)
}

//
// P_LoadNodes
//
@[c: 'P_LoadNodes']
fn p_load_nodes(lump int) {
	data := &u8(0)
	i := 0
	j := 0
	k := 0
	mn := &Mapnode_t(0)
	no := &Node_t(0)
	numnodes = w_lump_length(lump) / sizeof(Mapnode_t)
	nodes = z_malloc(numnodes * sizeof(Node_t), 5, 0)
	data = w_cache_lump_num(lump, 1)
	mn = &Mapnode_t(data)
	no = nodes
	for i = 0; i < numnodes; i++ {
		no.x = (i16((mn.x))) << 16
		no.y = (i16((mn.y))) << 16
		no.dx = (i16((mn.dx))) << 16
		no.dy = (i16((mn.dy))) << 16
		for j = 0; j < 2; j++ {
			no.children[j] = (i16((mn.children[j])))
			for k = 0; k < 4; k++ {
				no.bbox[j][k] = (i16((mn.bbox[j][k]))) << 16
			}
		}
		no++
		mn++
	}
	w_release_lump_num(lump)
}

//
// P_LoadThings
//
@[c: 'P_LoadThings']
fn p_load_things(lump int) {
	data := &u8(0)
	i := 0
	mt := &Mapthing_t(0)
	spawnthing := Mapthing_t{}
	numthings := 0
	spawn_ := false
	data = w_cache_lump_num(lump, 1)
	numthings = w_lump_length(lump) / sizeof(Mapthing_t)
	mt = &Mapthing_t(data)
	for i = 0; i < numthings; i++ {
		spawn_ = true
		// Do not spawn cool, new monsters if !commercial
		if gamemode != GameMode_t.commercial {
			match (i16((mt.type_))) {
				68, 64, 88, 89, 69, 67, 71, 65, 66, 84 {
					// Wolf SS
					spawn_ = false
				}
				else {}
			}
		}
		if spawn_ == false {
			break
		}
		// Do spawn all other stuff.
		spawnthing.x = (i16((mt.x)))
		spawnthing.y = (i16((mt.y)))
		spawnthing.angle = (i16((mt.angle)))
		spawnthing.type_ = (i16((mt.type_)))
		spawnthing.options = (i16((mt.options)))
		p_spawn_map_thing(&spawnthing)
		mt++
	}
	if !deathmatch {
		for i = 0; i < 4; i++ {
			if playeringame[i] && !playerstartsingame[i] {
				i_error(c'P_LoadThings: Player %d start missing (vanilla crashes here)',
					i + 1)
			}
			playerstartsingame[i] = false
		}
	}
	w_release_lump_num(lump)
}

//
// P_LoadLineDefs
// Also counts secret lines for intermissions.
//
@[c: 'P_LoadLineDefs']
fn p_load_line_defs(lump int) {
	data := &u8(0)
	i := 0
	mld := &Maplinedef_t(0)
	ld := &Line_t(0)
	v1 := &Vertex_t(0)
	v2 := &Vertex_t(0)
	numlines = w_lump_length(lump) / sizeof(Maplinedef_t)
	lines = z_malloc(numlines * sizeof(Line_t), 5, 0)
	C.memset(lines, 0, numlines * sizeof(Line_t))
	data = w_cache_lump_num(lump, 1)
	mld = &Maplinedef_t(data)
	ld = lines
	for i = 0; i < numlines; i++ {
		ld.flags = (i16((mld.flags)))
		ld.special = (i16((mld.special)))
		ld.tag = (i16((mld.tag)))
		v1 = &vertexes[(i16((mld.v1)))]
		ld.v1 = v1
		v2 = &vertexes[(i16((mld.v2)))]
		ld.v2 = v2
		ld.dx = v2.x - v1.x
		ld.dy = v2.y - v1.y
		if !ld.dx {
			ld.slopetype = Slopetype_t.st_vertical
		} else if !ld.dy {
			ld.slopetype = Slopetype_t.st_horizontal
		} else {
			if fixed_div(ld.dy, ld.dx) > 0 {
				ld.slopetype = Slopetype_t.st_positive
			} else { // 3
				ld.slopetype = Slopetype_t.st_negative
			}
		}
		if v1.x < v2.x {
			ld.bbox[int(boxleft)] = v1.x
			ld.bbox[int(boxright)] = v2.x
		} else {
			ld.bbox[int(boxleft)] = v2.x
			ld.bbox[int(boxright)] = v1.x
		}
		if v1.y < v2.y {
			ld.bbox[int(boxbottom)] = v1.y
			ld.bbox[int(boxtop)] = v2.y
		} else {
			ld.bbox[int(boxbottom)] = v2.y
			ld.bbox[int(boxtop)] = v1.y
		}
		ld.sidenum[0] = (i16((mld.sidenum[0])))
		ld.sidenum[1] = (i16((mld.sidenum[1])))
		if ld.sidenum[0] != -1 {
			ld.frontsector = sides[ld.sidenum[0]].sector
		} else { // 3
			ld.frontsector = 0
		}
		if ld.sidenum[1] != -1 {
			ld.backsector = sides[ld.sidenum[1]].sector
		} else { // 3
			ld.backsector = 0
		}
		mld++
		ld++
	}
	w_release_lump_num(lump)
}

//
// P_LoadSideDefs
//
@[c: 'P_LoadSideDefs']
fn p_load_side_defs(lump int) {
	data := &u8(0)
	i := 0
	msd := &Mapsidedef_t(0)
	sd := &Side_t(0)
	numsides = w_lump_length(lump) / sizeof(Mapsidedef_t)
	sides = z_malloc(numsides * sizeof(Side_t), 5, 0)
	C.memset(sides, 0, numsides * sizeof(Side_t))
	data = w_cache_lump_num(lump, 1)
	msd = &Mapsidedef_t(data)
	sd = sides
	for i = 0; i < numsides; i++ {
		sd.textureoffset = (i16((msd.textureoffset))) << 16
		sd.rowoffset = (i16((msd.rowoffset))) << 16
		sd.toptexture = r_texture_num_for_name(msd.toptexture)
		sd.bottomtexture = r_texture_num_for_name(msd.bottomtexture)
		sd.midtexture = r_texture_num_for_name(msd.midtexture)
		sd.sector = &sectors[(i16((msd.sector)))]
		msd++
		sd++
	}
	w_release_lump_num(lump)
}

//
// P_LoadBlockMap
//
@[c: 'P_LoadBlockMap']
fn p_load_block_map(lump int) {
	i := 0
	count := 0
	lumplen := 0
	lumplen = w_lump_length(lump)
	count = lumplen / 2
	blockmaplump = z_malloc(lumplen, 5, (unsafe { nil }))
	w_read_lump(lump, blockmaplump)
	blockmap = blockmaplump + 4
	// Swap all short integers to native byte ordering.
	for i = 0; i < count; i++ {
		blockmaplump[i] = (i16((blockmaplump[i])))
	}
	// Read the header
	bmaporgx = blockmaplump[0] << 16
	bmaporgy = blockmaplump[1] << 16
	bmapwidth = blockmaplump[2]
	bmapheight = blockmaplump[3]
	// Clear out mobj chains
	count = sizeof(*blocklinks) * bmapwidth * bmapheight
	blocklinks = z_malloc(count, 5, 0)
	C.memset(blocklinks, 0, count)
}

//
// P_GroupLines
// Builds sector line lists and subsector sector numbers.
// Finds block bounding boxes for sectors.
//
@[c: 'P_GroupLines']
fn p_group_lines() {
	linebuffer := &&Line_t(0)
	i := 0
	j := 0
	li := &Line_t(0)
	sector := &Sector_t(0)
	ss := &Subsector_t(0)
	seg := &Seg_t(0)
	bbox := [4]int{}
	block := 0
	// look up sector number for each subsector
	ss = subsectors
	for i = 0; i < numsubsectors; i++ {
		seg = &segs[ss.firstline]
		ss.sector = seg.sidedef.sector
		ss++
	}
	// count number of lines in each sector
	li = lines
	totallines = 0
	for i = 0; i < numlines; i++ {
		totallines++
		li.frontsector.linecount++
		if li.backsector && li.backsector != li.frontsector {
			li.backsector.linecount++
			totallines++
		}
		li++
	}
	// build line tables for each sector	
	linebuffer = z_malloc(totallines * sizeof(&Line_t), 5, 0)
	for i = 0; i < numsectors; i++ {
		// Assign the line buffer for this sector
		sectors[i].lines = linebuffer
		linebuffer += sectors[i].linecount
		// Reset linecount to zero so in the next stage we can count
		// lines into the list.
		sectors[i].linecount = 0
	}
	// Assign lines to sectors
	for i = 0; i < numlines; i++ {
		li = &lines[i]
		if li.frontsector != (unsafe { nil }) {
			sector = li.frontsector
			sector.lines[sector.linecount] = li
			sector.linecount++$
		}
		if li.backsector != (unsafe { nil }) && li.frontsector != li.backsector {
			sector = li.backsector
			sector.lines[sector.linecount] = li
			sector.linecount++$
		}
	}
	// Generate bounding boxes for sectors
	sector = sectors
	for i = 0; i < numsectors; i++ {
		m_clear_box(bbox)
		for j = 0; j < sector.linecount; j++ {
			li = sector.lines[j]
			m_add_to_box(bbox, li.v1.x, li.v1.y)
			m_add_to_box(bbox, li.v2.x, li.v2.y)
		}
		// set the degenmobj_t to the middle of the bounding box
		sector.soundorg.x = (bbox[int(boxright)] + bbox[int(boxleft)]) / 2
		sector.soundorg.y = (bbox[int(boxtop)] + bbox[int(boxbottom)]) / 2
		// adjust bounding box to map blocks
		block = (bbox[int(boxtop)] - bmaporgy + 32 * (1 << 16)) >> (16 + 7)
		block = if block >= bmapheight { bmapheight - 1 } else { block }
		sector.blockbox[int(boxtop)] = block
		block = (bbox[int(boxbottom)] - bmaporgy - 32 * (1 << 16)) >> (16 + 7)
		block = if block < 0 { 0 } else { block }
		sector.blockbox[int(boxbottom)] = block
		block = (bbox[int(boxright)] - bmaporgx + 32 * (1 << 16)) >> (16 + 7)
		block = if block >= bmapwidth { bmapwidth - 1 } else { block }
		sector.blockbox[int(boxright)] = block
		block = (bbox[int(boxleft)] - bmaporgx - 32 * (1 << 16)) >> (16 + 7)
		block = if block < 0 { 0 } else { block }
		sector.blockbox[int(boxleft)] = block
		sector++
	}
}

// Pad the REJECT lump with extra data when the lump is too small,
// to simulate a REJECT buffer overflow in Vanilla Doom.
@[c: 'PadRejectArray']
fn pad_reject_array(array &u8, len u32) {
	i := u32(0)
	byte_num := u32(0)
	dest := &u8(0)
	padvalue := u32(0)
	// Values to pad the REJECT array with:
	rejectpad := [0, // Size
	 	0, // Part of z_zone block header
	 	50, // PU_LEVEL
	 	1919505, // DOOM_CONST_ZONEID
	]!

	rejectpad[0] = ((totallines * 4 + 3) & ~3) + 24
	// Copy values from rejectpad into the destination array.
	dest = array
	for i = 0; i < len && i < sizeof(rejectpad); i++ {
		byte_num = i % 4
		*dest = (rejectpad[i / 4] >> (byte_num * 8)) & 255
		dest++$
	}
	// We only have a limited pad size.  Print a warning if the
	// REJECT lump is too small.
	if len > sizeof(rejectpad) {
		C.fprintf(C.stderr, c'PadRejectArray: REJECT lump too short to pad! (%i > %i)\n',
			len, int(sizeof(rejectpad)))
		// Pad remaining space with 0 (or 0xff, if specified on command line).
		if m_check_parm(c'-reject_pad_with_ff') {
			padvalue = 255
		} else {
			padvalue = 3840
		}
		C.memset(array + sizeof(rejectpad), padvalue, len - sizeof(rejectpad))
	}
}

@[c: 'P_LoadReject']
fn p_load_reject(lumpnum int) {
	minlength := 0
	lumplen := 0
	// Calculate the size that the REJECT lump *should* be.
	minlength = (numsectors * numsectors + 7) / 8
	// If the lump meets the minimum length, it can be loaded directly.
	// Otherwise, we need to allocate a buffer of the correct size
	// and pad it with appropriate data.
	lumplen = w_lump_length(lumpnum)
	if lumplen >= minlength {
		rejectmatrix = w_cache_lump_num(lumpnum, 5)
	} else {
		rejectmatrix = z_malloc(minlength, 5, &rejectmatrix)
		w_read_lump(lumpnum, rejectmatrix)
		pad_reject_array(rejectmatrix + lumplen, minlength - lumplen)
	}
}

// pointer to the current map lump info struct
//
// P_SetupLevel
//
@[c: 'P_SetupLevel']
fn p_setup_level(episode int, map_ int, playermask int, skill Skill_t) {
	i := 0
	lumpname := [9]i8{}
	lumpnum := 0
	totalkills = 0
	totalitems = totalkills
	totalsecret = 0
	wminfo.maxfrags = totalsecret
	wminfo.partime = 180
	for i = 0; i < 4; i++ {
		players[i].killcount = 0
		players[i].secretcount = players[i].killcount
		players[i].itemcount = 0
	}
	// Initial height of PointOfView
	// will be set by player think.
	players[consoleplayer].viewz = 1
	// Make sure all sounds are stopped before Z_FreeTags.
	s_start()
	z_free_tags(5, 7 - 1)
	// UNUSED W_Profile ();
	p_init_thinkers()
	// if working with a devlopment map, reload it
	w_reload()
	// find map name
	if gamemode == GameMode_t.commercial {
		if map_ < 10 {
			deh_snprintf(lumpname, 9, c'map0%i', map_)
		} else { // 3
			deh_snprintf(lumpname, 9, c'map%i', map_)
		}
	} else {
		lumpname[0] = `E`
		lumpname[1] = `0` + episode
		lumpname[2] = `M`
		lumpname[3] = `0` + map_
		lumpname[4] = 0
	}
	lumpnum = w_get_num_for_name(lumpname)
	maplumpinfo = lumpinfo[lumpnum]
	leveltime = 0
	// note: most of this ordering is important	
	p_load_block_map(lumpnum + ml_blockmap)
	p_load_vertexes(lumpnum + ml_vertexes)
	p_load_sectors(lumpnum + ml_sectors)
	p_load_side_defs(lumpnum + ml_sidedefs)
	p_load_line_defs(lumpnum + ml_linedefs)
	p_load_subsectors(lumpnum + ml_ssectors)
	p_load_nodes(lumpnum + ml_nodes)
	p_load_segs(lumpnum + ml_segs)
	p_group_lines()
	p_load_reject(lumpnum + ml_reject)
	bodyqueslot = 0
	deathmatch_p = deathmatchstarts
	p_load_things(lumpnum + ml_things)
	// if deathmatch, randomly spawn the active players
	if deathmatch {
		for i = 0; i < 4; i++ {
			if playeringame[i] {
				players[i].mo = (unsafe { nil })
				g_death_match_spawn_player(i)
			}
		}
	}
	// clear special respawning que
	iquehead = 0
	iquetail = iquehead
	// set up world state
	p_spawn_specials()
	// build subsector connect matrix
	//	UNUSED P_ConnectSubsectors ();
	// preload graphics
	if precache {
		r_precache_level()
	}
	// printf ("free memory: 0x%x\n", Z_FreeMemory());
}

//
// P_Init
//
@[c: 'P_Init']
fn p_init() {
	p_init_switch_list()
	p_init_pic_anims()
	r_init_sprites(sprnames)
}
