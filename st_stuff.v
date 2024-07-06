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
//	System specific interface stuff.
//
// Screen width and height.
// Screen height used when aspect_ratio_correct=true.
// Called by D_DoomMain,
// determines the hardware configuration
// and sets up the video mode
// Takes full 8 bit values.
@[c: 'I_SetPalette']
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
//      Miscellaneous.
//
@[c: 'M_snprintf']
@[c2v_variadic]
fn m_snprintf(buf &i8, buf_len usize, s ...&i8) int

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
@[c: 'W_CheckNumForName']
fn w_check_num_for_name(name &i8) Lumpindex_t

@[c: 'W_GetNumForName']
fn w_get_num_for_name(name &i8) Lumpindex_t

@[c: 'W_CacheLumpNum']
fn w_cache_lump_num(lump Lumpindex_t, tag int) voidptr

@[c: 'W_CacheLumpName']
fn w_cache_lump_name(name &i8, tag int) voidptr

@[c: 'W_ReleaseLumpName']
fn w_release_lump_name(name &i8)

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
// Parses "Misc" sections in dehacked files
//
// skipping global dup "deh_initial_health"
// skipping global dup "deh_initial_bullets"
// skipping global dup "deh_max_health"
// skipping global dup "deh_max_armor"
// skipping global dup "deh_green_armor_class"
// skipping global dup "deh_blue_armor_class"
// skipping global dup "deh_max_soulsphere"
// skipping global dup "deh_soulsphere_health"
// skipping global dup "deh_megasphere_health"
// skipping global dup "deh_god_mode_health"
// skipping global dup "deh_idfa_armor"
// skipping global dup "deh_idfa_armor_class"
// skipping global dup "deh_idkfa_armor"
// skipping global dup "deh_idkfa_armor_class"
// skipping global dup "deh_bfg_cells_per_shot"
// skipping global dup "deh_species_infighting"
// To compile without dehacked, it's possible to use these:
// #ifndef DEH_MISC_H
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
@[c: 'G_DeferedInitNew']
fn g_defered_init_new(skill Skill_t, episode int, map_ int)

// Can be called by the startup code or M_Responder,
// calls P_SetupLevel or W_EnterWorld.
// Called by M_Responder.
// Only called by startup code.
// Read current data from inputs and build a player movement command.
// skipping global dup "vanilla_savegame_limit"
// skipping global dup "vanilla_demo_limit"
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
//	Cheat code checking.
//
//
// CHEAT SEQUENCE PACKAGE
//
// declaring a cheat
@[c: 'cht_CheckCheat']
fn cht_check_cheat(cht &Cheatseq_t, key i8) int

@[c: 'cht_GetParam']
fn cht_get_param(cht &Cheatseq_t, buffer &i8)

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
//	Status bar code.
//	Does the face/direction indicator animatin.
//	Does palette indicators as well (red pain/berserk, bright pickup)
//
// Size of statusbar.
// Now sensitive for scaling.
//
// STATUS BAR
//
// Called by main loop.
@[c: 'ST_Responder']
fn st_responder(ev &Event_t) bool

// Called by main loop.
@[c: 'ST_Ticker']
fn st_ticker()

// Called by main loop.
@[c: 'ST_Drawer']
fn st_drawer(fullscreen bool, refresh bool)

// Called when the console player is spawned on each level.
@[c: 'ST_Start']
fn st_start()

// Called by startup code.
@[c: 'ST_Init']
fn st_init()

// States for status bar code.
// States for the chat code.
// skipped extern global cheat_mus
// skipped extern global cheat_god
// skipped extern global cheat_ammo
// skipped extern global cheat_ammonokey
// skipped extern global cheat_noclip
// skipped extern global cheat_commercial_noclip
// skipped extern global cheat_powerup
// skipped extern global cheat_choppers
// skipped extern global cheat_clev
// skipped extern global cheat_mypos
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
// 	The status bar widget code.
//
// We are referring to patches.
//
// Typedefs of widgets
//
// Number widget
// Percent widget ("child" of number widget,
//  or, more precisely, contains a number widget.)
// Multiple Icon widget
// Binary Icon widget
//
// Widget creation, access, and update routines
//
// Initializes widget library.
// More precisely, initialize STMINUS,
//  everything else is done somewhere else.
//
@[c: 'STlib_init']
fn st_lib_init()

// Number widget routines
@[c: 'STlib_initNum']
fn st_lib_init_num(n &St_number_t, x int, y int, pl &&Patch_t, num &int, on &bool, width int)

@[c: 'STlib_updateNum']
fn st_lib_update_num(n &St_number_t, refresh bool)

// Percent widget routines
@[c: 'STlib_initPercent']
fn st_lib_init_percent(p &St_percent_t, x int, y int, pl &&Patch_t, num &int, on &bool, percent &Patch_t)

@[c: 'STlib_updatePercent']
fn st_lib_update_percent(per &St_percent_t, refresh int)

// Multiple Icon widget routines
@[c: 'STlib_initMultIcon']
fn st_lib_init_mult_icon(mi &St_multicon_t, x int, y int, il &&Patch_t, inum &int, on &bool)

@[c: 'STlib_updateMultIcon']
fn st_lib_update_mult_icon(mi &St_multicon_t, refresh bool)

// Binary Icon widget routines
@[c: 'STlib_initBinIcon']
fn st_lib_init_bin_icon(b &St_binicon_t, x int, y int, i &Patch_t, val &bool, on &bool)

@[c: 'STlib_updateBinIcon']
fn st_lib_update_bin_icon(bi &St_binicon_t, refresh bool)

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
// skipping global dup "viewwidth"
// skipping global dup "scaledviewwidth"
// skipping global dup "viewheight"
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
// skipping global dup "numsprites"
// skipping global dup "sprites"
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
// skipping global dup "viewx"
// skipping global dup "viewy"
// skipping global dup "viewz"
// skipping global dup "viewangle"
// skipping global dup "viewplayer"
// ?
// skipping global dup "clipangle"
// skipping global dup "viewangletox"
// skipping global dup "xtoviewangle"
// extern fixed_t		finetangent[FINEANGLES/2];
// skipping global dup "rw_distance"
// skipping global dup "rw_normalangle"
// angle to line origin
// skipping global dup "rw_angle1"
// Segs count?
// skipping global dup "sscount"
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
// skipping global dup "viewcos"
// skipping global dup "viewsin"
// skipping global dup "viewwindowx"
// skipping global dup "viewwindowy"
// skipping global dup "centerx"
// skipping global dup "centery"
// skipping global dup "centerxfrac"
// skipping global dup "centeryfrac"
// skipping global dup "projection"
// skipping global dup "validcount"
// skipping global dup "linecount"
// skipping global dup "loopcount"
//
// Lighting LUT.
// Used for z-depth cuing per column/row,
//  and other lighting effects (sector ambient, flash).
//
// Lighting constants.
// Now why not 32 levels here?
// skipping global dup "scalelight"
// skipping global dup "scalelightfixed"
// skipping global dup "zlight"
// skipping global dup "extralight"
// skipping global dup "fixedcolormap"
// Number of diminishing brightness levels.
// There a 0-31, i.e. 32 LUT in the COLORMAP lump.
// Blocky/low detail mode.
// B remove this?
//  0 = high, 1 = low
// skipping global dup "detailshift"
//
// Function pointers to switch refresh/drawing functions.
// Used to select shadow mode etc.
//
// skipping global dup "colfunc"
// skipping global dup "transcolfunc"
// skipping global dup "basecolfunc"
// skipping global dup "fuzzcolfunc"
// No shadow effects on floors.
// skipping global dup "spanfunc"
//
// Utility functions.
@[c: 'R_PointToAngle2']
fn r_point_to_angle2(x1 int, y1 int, x2 int, y2 int) Angle_t

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
// skipping global dup "vissprites"
// skipping global dup "vissprite_p"
// skipping global dup "vsprsortedhead"
// Constant arrays used for psprite clipping
//  and initializing clipping.
// skipping global dup "negonearray"
// skipping global dup "screenheightarray"
// vars for R_DrawMaskedColumn
// skipping global dup "mfloorclip"
// skipping global dup "mceilingclip"
// skipping global dup "spryscale"
// skipping global dup "sprtopscreen"
// skipping global dup "pspritescale"
// skipping global dup "pspriteiscale"
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
// skipping global dup "dc_colormap"
// skipping global dup "dc_x"
// skipping global dup "dc_yl"
// skipping global dup "dc_yh"
// skipping global dup "dc_iscale"
// skipping global dup "dc_texturemid"
// first pixel in a column
// skipping global dup "dc_source"
// The span blitting interface.
// Hook in assembler or system specific BLT
//  here.
// The Spectre/Invisibility effect.
// Draw with color translation tables,
//  for player sprite rendering,
//  Green/Red/Blue/Indigo shirts.
// skipping global dup "ds_y"
// skipping global dup "ds_x1"
// skipping global dup "ds_x2"
// skipping global dup "ds_colormap"
// skipping global dup "ds_xfrac"
// skipping global dup "ds_yfrac"
// skipping global dup "ds_xstep"
// skipping global dup "ds_ystep"
// start of a 64*64 tile image
// skipping global dup "ds_source"
// skipping global dup "translationtables"
// skipping global dup "dc_translation"
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
// skipping global dup "thinkercap"
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
// skipping global dup "itemrespawnque"
// skipping global dup "itemrespawntime"
// skipping global dup "iquehead"
// skipping global dup "iquetail"
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
// skipping global dup "floatok"
// skipping global dup "tmfloorz"
// skipping global dup "tmceilingz"
// skipping global dup "ceilingline"
// fraggle: I have increased the size of this buffer.  In the original Doom,
// overrunning past this limit caused other bits of memory to be overwritten,
// affecting demo playback.  However, in doing so, the limit was still
// exceeded.  So we have to support more than 8 specials.
//
// We keep the original limit, to detect what variables in memory were
// overwritten (see SpechitOverrun())
// skipping global dup "spechit"
// skipping global dup "numspechit"
// skipping global dup "linetarget"
// who got hit (or NULL)
//
// P_SETUP
//
// skipping global dup "rejectmatrix"
// for fast sight rejection
// skipping global dup "blockmaplump"
// offsets in blockmap are from here
// skipping global dup "blockmap"
// skipping global dup "bmapwidth"
// skipping global dup "bmapheight"
// in mapblocks
// skipping global dup "bmaporgx"
// skipping global dup "bmaporgy"
// origin of block map
// skipping global dup "blocklinks"
// for thing chains
//
// P_INTER
//
// skipping global dup "maxammo"
// skipping global dup "clipammo"
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
// skipping global dup "levelTimer"
// skipping global dup "levelTimeCount"
//      Define values for map objects
// at game start
// at map load
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
//
// P_PLATS
//
// skipping global dup "activeplats"
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
// skipping global dup "activeceilings"
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
//
//
@[c: 'P_GivePower']
fn p_give_power(arg0 &Player_t, arg1 int) bool

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
//  AutoMap module.
//
// Used by ST StatusBar stuff.
// Called by main loop.
// Called by main loop.
// Called by main loop,
// called instead of view drawer if automap active.
// Called to force the automap to quit
// if the level is completed while it is up.
// skipping global dup "cheat_amap"
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
// skipping global dup "S_sfx"
// the complete set of music
// skipping global dup "S_music"
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
// skipping global dup "snd_channels"
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
@[c: 'V_CopyRect']
fn v_copy_rect(srcx int, srcy int, source &Pixel_t, width int, height int, destx int, desty int)

@[c: 'V_DrawPatch']
fn v_draw_patch(x int, y int, patch &Patch_t)

// villsa [STRIFE]
// Draw a linear block of pixels into the view buffer.
// Draw a raw screen lump
// Temporarily switch to using a different buffer to draw graphics, etc.
@[c: 'V_UseBuffer']
fn v_use_buffer(buffer &Pixel_t)

// Return to using the normal screen buffer to draw graphics.
@[c: 'V_RestoreBuffer']
fn v_restore_buffer()

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
// skipping global dup "gamemode"
// skipping global dup "gamemission"
// skipping global dup "gameversion"
// skipping global dup "gamevariant"
// skipping global dup "gamedescription"
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
// skipping global dup "modifiedgame"
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
// skipping global dup "sfxVolume"
// skipping global dup "musicVolume"
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
// skipping global dup "viewangleoffset"
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
//	Status bar code.
//	Does the face/direction indicator animatin.
//	Does palette indicators as well (red pain/berserk, bright pickup)
//
// Needs access to LFB.
// State.
// Data.
//
// STATUS BAR DATA
//
// Palette indices.
// For damage/bonus red-/gold-shifts
// Radiation suit, green shift.
// N/256*100% probability
//  that the normal face state will change
// For Responder
// Location of status bar
// Should be set to patch width
//  for tall numbers later on
// Number of status faces.
// Location and size of statistics,
//  justified according to widget type.
// Problem is, within which space? STbar? Screen?
// Note: this could be read in by a lump.
//       Problem is, is the stuff rendered
//       into a buffer,
//       or into the frame buffer?
// AMMO number pos.
// HEALTH number pos.
// Weapon pos.
// Frags pos.
// ARMOR number pos.
// Key icon positions.
// Ammunition counter.
// Indicate maximum ammunition.
// Only needed because backpack exists.
// pistol
// shotgun
// chain gun
// missile launcher
// plasma gun
// bfg
// WPNS title
// DETH title
// Incoming messages window location
// UNUSED
// #define ST_MSGTEXTX	   (viewwindowx)
// #define ST_MSGTEXTY	   (viewwindowy+viewheight-18)
// Dimensions given in characters.
// Or shall I say, in lines?
// Width, in characters again.
// Height, in lines.
// graphics are drawn to a backing screen and blitted to the real screen
// main player in game
// ST_Start() has just been called
// lump number for PLAYPAL
// used for timing
// used for making messages go away
// used when in chat
// whether in automap or first-person
// whether left-side main status bar is active
// whether status bar chat is active
// value of st_chat before message popped up
// whether chat window has the cursor on
// !deathmatch
// !deathmatch && st_statusbaron
// !deathmatch
// main bar left
// main bar right, for doom 1.0
// 0-9, tall numbers
// tall % sign
// 0-9, short, yellow (,different!) numbers
// 3 key-cards, 3 skulls
// face status patches
// face background
// main bar right
// weapon ownership patches
// ready-weapon widget
// in deathmatch only, summary of frags stats
// health widget
// arms background
// weapon ownership widgets
// face status widget
// keycard widgets
// armor widget
// ammo widgets
// max ammo widgets
// number of frags so far in deathmatch
// used to use appopriately pained face
// used for evil grin
// count until face changes
// current face index, used by w_faces
// holds key-type for each key box on bar
// a random number per tick
//
// STATUS BAR CODE
//
@[c: 'ST_Stop']
fn st_stop()

@[c: 'ST_refreshBackground']
fn st_refresh_background() {
	if st_statusbaron {
		v_use_buffer(st_backing_screen)
		v_draw_patch(0, 0, sbar)
		// draw right side of bar if needed (Doom 1.0)
		if sbarr {
			v_draw_patch(104, 0, sbarr)
		}
		if netgame {
			v_draw_patch(143, 0, faceback)
		}
		v_restore_buffer()
		v_copy_rect(0, 0, st_backing_screen, 320, 32, 0, (200 - 32))
	}
}

// Respond to keyboard input events,
//  intercept cheats.
@[c: 'ST_Responder']
fn st_responder(ev &Event_t) bool {
	i := 0
	// Filter automap on/off.
	if ev.type_ == Evtype_t.ev_keyup && (ev.data1 & 4294901760) == ((`a` << 24) + (`m` << 16)) {
		match ev.data1 {
			(((`a` << 24) + (`m` << 16)) | (`e` << 8)) { // case comp body kind=BinaryOperator is_enum=false
				st_gamestate = St_stateenum_t.automap_state
				st_firsttime = true
			}
			(((`a` << 24) + (`m` << 16)) | (`x` << 8)) { // case comp body kind=BinaryOperator is_enum=false
				//	fprintf(stderr, "AM exited\n");
				st_gamestate = St_stateenum_t.first_person_state
			}
			else {}
		}
	}
	// if a user keypress...
	else if ev.type_ == Evtype_t.ev_keydown {
		if !netgame && gameskill != Skill_t.sk_nightmare {
			// 'dqd' cheat for toggleable god mode
			if cht_check_cheat(&cheat_god, ev.data2) {
				plyr.cheats ^= Cheat_t.cf_godmode
				if plyr.cheats & Cheat_t.cf_godmode {
					if plyr.mo {
						plyr.mo.health = 100
					}
					plyr.health = deh_god_mode_health
					plyr.message = deh_string(c'Degreelessness Mode On')
				} else { // 3
					plyr.message = deh_string(c'Degreelessness Mode Off')
				}
			}
			// 'fa' cheat for killer fucking arsenal
			else if cht_check_cheat(&cheat_ammonokey, ev.data2) {
				plyr.armorpoints = deh_idfa_armor
				plyr.armortype = deh_idfa_armor_class
				for i = 0; i < Weapontype_t.numweapons; i++ {
					plyr.weaponowned[i] = true
				}
				for i = 0; i < Ammotype_t.numammo; i++ {
					plyr.ammo[i] = plyr.maxammo[i]
				}
				plyr.message = deh_string(c'Ammo (no keys) Added')
			}
			// 'kfa' cheat for key full ammo
			else if cht_check_cheat(&cheat_ammo, ev.data2) {
				plyr.armorpoints = deh_idkfa_armor
				plyr.armortype = deh_idkfa_armor_class
				for i = 0; i < Weapontype_t.numweapons; i++ {
					plyr.weaponowned[i] = true
				}
				for i = 0; i < Ammotype_t.numammo; i++ {
					plyr.ammo[i] = plyr.maxammo[i]
				}
				for i = 0; i < Card_t.numcards; i++ {
					plyr.cards[i] = true
				}
				plyr.message = deh_string(c'Very Happy Ammo Added')
			}
			// 'mus' cheat for changing music
			else if cht_check_cheat(&cheat_mus, ev.data2) {
				buf := [3]i8{}
				musnum := 0
				plyr.message = deh_string(c'Music Change')
				cht_get_param(&cheat_mus, buf)
				// Note: The original v1.9 had a bug that tried to play back
				// the Doom II music regardless of gamemode.  This was fixed
				// in the Ultimate Doom executable so that it would work for
				// the Doom 1 music as well.
				if gamemode == GameMode_t.commercial || gameversion < GameVersion_t.exe_ultimate {
					musnum = Musicenum_t.mus_runnin + (buf[0] - `0`) * 10 + buf[1] - `0` - 1
					if ((buf[0] - `0`) * 10 + buf[1] - `0`) > 35
						&& gameversion >= GameVersion_t.exe_doom_1_8 {
						plyr.message = deh_string(c'IMPOSSIBLE SELECTION')
					} else { // 3
						s_change_music(musnum, 1)
					}
				} else {
					musnum = Musicenum_t.mus_e1m1 + (buf[0] - `1`) * 9 + (buf[1] - `1`)
					if ((buf[0] - `1`) * 9 + buf[1] - `1`) > 31 {
						plyr.message = deh_string(c'IMPOSSIBLE SELECTION')
					} else { // 3
						s_change_music(musnum, 1)
					}
				}
			} else if (GameMission_t.doom == GameMission_t.doom
				&& cht_check_cheat(&cheat_noclip, ev.data2))
				|| (GameMission_t.doom != GameMission_t.doom
				&& cht_check_cheat(&cheat_commercial_noclip, ev.data2)) {
				// Noclip cheat.
				// For Doom 1, use the idspipsopd cheat; for all others, use
				// idclip
				plyr.cheats ^= Cheat_t.cf_noclip
				if plyr.cheats & Cheat_t.cf_noclip {
					plyr.message = deh_string(c'No Clipping Mode ON')
				} else { // 3
					plyr.message = deh_string(c'No Clipping Mode OFF')
				}
			}
			// 'behold?' power-up cheats
			for i = 0; i < 6; i++ {
				if cht_check_cheat(&cheat_powerup[i], ev.data2) {
					if !plyr.powers[i] {
						p_give_power(plyr, i)
					} else if i != Powertype_t.pw_strength {
						plyr.powers[i] = 1
					} else { // 3
						plyr.powers[i] = 0
					}
					plyr.message = deh_string(c'Power-up Toggled')
				}
			}
			// 'behold' power-up menu
			if cht_check_cheat(&cheat_powerup[6], ev.data2) {
				plyr.message = deh_string(c'inVuln, Str, Inviso, Rad, Allmap, or Lite-amp')
			}
			// 'choppers' invulnerability & chainsaw
			else if cht_check_cheat(&cheat_choppers, ev.data2) {
				plyr.weaponowned[int(Weapontype_t.wp_chainsaw)] = true
				plyr.powers[int(Powertype_t.pw_invulnerability)] = true
				plyr.message = deh_string(c"... doesn't suck - GM")
			}
			// 'mypos' for player position
			else if cht_check_cheat(&cheat_mypos, ev.data2) {
				buf := [52]i8{}
				m_snprintf(buf, sizeof(buf), c'ang=0x%x;x,y=(0x%x,0x%x)', players[consoleplayer].mo.angle,
					players[consoleplayer].mo.x, players[consoleplayer].mo.y)
				plyr.message = buf
			}
		}
		// 'clev' change-level cheat
		if !netgame && cht_check_cheat(&cheat_clev, ev.data2) {
			buf := [3]i8{}
			epsd := 0
			map_ := 0
			cht_get_param(&cheat_clev, buf)
			if gamemode == GameMode_t.commercial {
				epsd = 0
				map_ = (buf[0] - `0`) * 10 + buf[1] - `0`
			} else {
				epsd = buf[0] - `0`
				map_ = buf[1] - `0`
				// Chex.exe always warps to episode 1.
				if gameversion == GameVersion_t.exe_chex {
					if epsd > 1 {
						epsd = 1
					}
					if map_ > 5 {
						map_ = 5
					}
				}
			}
			// Catch invalid maps.
			if gamemode != GameMode_t.commercial {
				if epsd < 1 {
					return false
				}
				if epsd > 4 {
					return false
				}
				if epsd == 4 && gameversion < GameVersion_t.exe_ultimate {
					return false
				}
				if map_ < 1 {
					return false
				}
				if map_ > 9 {
					return false
				}
			} else {
				if map_ < 1 {
					return false
				}
				if map_ > 40 {
					return false
				}
			}
			// So be it.
			plyr.message = deh_string(c'Changing Level...')
			g_defered_init_new(gameskill, epsd, map_)
		}
	}
	return false
}

@[c: 'ST_calcPainOffset']
fn st_calc_pain_offset() int {
	health := 0
	lastcalc := 0
	oldhealth := -1
	health = if plyr.health > 100 { 100 } else { plyr.health }
	if health != oldhealth {
		lastcalc = (3 + 2 + 3) * (((100 - health) * 5) / 101)
		oldhealth = health
	}
	return lastcalc
}

//
// This is a not-very-pretty routine which handles
//  the face states and their timing.
// the precedence of expressions is:
//  dead > evil grin > turned head > straight ahead
//
@[c: 'ST_updateFaceWidget']
fn st_update_face_widget() {
	i := 0
	badguyangle := u32(0)
	diffang := u32(0)
	lastattackdown := -1
	priority := 0
	doevilgrin := false
	if priority < 10 {
		// dead
		if !plyr.health {
			priority = 9
			st_faceindex = ((5 * (3 + 2 + 3)) + 1)
			st_facecount = 1
		}
	}
	if priority < 9 {
		if plyr.bonuscount {
			// picking up bonus
			doevilgrin = false
			for i = 0; i < Weapontype_t.numweapons; i++ {
				if oldweaponsowned[i] != plyr.weaponowned[i] {
					doevilgrin = true
					oldweaponsowned[i] = plyr.weaponowned[i]
				}
			}
			if doevilgrin {
				// evil grin if just picked up weapon
				priority = 8
				st_facecount = (2 * 35)
				st_faceindex = st_calc_pain_offset() + (((3) + 2) + 1)
			}
		}
	}
	if priority < 8 {
		if plyr.damagecount && plyr.attacker && plyr.attacker != plyr.mo {
			// being attacked
			priority = 7
			if plyr.health - st_oldhealth > 20 {
				st_facecount = (1 * 35)
				st_faceindex = st_calc_pain_offset() + ((3) + 2)
			} else {
				badguyangle = r_point_to_angle2(plyr.mo.x, plyr.mo.y, plyr.attacker.x,
					plyr.attacker.y)
				if badguyangle > plyr.mo.angle {
					// whether right or left
					diffang = badguyangle - plyr.mo.angle
					i = diffang > 2147483648
				} else {
					// whether left or right
					diffang = plyr.mo.angle - badguyangle
					i = diffang <= 2147483648
				}
				// confusing, aint it?
				st_facecount = (1 * 35)
				st_faceindex = st_calc_pain_offset()
				if diffang < 536870912 {
					// head-on
					st_faceindex += ((((3) + 2) + 1) + 1)
				} else if i {
					// turn face right
					st_faceindex += (3)
				} else {
					// turn face left
					st_faceindex += (3) + 1
				}
			}
		}
	}
	if priority < 7 {
		// getting hurt because of your own damn stupidity
		if plyr.damagecount {
			if plyr.health - st_oldhealth > 20 {
				priority = 7
				st_facecount = (1 * 35)
				st_faceindex = st_calc_pain_offset() + ((3) + 2)
			} else {
				priority = 6
				st_facecount = (1 * 35)
				st_faceindex = st_calc_pain_offset() + ((((3) + 2) + 1) + 1)
			}
		}
	}
	if priority < 6 {
		// rapid firing
		if plyr.attackdown {
			if lastattackdown == -1 {
				lastattackdown = (2 * 35)
			} else if !lastattackdown--$ {
				priority = 5
				st_faceindex = st_calc_pain_offset() + ((((3) + 2) + 1) + 1)
				st_facecount = 1
				lastattackdown = 1
			}
		} else { // 3
			lastattackdown = -1
		}
	}
	if priority < 5 {
		// invulnerability
		if plyr.cheats & Cheat_t.cf_godmode || plyr.powers[int(Powertype_t.pw_invulnerability)] {
			priority = 4
			st_faceindex = (5 * (3 + 2 + 3))
			st_facecount = 1
		}
	}
	// look left or look right if the facecount has timed out
	if !st_facecount {
		st_faceindex = st_calc_pain_offset() + (st_randomnumber % 3)
		st_facecount = (35 / 2)
		priority = 0
	}
	st_facecount--
}

@[c: 'ST_updateWidgets']
fn st_update_widgets() {
	largeammo := 1994
	// means "n/a"
	i := 0
	// must redirect the pointer if the ready weapon has changed.
	//  if (w_ready.data != plyr->readyweapon)
	//  {
	if weaponinfo[plyr.readyweapon].ammo == Ammotype_t.am_noammo {
		w_ready.num = &largeammo
	} else { // 3
		w_ready.num = &plyr.ammo[weaponinfo[plyr.readyweapon].ammo]
	}
	//{
	// static int tic=0;
	// static int dir=-1;
	// if (!(tic&15))
	//   plyr->ammo[weaponinfo[plyr->readyweapon].ammo]+=dir;
	// if (plyr->ammo[weaponinfo[plyr->readyweapon].ammo] == -100)
	//   dir = 1;
	// tic++;
	// }
	w_ready.data = plyr.readyweapon
	// if (*w_ready.on)
	//  STlib_updateNum(&w_ready, true);
	// refresh weapon change
	//  }
	// update keycard multiple widgets
	for i = 0; i < 3; i++ {
		keyboxes[i] = if plyr.cards[i] { i } else { -1 }
		if plyr.cards[i + 3] {
			keyboxes[i] = i + 3
		}
	}
	// refresh everything if this is him coming back to life
	st_update_face_widget()
	// used by the w_armsbg widget
	st_notdeathmatch = !deathmatch
	// used by w_arms[] widgets
	st_armson = st_statusbaron && !deathmatch
	// used by w_frags widget
	st_fragson = deathmatch && st_statusbaron
	st_fragscount = 0
	for i = 0; i < 4; i++ {
		if i != consoleplayer {
			st_fragscount += plyr.frags[i]
		} else { // 3
			st_fragscount -= plyr.frags[i]
		}
	}
	// get rid of chat window if up because of message
	if !st_msgcounter--$ {
		st_chat = st_oldchat
	}
}

@[c: 'ST_Ticker']
fn st_ticker() {
	st_clock++
	st_randomnumber = m_random()
	st_update_widgets()
	st_oldhealth = plyr.health
}

@[c: 'ST_doPaletteStuff']
fn st_do_palette_stuff() {
	palette := 0
	pal := &u8(0)
	cnt := 0
	bzc := 0
	cnt = plyr.damagecount
	if plyr.powers[int(Powertype_t.pw_strength)] {
		// slowly fade the berzerk out
		bzc = 12 - (plyr.powers[int(Powertype_t.pw_strength)] >> 6)
		if bzc > cnt {
			cnt = bzc
		}
	}
	if cnt {
		palette = (cnt + 7) >> 3
		if palette >= 8 {
			palette = 8 - 1
		}
		palette += 1
	} else if plyr.bonuscount {
		palette = (plyr.bonuscount + 7) >> 3
		if palette >= 4 {
			palette = 4 - 1
		}
		palette += 9
	} else if plyr.powers[int(Powertype_t.pw_ironfeet)] > 4 * 32
		|| plyr.powers[int(Powertype_t.pw_ironfeet)] & 8 {
		palette = 13
	} else { // 3
		palette = 0
	}
	// In Chex Quest, the player never sees red.  Instead, the
	// radiation suit palette is used to tint the screen green,
	// as though the player is being covered in goo by an
	// attacking flemoid.
	if gameversion == GameVersion_t.exe_chex && palette >= 1 && palette < 1 + 8 {
		palette = 13
	}
	if palette != st_palette {
		st_palette = palette
		pal = &u8(w_cache_lump_num(lu_palette, 8)) + palette * 768
		i_set_palette(pal)
	}
}

@[c: 'ST_drawWidgets']
fn st_draw_widgets(refresh bool) {
	i := 0
	// used by w_arms[] widgets
	st_armson = st_statusbaron && !deathmatch
	// used by w_frags widget
	st_fragson = deathmatch && st_statusbaron
	st_lib_update_num(&w_ready, refresh)
	for i = 0; i < 4; i++ {
		st_lib_update_num(&w_ammo[i], refresh)
		st_lib_update_num(&w_maxammo[i], refresh)
	}
	st_lib_update_percent(&w_health, refresh)
	st_lib_update_percent(&w_armor, refresh)
	st_lib_update_bin_icon(&w_armsbg, refresh)
	for i = 0; i < 6; i++ {
		st_lib_update_mult_icon(&w_arms[i], refresh)
	}
	st_lib_update_mult_icon(&w_faces, refresh)
	for i = 0; i < 3; i++ {
		st_lib_update_mult_icon(&w_keyboxes[i], refresh)
	}
	st_lib_update_num(&w_frags, refresh)
}

@[c: 'ST_doRefresh']
fn st_do_refresh() {
	st_firsttime = false
	// draw status bar background to off-screen buff
	st_refresh_background()
	// and refresh all widgets
	st_draw_widgets(true)
}

@[c: 'ST_diffDraw']
fn st_diff_draw() {
	// update all widgets
	st_draw_widgets(false)
}

@[c: 'ST_Drawer']
fn st_drawer(fullscreen bool, refresh bool) {
	st_statusbaron = (!fullscreen) || automapactive
	st_firsttime = st_firsttime || refresh
	// Do red-/gold-shifts from damage/items
	st_do_palette_stuff()
	// If just after ST_Start(), refresh all
	if st_firsttime {
		st_do_refresh()
	}
	// Otherwise, update as little as possible
	else { // 3
		st_diff_draw()
	}
}

// Iterates through all graphics to be loaded or unloaded, along with
// the variable they use, invoking the specified callback function.
@[c: 'ST_loadUnloadGraphics']
fn st_load_unload_graphics(callback Load_callback_t) {
	i := 0
	j := 0
	facenum := 0
	namebuf := [9]i8{}
	// Load the numbers, tall and short
	for i = 0; i < 10; i++ {
		deh_snprintf(namebuf, 9, c'STTNUM%d', i)
		callback(namebuf, &tallnum[i])
		deh_snprintf(namebuf, 9, c'STYSNUM%d', i)
		callback(namebuf, &shortnum[i])
	}
	// Load percent key.
	// Note: why not load STMINUS here, too?
	callback(deh_string(c'STTPRCNT'), &tallpercent)
	// key cards
	for i = 0; i < Card_t.numcards; i++ {
		deh_snprintf(namebuf, 9, c'STKEYS%d', i)
		callback(namebuf, &keys[i])
	}
	// arms background
	callback(deh_string(c'STARMS'), &armsbg)
	// arms ownership widgets
	for i = 0; i < 6; i++ {
		deh_snprintf(namebuf, 9, c'STGNUM%d', i + 2)
		// gray #
		callback(namebuf, &arms[i][0])
		// yellow #
		arms[i][1] = shortnum[i + 2]
	}
	// face backgrounds for different color players
	deh_snprintf(namebuf, 9, c'STFB%d', consoleplayer)
	callback(namebuf, &faceback)
	// status bar background bits
	if w_check_num_for_name(c'STBAR') >= 0 {
		callback(deh_string(c'STBAR'), &sbar)
		sbarr = (unsafe { nil })
	} else {
		callback(deh_string(c'STMBARL'), &sbar)
		callback(deh_string(c'STMBARR'), &sbarr)
	}
	// face states
	facenum = 0
	for i = 0; i < 5; i++ {
		for j = 0; j < 3; j++ {
			deh_snprintf(namebuf, 9, c'STFST%d%d', i, j)
			callback(namebuf, &faces[facenum])
			facenum++$
		}
		deh_snprintf(namebuf, 9, c'STFTR%d0', i)
		// turn right
		callback(namebuf, &faces[facenum])
		facenum++$
		deh_snprintf(namebuf, 9, c'STFTL%d0', i)
		// turn left
		callback(namebuf, &faces[facenum])
		facenum++$
		deh_snprintf(namebuf, 9, c'STFOUCH%d', i)
		// ouch!
		callback(namebuf, &faces[facenum])
		facenum++$
		deh_snprintf(namebuf, 9, c'STFEVL%d', i)
		// evil grin ;)
		callback(namebuf, &faces[facenum])
		facenum++$
		deh_snprintf(namebuf, 9, c'STFKILL%d', i)
		// pissed off
		callback(namebuf, &faces[facenum])
		facenum++$
	}
	callback(deh_string(c'STFGOD0'), &faces[facenum])
	facenum++$
	callback(deh_string(c'STFDEAD0'), &faces[facenum])
	facenum++$
}

@[c: 'ST_loadCallback']
fn st_load_callback(lumpname &i8, variable &&Patch_t) {
	*variable = w_cache_lump_name(lumpname, 1)
}

@[c: 'ST_loadGraphics']
fn st_load_graphics() {
	st_load_unload_graphics(st_load_callback)
}

@[c: 'ST_loadData']
fn st_load_data() {
	lu_palette = w_get_num_for_name(deh_string(c'PLAYPAL'))
	st_load_graphics()
}

@[c: 'ST_unloadCallback']
fn st_unload_callback(lumpname &i8, variable &&Patch_t) {
	w_release_lump_name(lumpname)
	*variable = (unsafe { nil })
}

@[c: 'ST_unloadGraphics']
fn st_unload_graphics() {
	st_load_unload_graphics(st_unload_callback)
}

@[c: 'ST_unloadData']
fn st_unload_data() {
	st_unload_graphics()
}

@[c: 'ST_initData']
fn st_init_data() {
	i := 0
	st_firsttime = true
	plyr = &players[consoleplayer]
	st_clock = 0
	st_chatstate = St_chatstateenum_t.start_chat_state
	st_gamestate = St_stateenum_t.first_person_state
	st_statusbaron = true
	st_oldchat = false
	st_chat = st_oldchat
	st_cursoron = false
	st_faceindex = 0
	st_palette = -1
	st_oldhealth = -1
	for i = 0; i < Weapontype_t.numweapons; i++ {
		oldweaponsowned[i] = plyr.weaponowned[i]
	}
	for i = 0; i < 3; i++ {
		keyboxes[i] = -1
	}
	st_lib_init()
}

@[c: 'ST_createWidgets']
fn st_create_widgets() {
	i := 0
	// ready weapon ammo
	st_lib_init_num(&w_ready, 44, 171, tallnum, &plyr.ammo[weaponinfo[plyr.readyweapon].ammo],
		&st_statusbaron, 3)
	// the last weapon type
	w_ready.data = plyr.readyweapon
	// health percentage
	st_lib_init_percent(&w_health, 90, 171, tallnum, &plyr.health, &st_statusbaron, tallpercent)
	// arms background
	st_lib_init_bin_icon(&w_armsbg, 104, 168, armsbg, &st_notdeathmatch, &st_statusbaron)
	// weapons owned
	for i = 0; i < 6; i++ {
		st_lib_init_mult_icon(&w_arms[i], 111 + (i % 3) * 12, 172 + (i / 3) * 10, arms[i],
			&plyr.weaponowned[i + 1], &st_armson)
	}
	// frags sum
	st_lib_init_num(&w_frags, 138, 171, tallnum, &st_fragscount, &st_fragson, 2)
	// faces
	st_lib_init_mult_icon(&w_faces, 143, 168, faces, &st_faceindex, &st_statusbaron)
	// armor percentage - should be colored later
	st_lib_init_percent(&w_armor, 221, 171, tallnum, &plyr.armorpoints, &st_statusbaron,
		tallpercent)
	// keyboxes 0-2
	st_lib_init_mult_icon(&w_keyboxes[0], 239, 171, keys, &keyboxes[0], &st_statusbaron)
	st_lib_init_mult_icon(&w_keyboxes[1], 239, 181, keys, &keyboxes[1], &st_statusbaron)
	st_lib_init_mult_icon(&w_keyboxes[2], 239, 191, keys, &keyboxes[2], &st_statusbaron)
	// ammo count (all four kinds)
	st_lib_init_num(&w_ammo[0], 288, 173, shortnum, &plyr.ammo[0], &st_statusbaron, 3)
	st_lib_init_num(&w_ammo[1], 288, 179, shortnum, &plyr.ammo[1], &st_statusbaron, 3)
	st_lib_init_num(&w_ammo[2], 288, 191, shortnum, &plyr.ammo[2], &st_statusbaron, 3)
	st_lib_init_num(&w_ammo[3], 288, 185, shortnum, &plyr.ammo[3], &st_statusbaron, 3)
	// max ammo count (all four kinds)
	st_lib_init_num(&w_maxammo[0], 314, 173, shortnum, &plyr.maxammo[0], &st_statusbaron,
		3)
	st_lib_init_num(&w_maxammo[1], 314, 179, shortnum, &plyr.maxammo[1], &st_statusbaron,
		3)
	st_lib_init_num(&w_maxammo[2], 314, 191, shortnum, &plyr.maxammo[2], &st_statusbaron,
		3)
	st_lib_init_num(&w_maxammo[3], 314, 185, shortnum, &plyr.maxammo[3], &st_statusbaron,
		3)
}

@[c: 'ST_Start']
fn st_start() {
	if !st_stopped {
		st_stop()
	}
	st_init_data()
	st_create_widgets()
	st_stopped = false
}

@[c: 'ST_Stop']
fn st_stop() {
	if st_stopped {
		return
	}
	i_set_palette(w_cache_lump_num(lu_palette, 8))
	st_stopped = true
}

@[c: 'ST_Init']
fn st_init() {
	st_load_data()
	st_backing_screen = &Pixel_t(z_malloc(320 * 32 * sizeof(*st_backing_screen), 1, 0))
}
