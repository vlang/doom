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
[c:'I_GetTime']
fn i_get_time() int

// returns current time in ms
// Pause for a specified number of ms
// Initialize timer
// Wait for vertical retrace or pause a bit.
[c:'I_WaitVBL']
fn i_wait_vbl(count int) 

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
//
// DESCRIPTION:
//	DOOM strings, by language.
//
// All important printed strings.
// Misc. other strings.
// QuitDOOM messages
// 8 per each game type
// skipping global dup "doom1_endmsg"
// skipping global dup "doom2_endmsg"
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
// Read events from all input devices
//
// BASE LEVEL
//
[c:'D_StartTitle']
fn d_start_title() 

//
// GLOBAL VARIABLES
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
//
// Dehacked string replacements
//
// Used to do dehacked text substitutions throughout the program
[c:'DEH_String']
fn deh_string(s &i8) &i8

@[c2v_variadic]
[c:'DEH_snprintf']
fn deh_snprintf(buffer &i8, len usize, fmt &i8) 

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
//    System-specific keyboard/mouse input.
//
// I_StartTextInput begins text input, activating the on-screen keyboard
// (if one is used). The caller indicates that any entered text will be
// displayed in the rectangle given by the provided set of coordinates.
[c:'I_StartTextInput']
fn i_start_text_input(x1 int, y1 int, x2 int, y2 int) 

// I_StopTextInput finishes text input, deactivating the on-screen keyboard
// (if one is used).
[c:'I_StopTextInput']
fn i_stop_text_input() 

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
[c:'I_Quit']
fn i_quit() 

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
//	System specific interface stuff.
//
// Screen width and height.
// Screen height used when aspect_ratio_correct=true.
// Called by D_DoomMain,
// determines the hardware configuration
// and sets up the video mode
// Takes full 8 bit values.
[c:'I_SetPalette']
fn i_set_palette(palette &u8) 

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
//      Miscellaneous.
//    
[c:'M_ForceUppercase']
fn m_force_uppercase(text &i8) 

[c:'M_StringDuplicate']
fn m_string_duplicate(orig &i8) &i8

[c:'M_StringCopy']
fn m_string_copy(dest &i8, src &i8, dest_size usize) bool

@[c2v_variadic]
[c:'M_snprintf']
fn m_snprintf(buf &i8, buf_len usize, s &i8) int

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
// Allocates buffer screens, call before R_Init.
// Draw a block from the specified source screen to the screen.
// villsa [STRIFE]
[c:'V_DrawPatchDirect']
fn v_draw_patch_direct(x int, y int, patch &Patch_t) 

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
[c:'W_CheckNumForName']
fn w_check_num_for_name(name &i8) Lumpindex_t

[c:'W_CacheLumpName']
fn w_cache_lump_name(name &i8, tag int) voidptr

[c:'W_WadNameForLump']
fn w_wad_name_for_lump(lump &Lumpinfo_t) &i8

[c:'W_IsIWADLump']
fn w_is_iwadl_ump(lump &Lumpinfo_t) bool

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

const ( // empty enum











)

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
//B UNUSED - keep till detailshift in r_draw.c resolved
//extern byte*	destview;
//extern byte*	destscreen;
//
// OTHER TYPES
//
// This could be wider for >8 bit display.
// Indeed, true color support is posibble
//  precalculating 24bpp lightmap/colormap LUT.
//  from darkening PLAYPAL to all black.
// Could even us emore than 32 levels.
//typedef pixel_t		lighttable_t;
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
//extern fixed_t		finetangent[FINEANGLES/2];
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
//B remove this?
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
[c:'R_SetViewSize']
fn r_set_view_size(blocks int, detail int) 

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
// false if the back side is the same plane
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
// DESCRIPTION:  Head up display
//
//
// Globally visible constants.
//
// the first font characters
// the last font characters
// Calculate # of glyphs in font.
// in characters
// in lines
//
// HEADS UP TEXT
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
//   Duh.
// 
//
// GAME
//
// Can be called by the startup code or M_Responder.
// A normal game starts at map 1,
// but a warp test can start elsewhere
[c:'G_DeferedInitNew']
fn g_defered_init_new(skill Skill_t, episode int, map_ int) 

// Can be called by the startup code or M_Responder,
// calls P_SetupLevel or W_EnterWorld.
[c:'G_LoadGame']
fn g_load_game(name &i8) 

// Called by M_Responder.
[c:'G_SaveGame']
fn g_save_game(slot int, description &i8) 

// Only called by startup code.
// Read current data from inputs and build a player movement command.
[c:'G_ScreenShot']
fn g_screen_shot() 

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
[c:'M_CheckParm']
fn m_check_parm(check &i8) int

// Same as M_CheckParm, but checks that num_args arguments are available
// following the specified argument.
// Parameter has been specified?
// Get name of executable used to run this program:
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
// villsa [STRIFE] strife keys
// menu keys:
// #ifndef __M_CONTROLS_H__ 
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
//	Savegame I/O, archiving, persistence.
//
// maximum size of a savegame description
// temporary filename to use while saving.
// filename to use for a savegame slot
[c:'P_SaveGameFile']
fn p_save_game_file(slot int) &i8

// Savegame file header read/write functions
// Savegame end-of-file read/write functions
// Persistent storage/archiving.
// These are the load / save game routines.
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
//   Setup a game, startup stuff.
//
// skipping global dup "maplumpinfo"
// NOT called by W_Ticker. Fixme.
// Called by startup code.
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
[c:'S_StartSound']
fn s_start_sound(origin voidptr, sound_id int) 

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
[c:'S_SetMusicVolume']
fn s_set_music_volume(volume int) 

[c:'S_SetSfxVolume']
fn s_set_sfx_volume(volume int) 

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
// skipping global dup "automapactive"
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
// skipping global dup "deathmatchstarts"
// skipping global dup "deathmatch_p"
// Player spawn spots.
// skipping global dup "playerstarts"
// skipping global dup "playerstartsingame"
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
// skipped extern global mouseSensitivity
// Needed to store the number of the dummy sky flat.
// Used for rendering,
//  as well as tracking projectiles etc.
// skipping global dup "skyflatnum"
// Netgame stuff (buffers and pointers, i.e. indices).
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
//   Menu widget stuff, episode selection and such.
//    
//
// MENUS
//
// Called by main loop,
// saves config file and calls I_Quit when user exits.
// Even when the menu is not displayed,
// this can resize the view and change game parameters.
// Does all the real work of the menu interaction.
[c:'M_Responder']
fn m_responder(ev &Event_t) bool

// Called by main loop,
// only used for menu (skull cursor) animation.
[c:'M_Ticker']
fn m_ticker() 

// Called by main loop,
// draws the menus directly into the screen buffer.
[c:'M_Drawer']
fn m_drawer() 

// Called by D_DoomMain,
// loads the config file.
[c:'M_Init']
fn m_init() 

// Called by intro code to force menu up upon a keypress,
// does nothing if menu is already up.
[c:'M_StartControlPanel']
fn m_start_control_panel() 

// skipped extern global detailLevel
// skipped extern global screenblocks
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
//	DOOM selection menu, options, episode etc.
//	Sliders and icons. Kinda widget stuff.
//
// Data.
// in heads-up code
//
// defaulted values
//
// Show messages has default, 0 = off, 1 = on
// Blocky mode, has default, 0 = high, 1 = normal
// temp for screenblocks (0-9)
// -1 = no quicksave slot picked!
// 1 = message to be printed
// ...and here is the message string!
// message x & y
// timed message = no input from user
// we are going to be entering a savegame string
// which slot to save in
// which char we're editing
// was the save action initiated by joypad?
// old save description before edit
//
// MENU TYPEDEFS
//
struct Menuitem_t { 
// 0 = no cursor here, 1 = ok, 2 = arrows ok
	status i16
	name [10]i8
// choice = menu item #.
// if status = 2,
//   choice=0:leftarrow,1:rightarrow
	routine fn (int)
// hotkey in menu
	alphaKey i8
}
struct Menu_t { 
	numitems i16
// # of menu items
	prevMenu &Menu_t
// previous menu
	menuitems &Menuitem_t
// menu items
	routine fn ()
// draw routine
	x i16
	y i16
// x,y of menu
	lastOn i16
// last item user was on in menu
}
// menu item skull is on
// skull animation counter
// which skull to draw
// graphic name of skulls
// warning: initializer-string for array of chars is too long
// current menudef
//
// PROTOTYPES
//
[c:'M_NewGame']
fn m_new_game(choice int) 

[c:'M_Episode']
fn m_episode(choice int) 

[c:'M_ChooseSkill']
fn m_choose_skill(choice int) 

[c:'M_LoadGame']
fn m_load_game(choice int) 

[c:'M_SaveGame']
fn m_save_game(choice int) 

[c:'M_Options']
fn m_options(choice int) 

[c:'M_EndGame']
fn m_end_game(choice int) 

[c:'M_ReadThis']
fn m_read_this(choice int) 

[c:'M_ReadThis2']
fn m_read_this2(choice int) 

[c:'M_QuitDOOM']
fn m_quit_doom(choice int) 

[c:'M_ChangeMessages']
fn m_change_messages(choice int) 

[c:'M_ChangeSensitivity']
fn m_change_sensitivity(choice int) 

[c:'M_SfxVol']
fn m_sfx_vol(choice int) 

[c:'M_MusicVol']
fn m_music_vol(choice int) 

[c:'M_ChangeDetail']
fn m_change_detail(choice int) 

[c:'M_SizeDisplay']
fn m_size_display(choice int) 

[c:'M_Sound']
fn m_sound(choice int) 

[c:'M_FinishReadThis']
fn m_finish_read_this(choice int) 

[c:'M_LoadSelect']
fn m_load_select(choice int) 

[c:'M_SaveSelect']
fn m_save_select(choice int) 

[c:'M_ReadSaveStrings']
fn m_read_save_strings() 

[c:'M_QuickSave']
fn m_quick_save() 

[c:'M_QuickLoad']
fn m_quick_load() 

[c:'M_DrawMainMenu']
fn m_draw_main_menu() 

[c:'M_DrawReadThis1']
fn m_draw_read_this1() 

[c:'M_DrawReadThis2']
fn m_draw_read_this2() 

[c:'M_DrawNewGame']
fn m_draw_new_game() 

[c:'M_DrawEpisode']
fn m_draw_episode() 

[c:'M_DrawOptions']
fn m_draw_options() 

[c:'M_DrawSound']
fn m_draw_sound() 

[c:'M_DrawLoad']
fn m_draw_load() 

[c:'M_DrawSave']
fn m_draw_save() 

[c:'M_DrawSaveLoadBorder']
fn m_draw_save_load_border(x int, y int) 

[c:'M_SetupNextMenu']
fn m_setup_next_menu(menudef &Menu_t) 

[c:'M_DrawThermo']
fn m_draw_thermo(x int, y int, therm_width int, therm_dot int) 

[c:'M_WriteText']
fn m_write_text(x int, y int, string_ &i8) 

[c:'M_StringWidth']
fn m_string_width(string_ &i8) int

[c:'M_StringHeight']
fn m_string_height(string_ &i8) int

[c:'M_StartMessage']
fn m_start_message(string_ &i8, routine voidptr, input bool) 

[c:'M_ClearMenus']
fn m_clear_menus() 

//
// DOOM MENU
//
enum MenuEnum {
	newgame = 0
	options
	loadgame
	savegame
	readthis
	quitdoom
	main_end
}

//
// EPISODE SELECT
//

const ( // empty enum
	ep1 = 0
	ep2 = 1
	ep3 = 2
	ep4 = 3
	ep_end = 4
)

//
// NEW GAME
//

const ( // empty enum
	killthings = 0
	toorough = 1
	hurtme = 2
	violence = 3
	nightmare = 4
	newg_end = 5
)

//
// OPTIONS MENU
//

const ( // empty enum
	endgame = 0
	messages = 1
	detail = 2
	scrnsize = 3
	option_empty1 = 4
	mousesens = 5
	option_empty2 = 6
	soundvol = 7
	opt_end = 8
)

//
// Read This! MENU 1 & 2
//

const ( // empty enum
	rdthsempty1 = 0
	read1_end = 1
)


const ( // empty enum
	rdthsempty2 = 0
	read2_end = 1
)

//
// SOUND VOLUME MENU
//

const ( // empty enum
	sfx_vol = 0
	sfx_empty1 = 1
	music_vol = 2
	sfx_empty2 = 3
	sound_end = 4
)

//
// LOAD GAME MENU
//

const ( // empty enum
	load1 = 0
	load2 = 1
	load3 = 2
	load4 = 3
	load5 = 4
	load6 = 5
	load_end = 6
)

//
// SAVE GAME MENU
//
//
// M_ReadSaveStrings
//  read the strings from the savegame files
//
[c:'M_ReadSaveStrings']
fn m_read_save_strings()  {
	handle := &C.FILE(0)
	i := 0
	name := [256]i8{}
	for i = 0 ; i < load_end ; i ++ {
		retval := 0
		m_string_copy(name, p_save_game_file(i), sizeof(name))
		handle = C.fopen(name, c'rb')
		if handle == (voidptr(0)) {
			m_string_copy(savegamestrings [i] , c'empty slot', 24)
			LoadMenu [i] .status = 0
			continue
			
		}
		retval = C.fread(&savegamestrings [i] , 1, 24, handle)
		C.fclose(handle)
		LoadMenu [i] .status = retval == 24
	}
}

//
// M_LoadGame & Cie.
//
[c:'M_DrawLoad']
fn m_draw_load()  {
	i := 0
	v_draw_patch_direct(72, 28, w_cache_lump_name(deh_string(c'M_LOADG'), 8))
	for i = 0 ; i < load_end ; i ++ {
		m_draw_save_load_border(LoadDef.x, LoadDef.y + 16 * i)
		m_write_text(LoadDef.x, LoadDef.y + 16 * i, savegamestrings [i] )
	}
}

//
// Draw border for the savegame description
//
[c:'M_DrawSaveLoadBorder']
fn m_draw_save_load_border(x int, y int)  {
	i := 0
	v_draw_patch_direct(x - 8, y + 7, w_cache_lump_name(deh_string(c'M_LSLEFT'), 8))
	for i = 0 ; i < 24 ; i ++ {
		v_draw_patch_direct(x, y + 7, w_cache_lump_name(deh_string(c'M_LSCNTR'), 8))
		x += 8
	}
	v_draw_patch_direct(x, y + 7, w_cache_lump_name(deh_string(c'M_LSRGHT'), 8))
}

//
// User wants to load this game
//
[c:'M_LoadSelect']
fn m_load_select(choice int)  {
	name := [256]i8{}
	m_string_copy(name, p_save_game_file(choice), sizeof(name))
	g_load_game(name)
	m_clear_menus()
}

//
// Selected from DOOM menu
//
[c:'M_LoadGame']
fn m_load_game(choice int)  {
	if netgame {
		m_start_message(deh_string(c"you can't do load while in a net game!\n\npress a key."), (voidptr(0)), false)
		return 
	}
	m_setup_next_menu(&LoadDef)
	m_read_save_strings()
}

//
//  M_SaveGame & Cie.
//
[c:'M_DrawSave']
fn m_draw_save()  {
	i := 0
	v_draw_patch_direct(72, 28, w_cache_lump_name(deh_string(c'M_SAVEG'), 8))
	for i = 0 ; i < load_end ; i ++ {
		m_draw_save_load_border(LoadDef.x, LoadDef.y + 16 * i)
		m_write_text(LoadDef.x, LoadDef.y + 16 * i, savegamestrings [i] )
	}
	if saveStringEnter {
		i = m_string_width(savegamestrings [saveSlot] )
		m_write_text(LoadDef.x + i, LoadDef.y + 16 * saveSlot, c'_')
	}
}

//
// M_Responder calls this when user is finished
//
[c:'M_DoSave']
fn m_do_save(slot int)  {
	g_save_game(slot, savegamestrings [slot] )
	m_clear_menus()
// PICK QUICKSAVE SLOT YET?
	if quickSaveSlot == -2 {
	quickSaveSlot = slot
	}
}

//
// Generate a default save slot name when the user saves to
// an empty slot via the joypad.
//
[c:'SetDefaultSaveName']
fn set_default_save_name(slot int)  {
// map from IWAD or PWAD?
	if w_is_iwadl_ump(maplumpinfo) && C.strcmp(savegamedir, c'') {
		m_snprintf(savegamestrings [itemOn] , 24, c'%s', maplumpinfo.name)
	}
	else {
		wadname := m_string_duplicate(w_wad_name_for_lump(maplumpinfo))
		ext := C.strrchr(wadname, `.`)
		if ext != (voidptr(0)) {
			*ext = `\0`
		}
		m_snprintf(savegamestrings [itemOn] , 24, c'%s (%s)', maplumpinfo.name, wadname)
		C.free(wadname)
	}
	m_force_uppercase(savegamestrings [itemOn] )
	joypadSave = false
}

//
// User wants to save. Start string input for M_Responder
//
[c:'M_SaveSelect']
fn m_save_select(choice int)  {
	x := 0
	y := 0
	
// we are going to be intercepting all chars
	saveStringEnter = 1
// We need to turn on text input:
	x = LoadDef.x - 11
	y = LoadDef.y + choice * 16 - 4
	i_start_text_input(x, y, x + 8 + 24 * 8 + 8, y + 16 - 2)
	saveSlot = choice
	m_string_copy(saveOldString, savegamestrings [choice] , 24)
	if !C.strcmp(savegamestrings [choice] , c'empty slot') {
		savegamestrings [choice]  [0]  = 0
		if joypadSave {
			set_default_save_name(choice)
		}
	}
	saveCharIndex = C.strlen(savegamestrings [choice] )
}

//
// Selected from DOOM menu
//
[c:'M_SaveGame']
fn m_save_game(choice int)  {
	if !usergame {
		m_start_message(deh_string(c"you can't save if you aren't playing!\n\npress a key."), (voidptr(0)), false)
		return 
	}
	if gamestate != Gamestate_t.gs_level {
	return 
	}
	m_setup_next_menu(&SaveDef)
	m_read_save_strings()
}

//
//      M_QuickSave
//
[c:'M_QuickSaveResponse']
fn m_quick_save_response(key int)  {
	if key == key_menu_confirm {
		m_do_save(quickSaveSlot)
		s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchx)
	}
}

[c:'M_QuickSave']
fn m_quick_save()  {
	if !usergame {
		s_start_sound((voidptr(0)), Sfxenum_t.sfx_oof)
		return 
	}
	if gamestate != Gamestate_t.gs_level {
	return 
	}
	if quickSaveSlot < 0 {
		m_start_control_panel()
		m_read_save_strings()
		m_setup_next_menu(&SaveDef)
		quickSaveSlot = -2
// means to pick a slot now
		return 
	}
	deh_snprintf(tempstring, sizeof(tempstring), c"quicksave over your game named\n\n'%s'?\n\npress y or n.", savegamestrings [quickSaveSlot] )
	m_start_message(tempstring, m_quick_save_response, true)
}

//
// M_QuickLoad
//
[c:'M_QuickLoadResponse']
fn m_quick_load_response(key int)  {
	if key == key_menu_confirm {
		m_load_select(quickSaveSlot)
		s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchx)
	}
}

[c:'M_QuickLoad']
fn m_quick_load()  {
	if netgame {
		m_start_message(deh_string(c"you can't quickload during a netgame!\n\npress a key."), (voidptr(0)), false)
		return 
	}
	if quickSaveSlot < 0 {
		m_start_message(deh_string(c"you haven't picked a quicksave slot yet!\n\npress a key."), (voidptr(0)), false)
		return 
	}
	deh_snprintf(tempstring, sizeof(tempstring), c"do you want to quickload the game named\n\n'%s'?\n\npress y or n.", savegamestrings [quickSaveSlot] )
	m_start_message(tempstring, m_quick_load_response, true)
}

//
// Read This Menus
// Had a "quick hack to fix romero bug"
//
[c:'M_DrawReadThis1']
fn m_draw_read_this1()  {
	inhelpscreens = true
	v_draw_patch_direct(0, 0, w_cache_lump_name(deh_string(c'HELP2'), 8))
}

//
// Read This Menus - optional second page.
//
[c:'M_DrawReadThis2']
fn m_draw_read_this2()  {
	inhelpscreens = true
// We only ever draw the second page if this is 
// gameversion == exe_doom_1_9 and gamemode == registered
	v_draw_patch_direct(0, 0, w_cache_lump_name(deh_string(c'HELP1'), 8))
}

[c:'M_DrawReadThisCommercial']
fn m_draw_read_this_commercial()  {
	inhelpscreens = true
	v_draw_patch_direct(0, 0, w_cache_lump_name(deh_string(c'HELP'), 8))
}

//
// Change Sfx & Music volumes
//
[c:'M_DrawSound']
fn m_draw_sound()  {
	v_draw_patch_direct(60, 38, w_cache_lump_name(deh_string(c'M_SVOL'), 8))
	m_draw_thermo(SoundDef.x, SoundDef.y + 16 * (sfx_vol + 1), 16, sfxVolume)
	m_draw_thermo(SoundDef.x, SoundDef.y + 16 * (music_vol + 1), 16, musicVolume)
}

[c:'M_Sound']
fn m_sound(choice int)  {
	m_setup_next_menu(&SoundDef)
}

[c:'M_SfxVol']
fn m_sfx_vol(choice int)  {
	match choice {
	 0 { // case comp body kind=IfStmt is_enum=false
	if sfxVolume {
	sfxVolume --
	}
	
	}
	 1 { // case comp body kind=IfStmt is_enum=false
	if sfxVolume < 15 {
	sfxVolume ++
	}
	
	}
	else{}
	}
	s_set_sfx_volume(sfxVolume * 8)
}

[c:'M_MusicVol']
fn m_music_vol(choice int)  {
	match choice {
	 0 { // case comp body kind=IfStmt is_enum=false
	if musicVolume {
	musicVolume --
	}
	
	}
	 1 { // case comp body kind=IfStmt is_enum=false
	if musicVolume < 15 {
	musicVolume ++
	}
	
	}
	else{}
	}
	s_set_music_volume(musicVolume * 8)
}

//
// M_DrawMainMenu
//
[c:'M_DrawMainMenu']
fn m_draw_main_menu()  {
	v_draw_patch_direct(94, 2, w_cache_lump_name(deh_string(c'M_DOOM'), 8))
}

//
// M_NewGame
//
[c:'M_DrawNewGame']
fn m_draw_new_game()  {
	v_draw_patch_direct(96, 14, w_cache_lump_name(deh_string(c'M_NEWG'), 8))
	v_draw_patch_direct(54, 38, w_cache_lump_name(deh_string(c'M_SKILL'), 8))
}

[c:'M_NewGame']
fn m_new_game(choice int)  {
	if netgame && !demoplayback {
		m_start_message(deh_string(c"you can't start a new game\nwhile in a network game.\n\npress a key."), (voidptr(0)), false)
		return 
	}
// Chex Quest disabled the episode select screen, as did Doom II.
	if gamemode == GameMode_t.commercial || gameversion == GameVersion_t.exe_chex {
	m_setup_next_menu(&NewDef)
	}
	else { // 3
	m_setup_next_menu(&EpiDef)
}
}

//
//      M_Episode
//
[c:'M_DrawEpisode']
fn m_draw_episode()  {
	v_draw_patch_direct(54, 38, w_cache_lump_name(deh_string(c'M_EPISOD'), 8))
}

[c:'M_VerifyNightmare']
fn m_verify_nightmare(key int)  {
	if key != key_menu_confirm {
	return 
	}
	g_defered_init_new(nightmare, epi + 1, 1)
	m_clear_menus()
}

[c:'M_ChooseSkill']
fn m_choose_skill(choice int)  {
	if choice == nightmare {
		m_start_message(deh_string(c"are you sure? this skill level\nisn't even remotely fair.\n\npress y or n."), m_verify_nightmare, true)
		return 
	}
	g_defered_init_new(choice, epi + 1, 1)
	m_clear_menus()
}

[c:'M_Episode']
fn m_episode(choice int)  {
	if (gamemode == GameMode_t.shareware) && choice {
		m_start_message(deh_string(c'this is the shareware version of doom.\n\nyou need to order the entire trilogy.\n\npress a key.'), (voidptr(0)), false)
		m_setup_next_menu(&ReadDef1)
		return 
	}
	epi = choice
	m_setup_next_menu(&NewDef)
}

//
// M_Options
//
[c:'M_DrawOptions']
fn m_draw_options()  {
	v_draw_patch_direct(108, 15, w_cache_lump_name(deh_string(c'M_OPTTTL'), 8))
	v_draw_patch_direct(OptionsDef.x + 175, OptionsDef.y + 16 * detail, w_cache_lump_name(deh_string(detailNames [detailLevel] ), 8))
	v_draw_patch_direct(OptionsDef.x + 120, OptionsDef.y + 16 * messages, w_cache_lump_name(deh_string(msgNames [showMessages] ), 8))
	m_draw_thermo(OptionsDef.x, OptionsDef.y + 16 * (mousesens + 1), 10, mouseSensitivity)
	m_draw_thermo(OptionsDef.x, OptionsDef.y + 16 * (scrnsize + 1), 9, screenSize)
}

[c:'M_Options']
fn m_options(choice int)  {
	m_setup_next_menu(&OptionsDef)
}

//
//      Toggle messages on/off
//
[c:'M_ChangeMessages']
fn m_change_messages(choice int)  {
// warning: unused parameter `int choice'
	choice = 0
	showMessages = 1 - showMessages
	if !showMessages {
	players [consoleplayer] .message = deh_string(c'Messages OFF')
	}
	else { // 3
	players [consoleplayer] .message = deh_string(c'Messages ON')
}
	message_dontfuckwithme = true
}

//
// M_EndGame
//
[c:'M_EndGameResponse']
fn m_end_game_response(key int)  {
	if key != key_menu_confirm {
	return 
	}
	currentMenu.lastOn = itemOn
	m_clear_menus()
	d_start_title()
}

[c:'M_EndGame']
fn m_end_game(choice int)  {
	choice = 0
	if !usergame {
		s_start_sound((voidptr(0)), Sfxenum_t.sfx_oof)
		return 
	}
	if netgame {
		m_start_message(deh_string(c"you can't end a netgame!\n\npress a key."), (voidptr(0)), false)
		return 
	}
	m_start_message(deh_string(c'are you sure you want to end the game?\n\npress y or n.'), m_end_game_response, true)
}

//
// M_ReadThis
//
[c:'M_ReadThis']
fn m_read_this(choice int)  {
	choice = 0
	m_setup_next_menu(&ReadDef1)
}

[c:'M_ReadThis2']
fn m_read_this2(choice int)  {
	choice = 0
	m_setup_next_menu(&ReadDef2)
}

[c:'M_FinishReadThis']
fn m_finish_read_this(choice int)  {
	choice = 0
	m_setup_next_menu(&MainDef)
}

//
// M_QuitDOOM
//
[c:'M_QuitResponse']
fn m_quit_response(key int)  {
	if key != key_menu_confirm {
	return 
	}
	if !netgame {
		if gamemode == GameMode_t.commercial {
		s_start_sound((voidptr(0)), quitsounds2 [(gametic >> 2) & 7] )
		}
		else { // 3
		s_start_sound((voidptr(0)), quitsounds [(gametic >> 2) & 7] )
}
		i_wait_vbl(105)
	}
	i_quit()
}

[c:'M_SelectEndMessage']
fn m_select_end_message() &i8 {
//
//	 *XTODO
//    const char *endmsg;
//
//    if (logical_gamemission == doom)
//    {
//        // Doom 1
//
//        endmsg = doom1_endmsg;
//    }
//    else
//    {
//        // Doom 2
//        
//        endmsg = doom2_endmsg;
//    }
//	
	return doom1_endmsg [gametic % 8] 
}

[c:'M_QuitDOOM']
fn m_quit_doom(choice int)  {
	deh_snprintf(endstring, sizeof(endstring), c'%s\n\n(press y to quit to dos.)', deh_string(m_select_end_message()))
	m_start_message(endstring, m_quit_response, true)
}

[c:'M_ChangeSensitivity']
fn m_change_sensitivity(choice int)  {
	match choice {
	 0 { // case comp body kind=IfStmt is_enum=false
	if mouseSensitivity {
	mouseSensitivity --
	}
	
	}
	 1 { // case comp body kind=IfStmt is_enum=false
	if mouseSensitivity < 9 {
	mouseSensitivity ++
	}
	
	}
	else{}
	}
}

[c:'M_ChangeDetail']
fn m_change_detail(choice int)  {
	choice = 0
	detailLevel = 1 - detailLevel
	r_set_view_size(screenblocks, detailLevel)
	if !detailLevel {
	players [consoleplayer] .message = deh_string(c'High detail')
	}
	else { // 3
	players [consoleplayer] .message = deh_string(c'Low detail')
}
}

[c:'M_SizeDisplay']
fn m_size_display(choice int)  {
	match choice {
	 0 { // case comp body kind=IfStmt is_enum=false
	if screenSize > 0 {
		screenblocks --
		screenSize --
	}
	
	}
	 1 { // case comp body kind=IfStmt is_enum=false
	if screenSize < 8 {
		screenblocks ++
		screenSize ++
	}
	
	}
	else{}
	}
	r_set_view_size(screenblocks, detailLevel)
}

//
//      Menu Functions
//
[c:'M_DrawThermo']
fn m_draw_thermo(x int, y int, therm_width int, therm_dot int)  {
	xx := 0
	i := 0
	xx = x
	v_draw_patch_direct(xx, y, w_cache_lump_name(deh_string(c'M_THERML'), 8))
	xx += 8
	for i = 0 ; i < therm_width ; i ++ {
		v_draw_patch_direct(xx, y, w_cache_lump_name(deh_string(c'M_THERMM'), 8))
		xx += 8
	}
	v_draw_patch_direct(xx, y, w_cache_lump_name(deh_string(c'M_THERMR'), 8))
	v_draw_patch_direct((x + 8) + therm_dot * 8, y, w_cache_lump_name(deh_string(c'M_THERMO'), 8))
}

[c:'M_StartMessage']
fn m_start_message(string_ &i8, routine voidptr, input bool)  {
	messageLastMenuActive = menuactive
	messageToPrint = 1
	messageString = string_
	messageRoutine = routine
	messageNeedsInput = input
	menuactive = true
	return 
}

//
// Find string width from hu_font chars
//
[c:'M_StringWidth']
fn m_string_width(string_ &i8) int {
	i := usize(0)
	w := 0
	c := 0
	for i = 0 ; i < C.strlen(string_) ; i ++ {
		c = C.toupper(string_ [i] ) - `!`
		if c < 0 || c >= (`_` - `!` + 1) {
		w += 4
		}
		else { // 3
		w += (i16((hu_font [c] .width)))
}
	}
	return w
}

//
//      Find string height from hu_font chars
//
[c:'M_StringHeight']
fn m_string_height(string_ &i8) int {
	i := usize(0)
	h := 0
	height := (i16((hu_font [0] .height)))
	h = height
	for i = 0 ; i < C.strlen(string_) ; i ++ {
	if string_ [i]  == `\n` {
	h += height
	}
	}
	return h
}

//
//      Write a string using the hu_font
//
[c:'M_WriteText']
fn m_write_text(x int, y int, string_ &i8)  {
	w := 0
	ch := &i8(0)
	c := 0
	cx := 0
	cy := 0
	ch = string_
	cx = x
	cy = y
	for 1 {
		c = *ch ++
		if !c {
		break
		
		}
		if c == `\n` {
			cx = x
			cy += 12
			continue
			
		}
		c = C.toupper(c) - `!`
		if c < 0 || c >= (`_` - `!` + 1) {
			cx += 4
			continue
			
		}
		w = (i16((hu_font [c] .width)))
		if cx + w > 320 {
		break
		
		}
		v_draw_patch_direct(cx, cy, hu_font [c] )
		cx += w
	}
}

// These keys evaluate to a "null" key in Vanilla Doom that allows weird
// jumping in the menus. Preserve this behavior for accuracy.
[c:'IsNullKey']
fn is_null_key(key int) bool {
	return key == 255 || key == (128 + 58) || key == (128 + 70) || key == (128 + 69)
}

//
// CONTROL PANEL
//
//
// M_Responder
//
[c:'M_Responder']
fn m_responder(ev &Event_t) bool {
	ch := 0
	key := 0
	i := 0
	mousewait := 0
	mousey := 0
	lasty := 0
	mousex := 0
	lastx := 0
// In testcontrols mode, none of the function keys should do anything
// - the only key is escape to quit.
	if testcontrols {
		if ev.type_ == Evtype_t.ev_quit || (ev.type_ == Evtype_t.ev_keydown && (ev.data1 == key_menu_activate || ev.data1 == key_menu_quit)) {
			i_quit()
			return true
		}
		return false
	}
// "close" button pressed on window?
	if ev.type_ == Evtype_t.ev_quit {
// First click on close button = bring up quit confirm message.
// Second click on close button = confirm quit
		if menuactive && messageToPrint && messageRoutine == m_quit_response {
			m_quit_response(key_menu_confirm)
		}
		else {
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			m_quit_doom(0)
		}
		return true
	}
// key is the key pressed, ch is the actual character typed
	ch = 0
	key = -1
	if ev.type_ == Evtype_t.ev_joystick {
// Simulate key presses from joystick events to interact with the menu.
		if menuactive {
			if ev.data3 < 0 {
				key = key_menu_up
				joywait = i_get_time() + 5
			}
			else if ev.data3 > 0 {
				key = key_menu_down
				joywait = i_get_time() + 5
			}
			if ev.data2 < 0 {
				key = key_menu_left
				joywait = i_get_time() + 2
			}
			else if ev.data2 > 0 {
				key = key_menu_right
				joywait = i_get_time() + 2
			}
			if (((joybfire) >= 0) && (ev.data1 & (1 << (joybfire))) != 0) {
// Simulate a 'Y' keypress when Doom show a Y/N dialog with Fire button.
				if messageToPrint && messageNeedsInput {
					key = key_menu_confirm
				}
// Simulate pressing "Enter" when we are supplying a save slot name
				else if saveStringEnter {
					key = 13
				}
				else {
// if selecting a save slot via joypad, set a flag
					if currentMenu == &SaveDef {
						joypadSave = true
					}
					key = key_menu_forward
				}
				joywait = i_get_time() + 5
			}
			if (((joybuse) >= 0) && (ev.data1 & (1 << (joybuse))) != 0) {
// Simulate a 'N' keypress when Doom show a Y/N dialog with Use button.
				if messageToPrint && messageNeedsInput {
					key = key_menu_abort
				}
// If user was entering a save name, back out
				else if saveStringEnter {
					key = 27
				}
				else {
					key = key_menu_back
				}
				joywait = i_get_time() + 5
			}
		}
		if (((joybmenu) >= 0) && (ev.data1 & (1 << (joybmenu))) != 0) {
			key = key_menu_activate
			joywait = i_get_time() + 5
		}
	}
	else {
		if ev.type_ == Evtype_t.ev_mouse && mousewait < i_get_time() {
			mousey += ev.data3
			if mousey < lasty - 30 {
				key = key_menu_down
				mousewait = i_get_time() + 5
				mousey = lasty
				lasty -= 30
			}
			else if mousey > lasty + 30 {
				key = key_menu_up
				mousewait = i_get_time() + 5
				mousey = lasty
				lasty += 30
			}
			mousex += ev.data2
			if mousex < lastx - 30 {
				key = key_menu_left
				mousewait = i_get_time() + 5
				mousex = lastx
				lastx -= 30
			}
			else if mousex > lastx + 30 {
				key = key_menu_right
				mousewait = i_get_time() + 5
				mousex = lastx
				lastx += 30
			}
			if ev.data1 & 1 {
				key = key_menu_forward
				mousewait = i_get_time() + 15
			}
			if ev.data1 & 2 {
				key = key_menu_back
				mousewait = i_get_time() + 15
			}
		}
		else {
			if ev.type_ == Evtype_t.ev_keydown {
				key = ev.data1
				ch = ev.data2
			}
		}
	}
	if key == -1 {
	return false
	}
// Save Game string input
	if saveStringEnter {
		match key {
		 127 { // case comp body kind=IfStmt is_enum=false
		if saveCharIndex > 0 {
			saveCharIndex --
			savegamestrings [saveSlot]  [saveCharIndex]  = 0
		}
		
		}
		 27 { // case comp body kind=BinaryOperator is_enum=false
		saveStringEnter = 0
		i_stop_text_input()
		m_string_copy(savegamestrings [saveSlot] , saveOldString, 24)
		
		}
		 13 { // case comp body kind=BinaryOperator is_enum=false
		saveStringEnter = 0
		i_stop_text_input()
		if savegamestrings [saveSlot]  [0]  {
		m_do_save(saveSlot)
		}
		
		if vanilla_keyboard_mapping {
			ch = ev.data1
		}
		else {
			ch = ev.data3
		}
		ch = C.toupper(ch)
		if ch != ` ` && (ch - `!` < 0 || ch - `!` >= (`_` - `!` + 1)) {
			
		}
		if ch >= 32 && ch <= 127 && saveCharIndex < 24 - 1 && m_string_width(savegamestrings [saveSlot] ) < (24 - 2) * 8 {
			savegamestrings [saveSlot]  [saveCharIndex ++]  = ch
			savegamestrings [saveSlot]  [saveCharIndex]  = 0
		}
		
		}
		else {
// Savegame name entry. This is complicated.
// Vanilla has a bug where the shift key is ignored when entering
// a savegame name. If vanilla_keyboard_mapping is on, we want
// to emulate this bug by using ev->data1. But if it's turned off,
// it implies the user doesn't care about Vanilla emulation:
// instead, use ev->data3 which gives the fully-translated and
// modified key input.
		if ev.type_ != Evtype_t.ev_keydown {
			
		}
		}
		}
		return true
	}
// Take care of any messages that need input
	if messageToPrint {
		if messageNeedsInput {
			if key != ` ` && key != 27 && key != key_menu_confirm && key != key_menu_abort {
				return false
			}
		}
		menuactive = messageLastMenuActive
		messageToPrint = 0
		if messageRoutine {
		messageRoutine(key)
		}
		menuactive = false
		s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchx)
		return true
	}
	if (devparm && key == key_menu_help) || (key != 0 && key == key_menu_screenshot) {
		g_screen_shot()
		return true
	}
// F-Keys
	if !menuactive {
		if key == key_menu_decscreen// Screen size down
		 {
			if automapactive || chat_on {
			return false
			}
			m_size_display(0)
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_stnmov)
			return true
		}
		else if key == key_menu_incscreen// Screen size up
		 {
			if automapactive || chat_on {
			return false
			}
			m_size_display(1)
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_stnmov)
			return true
		}
		else if key == key_menu_help// Help key
		 {
			m_start_control_panel()
			if gameversion >= GameVersion_t.exe_ultimate {
			currentMenu = &ReadDef2
			}
			else { // 3
			currentMenu = &ReadDef1
}
			itemOn = 0
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			return true
		}
		else if key == key_menu_save// Save
		 {
			m_start_control_panel()
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			m_save_game(0)
			return true
		}
		else if key == key_menu_load// Load
		 {
			m_start_control_panel()
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			m_load_game(0)
			return true
		}
		else if key == key_menu_volume// Sound Volume
		 {
			m_start_control_panel()
			currentMenu = &SoundDef
			itemOn = sfx_vol
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			return true
		}
		else if key == key_menu_detail// Detail toggle
		 {
			m_change_detail(0)
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			return true
		}
		else if key == key_menu_qsave// Quicksave
		 {
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			m_quick_save()
			return true
		}
		else if key == key_menu_endgame// End game
		 {
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			m_end_game(0)
			return true
		}
		else if key == key_menu_messages// Toggle messages
		 {
			m_change_messages(0)
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			return true
		}
		else if key == key_menu_qload// Quickload
		 {
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			m_quick_load()
			return true
		}
		else if key == key_menu_quit// Quit DOOM
		 {
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			m_quit_doom(0)
			return true
		}
		else if key == key_menu_gamma// gamma toggle
		 {
			usegamma ++
			if usegamma > 4 {
			usegamma = 0
			}
			players [consoleplayer] .message = deh_string(gammamsg [usegamma] )
			i_set_palette(w_cache_lump_name(deh_string(c'PLAYPAL'), 8))
			return true
		}
	}
// Pop-up menu?
	if !menuactive {
		if key == key_menu_activate {
			m_start_control_panel()
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchn)
			return true
		}
		return false
	}
// Keys usable within menu
	if key == key_menu_down {
// Move down to next item
		for {
		if itemOn + 1 > currentMenu.numitems - 1 {
		itemOn = 0
		}
		else { // 3
		itemOn ++
}
		s_start_sound((voidptr(0)), Sfxenum_t.sfx_pstop)
		// while()
		if ! (currentMenu.menuitems [itemOn] .status == -1 ) { break }
		}
		return true
	}
	else if key == key_menu_up {
// Move back up to previous item
		for {
		if !itemOn {
		itemOn = currentMenu.numitems - 1
		}
		else { // 3
		itemOn --
}
		s_start_sound((voidptr(0)), Sfxenum_t.sfx_pstop)
		// while()
		if ! (currentMenu.menuitems [itemOn] .status == -1 ) { break }
		}
		return true
	}
	else if key == key_menu_left {
// Slide slider left
		if currentMenu.menuitems [itemOn] .routine && currentMenu.menuitems [itemOn] .status == 2 {
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_stnmov)
			currentMenu.menuitems [itemOn] .routine(0)
		}
		return true
	}
	else if key == key_menu_right {
// Slide slider right
		if currentMenu.menuitems [itemOn] .routine && currentMenu.menuitems [itemOn] .status == 2 {
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_stnmov)
			currentMenu.menuitems [itemOn] .routine(1)
		}
		return true
	}
	else if key == key_menu_forward {
// Activate menu item
		if currentMenu.menuitems [itemOn] .routine && currentMenu.menuitems [itemOn] .status {
			currentMenu.lastOn = itemOn
			if currentMenu.menuitems [itemOn] .status == 2 {
				currentMenu.menuitems [itemOn] .routine(1)
// right arrow
				s_start_sound((voidptr(0)), Sfxenum_t.sfx_stnmov)
			}
			else {
				currentMenu.menuitems [itemOn] .routine(itemOn)
				s_start_sound((voidptr(0)), Sfxenum_t.sfx_pistol)
			}
		}
		return true
	}
	else if key == key_menu_activate {
// Deactivate menu
		currentMenu.lastOn = itemOn
		m_clear_menus()
		s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchx)
		return true
	}
	else if key == key_menu_back {
// Go back to previous menu
		currentMenu.lastOn = itemOn
		if currentMenu.prevMenu {
			currentMenu = currentMenu.prevMenu
			itemOn = currentMenu.lastOn
			s_start_sound((voidptr(0)), Sfxenum_t.sfx_swtchn)
		}
		return true
	}
// Keyboard shortcut?
// Vanilla Doom has a weird behavior where it jumps to the scroll bars
// when the certain keys are pressed, so emulate this.
	else if ch != 0 || is_null_key(key) {
		for i = itemOn + 1 ; i < currentMenu.numitems ; i ++ {
			if currentMenu.menuitems [i] .alphaKey == ch {
				itemOn = i
				s_start_sound((voidptr(0)), Sfxenum_t.sfx_pstop)
				return true
			}
		}
		for i = 0 ; i <= itemOn ; i ++ {
			if currentMenu.menuitems [i] .alphaKey == ch {
				itemOn = i
				s_start_sound((voidptr(0)), Sfxenum_t.sfx_pstop)
				return true
			}
		}
	}
	return false
}

//
// M_StartControlPanel
//
[c:'M_StartControlPanel']
fn m_start_control_panel()  {
// intro might call this repeatedly
	if menuactive {
	return 
	}
	menuactive = 1
	currentMenu = &MainDef
// JDC
	itemOn = currentMenu.lastOn
// JDC
	
}

// Display OPL debug messages - hack for GENMIDI development.
[c:'I_OPL_DevMessages']
fn i_opl_dev_messages(arg0 &i8, arg1 usize) 

[c:'M_DrawOPLDev']
fn m_draw_opld_ev()  {
	debug := [1024]i8{}
	curr := &i8(0)
	p := &i8(0)
	
	line := 0
	i_opl_dev_messages(debug, sizeof(debug))
	curr = debug
	line = 0
	for  ;  ;  {
		p = C.strchr(curr, `\n`)
		if p != (voidptr(0)) {
			*p = `\0`
		}
		m_write_text(0, line * 8, curr)
		line ++$
		if p == (voidptr(0)) {
			break
			
		}
		curr = p + 1
	}
}

//
// M_Drawer
// Called after the view has been rendered,
// but before it has been blitted.
//
[c:'M_Drawer']
fn m_drawer()  {
	x := i16(0)
	y := i16(0)
	i := u32(0)
	max := u32(0)
	string_ := [80]i8{}
	name := &i8(0)
	start := 0
	inhelpscreens = false
// Horiz. & Vertically center string and print it.
	if messageToPrint {
		start = 0
		y = 200 / 2 - m_string_height(messageString) / 2
		for messageString [start]  != `\0` {
			foundnewline := false
			for i = 0 ; messageString [start + i]  != `\0` ; i ++ {
				if messageString [start + i]  == `\n` {
					m_string_copy(string_, messageString + start, sizeof(string_))
					if i < sizeof(string_) {
						string_ [i]  = `\0`
					}
					foundnewline = true
					start += i + 1
					break
					
				}
			}
			if !foundnewline {
				m_string_copy(string_, messageString + start, sizeof(string_))
				start += C.strlen(string_)
			}
			x = 320 / 2 - m_string_width(string_) / 2
			m_write_text(x, y, string_)
			y += (i16((hu_font [0] .height)))
		}
		return 
	}
	if opldev {
		m_draw_opld_ev()
	}
	if !menuactive {
	return 
	}
	if currentMenu.routine {
	currentMenu.routine()
	}
// call Draw routine
// DRAW MENU
	x = currentMenu.x
	y = currentMenu.y
	max = currentMenu.numitems
	for i = 0 ; i < max ; i ++ {
		name = deh_string(currentMenu.menuitems [i] .name)
		if name [0]  && w_check_num_for_name(name) > 0 {
			v_draw_patch_direct(x, y, w_cache_lump_name(name, 8))
		}
		y += 16
	}
// DRAW SKULL
	v_draw_patch_direct(x + -32, currentMenu.y - 5 + itemOn * 16, w_cache_lump_name(deh_string(skullName [whichSkull] ), 8))
}

//
// M_ClearMenus
//
[c:'M_ClearMenus']
fn m_clear_menus()  {
	menuactive = 0
// if (!netgame && usergame && paused)
	
//       sendpause = true;
	
}

//
// M_SetupNextMenu
//
[c:'M_SetupNextMenu']
fn m_setup_next_menu(menudef &Menu_t)  {
	currentMenu = menudef
	itemOn = currentMenu.lastOn
}

//
// M_Ticker
//
[c:'M_Ticker']
fn m_ticker()  {
	if skullAnimCounter --$ <= 0 {
		whichSkull ^= 1
		skullAnimCounter = 8
	}
}

//
// M_Init
//
[c:'M_Init']
fn m_init()  {
	currentMenu = &MainDef
	menuactive = 0
	itemOn = currentMenu.lastOn
	whichSkull = 0
	skullAnimCounter = 10
	screenSize = screenblocks - 3
	messageToPrint = 0
	messageString = (voidptr(0))
	messageLastMenuActive = menuactive
	quickSaveSlot = -1
// Here we could catch other version dependencies,
//  like HELP1/2, and four episodes.
// The same hacks were used in the original Doom EXEs.
	if gameversion >= GameVersion_t.exe_ultimate {
		MainMenu [int(MenuEnum.readthis)] .routine = m_read_this2
		ReadDef2.prevMenu = (voidptr(0))
	}
	if gameversion >= GameVersion_t.exe_final && gameversion <= GameVersion_t.exe_final2 {
		ReadDef2.routine = m_draw_read_this_commercial
	}
	if gamemode == GameMode_t.commercial {
		MainMenu [int(MenuEnum.readthis)]  = MainMenu [int(MenuEnum.quitdoom)] 
		MainDef.numitems --
		MainDef.y += 8
		NewDef.prevMenu = &MainDef
		ReadDef1.routine = m_draw_read_this_commercial
		ReadDef1.x = 330
		ReadDef1.y = 165
		ReadMenu1 [int(rdthsempty1)] .routine = m_finish_read_this
	}
// Versions of doom.exe before the Ultimate Doom release only had
// three episodes; if we're emulating one of those then don't try
// to show episode four. If we are, then do show episode four
// (should crash if missing).
	if gameversion < GameVersion_t.exe_ultimate {
		EpiDef.numitems --
	}
// chex.exe shows only one episode.
	else if gameversion == GameVersion_t.exe_chex {
		EpiDef.numitems = 1
	}
	opldev = m_check_parm(c'-opldev') > 0
}

