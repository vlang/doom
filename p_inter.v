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
//	Fixed point arithemtics, implementation.
//
//
// Fixed point, 32bit as 16.16.
//
@[c: 'FixedMul']
fn fixed_mul(a int, b int) int

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
// skipping global dup "menuactive"
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
// skipping global dup "leveltime"
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
// skipping global dup "mouseSensitivity"
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
//
//
// Returns a number from 0 to 255,
// from a lookup table.
// As M_Random, but used only by the play simulation.
@[c: 'P_Random']
fn p_random() int

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

@[c: 'I_Tactile']
fn i_tactile(on int, off int, total int)

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
//	Cheat code checking.
//
//
// CHEAT SEQUENCE PACKAGE
//
// declaring a cheat
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
@[c: 'AM_Stop']
fn am_stop()

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
// extern fixed_t		finetangent[FINEANGLES/2];
// skipping global dup "rw_distance"
// skipping global dup "rw_normalangle"
// angle to line origin
// skipping global dup "rw_angle1"
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
@[c: 'P_DropWeapon']
fn p_drop_weapon(player &Player_t)

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
@[c: 'P_SpawnMobj']
fn p_spawn_mobj(x int, y int, z int, type_ Mobjtype_t) &Mobj_t

@[c: 'P_RemoveMobj']
fn p_remove_mobj(th &Mobj_t)

@[c: 'P_SetMobjState']
fn p_set_mobj_state(mobj &Mobj_t, state Statenum_t) bool

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
// skipped extern global maxammo
// skipped extern global clipammo
@[c: 'P_TouchSpecialThing']
fn p_touch_special_thing(special &Mobj_t, toucher &Mobj_t)

@[c: 'P_DamageMobj']
fn p_damage_mobj(target &Mobj_t, inflictor &Mobj_t, source &Mobj_t, damage int)

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
//	Handling interactions (i.e., collisions).
//
// Data.
// a weapon is found with two clip loads,
// a big item has five clip loads
//
// GET STUFF
//
//
// P_GiveAmmo
// Num is the number of clip loads,
// not the individual count (0= 1/2 clip).
// Returns false if the ammo can't be picked up at all
//
@[c: 'P_GiveAmmo']
fn p_give_ammo(player &Player_t, ammo Ammotype_t, num int) bool {
	oldammo := 0
	if ammo == Ammotype_t.am_noammo {
		return false
	}
	if ammo > Ammotype_t.numammo {
		i_error(c'P_GiveAmmo: bad type %i', ammo)
	}
	if player.ammo[ammo] == player.maxammo[ammo] {
		return false
	}
	if num {
		num *= clipammo[ammo]
	} else { // 3
		num = clipammo[ammo] / 2
	}
	if gameskill == Skill_t.sk_baby || gameskill == Skill_t.sk_nightmare {
		// give double ammo in trainer mode,
		// you'll need in nightmare
		num <<= 1
	}
	oldammo = player.ammo[ammo]
	player.ammo[ammo] += num
	if player.ammo[ammo] > player.maxammo[ammo] {
		player.ammo[ammo] = player.maxammo[ammo]
	}
	// If non zero ammo,
	// don't change up weapons,
	// player was lower on purpose.
	if oldammo {
		return true
	}
	// We were down to zero,
	// so select a new weapon.
	// Preferences are not user selectable.
	match ammo {
		.am_clip { // case comp body kind=IfStmt is_enum=true
			if player.readyweapon == Weapontype_t.wp_fist {
				if player.weaponowned[int(Weapontype_t.wp_chaingun)] {
					player.pendingweapon = Weapontype_t.wp_chaingun
				} else { // 3
					player.pendingweapon = Weapontype_t.wp_pistol
				}
			}
		}
		.am_shell { // case comp body kind=IfStmt is_enum=true
			if player.readyweapon == Weapontype_t.wp_fist
				|| player.readyweapon == Weapontype_t.wp_pistol {
				if player.weaponowned[int(Weapontype_t.wp_shotgun)] {
					player.pendingweapon = Weapontype_t.wp_shotgun
				}
			}
		}
		.am_cell { // case comp body kind=IfStmt is_enum=true
			if player.readyweapon == Weapontype_t.wp_fist
				|| player.readyweapon == Weapontype_t.wp_pistol {
				if player.weaponowned[int(Weapontype_t.wp_plasma)] {
					player.pendingweapon = Weapontype_t.wp_plasma
				}
			}
		}
		.am_misl { // case comp body kind=IfStmt is_enum=true
			if player.readyweapon == Weapontype_t.wp_fist {
				if player.weaponowned[int(Weapontype_t.wp_missile)] {
					player.pendingweapon = Weapontype_t.wp_missile
				}
			}
		}
		else {}
	}
	return true
}

//
// P_GiveWeapon
// The weapon name may have a MF_DROPPED flag ored in.
//
@[c: 'P_GiveWeapon']
fn p_give_weapon(player &Player_t, weapon Weapontype_t, dropped bool) bool {
	gaveammo := false
	gaveweapon := false
	if netgame && deathmatch != 2 && !dropped {
		// leave placed weapons forever on net games
		if player.weaponowned[weapon] {
			return false
		}
		player.bonuscount += 6
		player.weaponowned[weapon] = true
		if deathmatch {
			p_give_ammo(player, weaponinfo[weapon].ammo, 5)
		} else { // 3
			p_give_ammo(player, weaponinfo[weapon].ammo, 2)
		}
		player.pendingweapon = weapon
		if player == &players[consoleplayer] {
			s_start_sound((unsafe { nil }), Sfxenum_t.sfx_wpnup)
		}
		return false
	}
	if weaponinfo[weapon].ammo != Ammotype_t.am_noammo {
		// give one clip with a dropped weapon,
		// two clips with a found weapon
		if dropped {
			gaveammo = p_give_ammo(player, weaponinfo[weapon].ammo, 1)
		} else { // 3
			gaveammo = p_give_ammo(player, weaponinfo[weapon].ammo, 2)
		}
	} else { // 3
		gaveammo = false
	}
	if player.weaponowned[weapon] {
		gaveweapon = false
	} else {
		gaveweapon = true
		player.weaponowned[weapon] = true
		player.pendingweapon = weapon
	}
	return gaveweapon || gaveammo
}

//
// P_GiveBody
// Returns false if the body isn't needed at all
//
@[c: 'P_GiveBody']
fn p_give_body(player &Player_t, num int) bool {
	if player.health >= 100 {
		return false
	}
	player.health += num
	if player.health > 100 {
		player.health = 100
	}
	player.mo.health = player.health
	return true
}

//
// P_GiveArmor
// Returns false if the armor is worse
// than the current armor.
//
@[c: 'P_GiveArmor']
fn p_give_armor(player &Player_t, armortype int) bool {
	hits := 0
	hits = armortype * 100
	if player.armorpoints >= hits {
		return false
	}
	// don't pick up
	player.armortype = armortype
	player.armorpoints = hits
	return true
}

//
// P_GiveCard
//
@[c: 'P_GiveCard']
fn p_give_card(player &Player_t, card Card_t) {
	if player.cards[card] {
		return
	}
	player.bonuscount = 6
	player.cards[card] = 1
}

//
// P_GivePower
//
@[c: 'P_GivePower']
fn p_give_power(player &Player_t, power int) bool {
	if power == Powertype_t.pw_invulnerability {
		player.powers[power] = Powerduration_t.invulntics
		return true
	}
	if power == Powertype_t.pw_invisibility {
		player.powers[power] = Powerduration_t.invistics
		player.mo.flags |= Mobjflag_t.mf_shadow
		return true
	}
	if power == Powertype_t.pw_infrared {
		player.powers[power] = Powerduration_t.infratics
		return true
	}
	if power == Powertype_t.pw_ironfeet {
		player.powers[power] = Powerduration_t.irontics
		return true
	}
	if power == Powertype_t.pw_strength {
		p_give_body(player, 100)
		player.powers[power] = 1
		return true
	}
	if player.powers[power] {
		return false
	}
	// already got it
	player.powers[power] = 1
	return true
}

//
// P_TouchSpecialThing
//
@[c: 'P_TouchSpecialThing']
fn p_touch_special_thing(special &Mobj_t, toucher &Mobj_t) {
	player := &Player_t(0)
	i := 0
	delta := 0
	sound := Sfxenum_t.sfx_itemup
	delta = special.z - toucher.z
	if delta > toucher.height || delta < -8 * (1 << 16) {
		// out of reach
		return
	}
	// sound = sfx_itemup;	
	player = toucher.player
	// Dead thing touching.
	// Can happen with a sliding player corpse.
	if toucher.health <= 0 {
		return
	}
	// Identify by sprite.
	match special.sprite {
		// armor
		.spr_arm_1 { // case comp body kind=IfStmt is_enum=true
			if !p_give_armor(player, deh_green_armor_class) {
				return
			}
			player.message = deh_string(c'Picked up the armor.')
		}
		.spr_arm_2 { // case comp body kind=IfStmt is_enum=true
			if !p_give_armor(player, deh_blue_armor_class) {
				return
			}
			player.message = deh_string(c'Picked up the MegaArmor!')

			// bonus items
		}
		.spr_bon_1 { // case comp body kind=UnaryOperator is_enum=true
			player.health++
			// can go over 100%
			if player.health > deh_max_health {
				player.health = deh_max_health
			}
			player.mo.health = player.health
			player.message = deh_string(c'Picked up a health bonus.')
		}
		.spr_bon_2 { // case comp body kind=UnaryOperator is_enum=true
			player.armorpoints++
			// can go over 100%
			if player.armorpoints > deh_max_armor && gameversion > GameVersion_t.exe_doom_1_2 {
				player.armorpoints = deh_max_armor
			}
			// deh_green_armor_class only applies to the green armor shirt;
			// for the armor helmets, armortype 1 is always used.
			if !player.armortype {
				player.armortype = 1
			}
			player.message = deh_string(c'Picked up an armor bonus.')
		}
		.spr_soul { // case comp body kind=CompoundAssignOperator is_enum=true
			player.health += deh_soulsphere_health
			if player.health > deh_max_soulsphere {
				player.health = deh_max_soulsphere
			}
			player.mo.health = player.health
			player.message = deh_string(c'Supercharge!')
			if gameversion > GameVersion_t.exe_doom_1_2 {
				sound = Sfxenum_t.sfx_getpow
			}
		}
		.spr_mega { // case comp body kind=IfStmt is_enum=true
			if gamemode != GameMode_t.commercial {
				return
			}
			player.health = deh_megasphere_health
			player.mo.health = player.health
			// We always give armor type 2 for the megasphere; dehacked only
			// affects the MegaArmor.
			p_give_armor(player, 2)
			player.message = deh_string(c'MegaSphere!')
			if gameversion > GameVersion_t.exe_doom_1_2 {
				sound = Sfxenum_t.sfx_getpow
			}

			// cards
			// leave cards for everyone
		}
		.spr_bkey { // case comp body kind=IfStmt is_enum=true
			if !player.cards[int(Card_t.it_bluecard)] {
				player.message = deh_string(c'Picked up a blue keycard.')
			}
			p_give_card(player, Card_t.it_bluecard)
			if !netgame {
			}
			return
		}
		.spr_ykey { // case comp body kind=IfStmt is_enum=true
			if !player.cards[int(Card_t.it_yellowcard)] {
				player.message = deh_string(c'Picked up a yellow keycard.')
			}
			p_give_card(player, Card_t.it_yellowcard)
			if !netgame {
			}
			return
		}
		.spr_rkey { // case comp body kind=IfStmt is_enum=true
			if !player.cards[int(Card_t.it_redcard)] {
				player.message = deh_string(c'Picked up a red keycard.')
			}
			p_give_card(player, Card_t.it_redcard)
			if !netgame {
			}
			return
		}
		.spr_bsku { // case comp body kind=IfStmt is_enum=true
			if !player.cards[int(Card_t.it_blueskull)] {
				player.message = deh_string(c'Picked up a blue skull key.')
			}
			p_give_card(player, Card_t.it_blueskull)
			if !netgame {
			}
			return
		}
		.spr_ysku { // case comp body kind=IfStmt is_enum=true
			if !player.cards[int(Card_t.it_yellowskull)] {
				player.message = deh_string(c'Picked up a yellow skull key.')
			}
			p_give_card(player, Card_t.it_yellowskull)
			if !netgame {
			}
			return
		}
		.spr_rsku { // case comp body kind=IfStmt is_enum=true
			if !player.cards[int(Card_t.it_redskull)] {
				player.message = deh_string(c'Picked up a red skull key.')
			}
			p_give_card(player, Card_t.it_redskull)
			if !netgame {
			}
			return
		}
		.spr_stim { // case comp body kind=IfStmt is_enum=true
			if !p_give_body(player, 10) {
				return
			}
			player.message = deh_string(c'Picked up a stimpack.')
		}
		.spr_medi { // case comp body kind=IfStmt is_enum=true
			if !p_give_body(player, 25) {
				return
			}
			if player.health < 25 {
				player.message = deh_string(c'Picked up a medikit that you REALLY need!')
			} else { // 3
				player.message = deh_string(c'Picked up a medikit.')
			}

			// power ups
		}
		.spr_pinv { // case comp body kind=IfStmt is_enum=true
			if !p_give_power(player, Powertype_t.pw_invulnerability) {
				return
			}
			player.message = deh_string(c'Invulnerability!')
			if gameversion > GameVersion_t.exe_doom_1_2 {
				sound = Sfxenum_t.sfx_getpow
			}
		}
		.spr_pstr { // case comp body kind=IfStmt is_enum=true
			if !p_give_power(player, Powertype_t.pw_strength) {
				return
			}
			player.message = deh_string(c'Berserk!')
			if player.readyweapon != Weapontype_t.wp_fist {
				player.pendingweapon = Weapontype_t.wp_fist
			}
			if gameversion > GameVersion_t.exe_doom_1_2 {
				sound = Sfxenum_t.sfx_getpow
			}
		}
		.spr_pins { // case comp body kind=IfStmt is_enum=true
			if !p_give_power(player, Powertype_t.pw_invisibility) {
				return
			}
			player.message = deh_string(c'Partial Invisibility')
			if gameversion > GameVersion_t.exe_doom_1_2 {
				sound = Sfxenum_t.sfx_getpow
			}
		}
		.spr_suit { // case comp body kind=IfStmt is_enum=true
			if !p_give_power(player, Powertype_t.pw_ironfeet) {
				return
			}
			player.message = deh_string(c'Radiation Shielding Suit')
			if gameversion > GameVersion_t.exe_doom_1_2 {
				sound = Sfxenum_t.sfx_getpow
			}
		}
		.spr_pmap { // case comp body kind=IfStmt is_enum=true
			if !p_give_power(player, Powertype_t.pw_allmap) {
				return
			}
			player.message = deh_string(c'Computer Area Map')
			if gameversion > GameVersion_t.exe_doom_1_2 {
				sound = Sfxenum_t.sfx_getpow
			}
		}
		.spr_pvis { // case comp body kind=IfStmt is_enum=true
			if !p_give_power(player, Powertype_t.pw_infrared) {
				return
			}
			player.message = deh_string(c'Light Amplification Visor')
			if gameversion > GameVersion_t.exe_doom_1_2 {
				sound = Sfxenum_t.sfx_getpow
			}

			// ammo
		}
		.spr_clip { // case comp body kind=IfStmt is_enum=true
			if special.flags & int(Mobjflag_t.mf_dropped) {
				if !p_give_ammo(player, Ammotype_t.am_clip, 0) {
					return
				}
			} else {
				if !p_give_ammo(player, Ammotype_t.am_clip, 1) {
					return
				}
			}
			player.message = deh_string(c'Picked up a clip.')
		}
		.spr_ammo { // case comp body kind=IfStmt is_enum=true
			if !p_give_ammo(player, Ammotype_t.am_clip, 5) {
				return
			}
			player.message = deh_string(c'Picked up a box of bullets.')
		}
		.spr_rock { // case comp body kind=IfStmt is_enum=true
			if !p_give_ammo(player, Ammotype_t.am_misl, 1) {
				return
			}
			player.message = deh_string(c'Picked up a rocket.')
		}
		.spr_brok { // case comp body kind=IfStmt is_enum=true
			if !p_give_ammo(player, Ammotype_t.am_misl, 5) {
				return
			}
			player.message = deh_string(c'Picked up a box of rockets.')
		}
		.spr_cell { // case comp body kind=IfStmt is_enum=true
			if !p_give_ammo(player, Ammotype_t.am_cell, 1) {
				return
			}
			player.message = deh_string(c'Picked up an energy cell.')
		}
		.spr_celp { // case comp body kind=IfStmt is_enum=true
			if !p_give_ammo(player, Ammotype_t.am_cell, 5) {
				return
			}
			player.message = deh_string(c'Picked up an energy cell pack.')
		}
		.spr_shel { // case comp body kind=IfStmt is_enum=true
			if !p_give_ammo(player, Ammotype_t.am_shell, 1) {
				return
			}
			player.message = deh_string(c'Picked up 4 shotgun shells.')
		}
		.spr_sbox { // case comp body kind=IfStmt is_enum=true
			if !p_give_ammo(player, Ammotype_t.am_shell, 5) {
				return
			}
			player.message = deh_string(c'Picked up a box of shotgun shells.')
		}
		.spr_bpak { // case comp body kind=IfStmt is_enum=true
			if !player.backpack {
				for i = 0; i < Ammotype_t.numammo; i++ {
					player.maxammo[i] *= 2
				}
				player.backpack = true
			}
			for i = 0; i < Ammotype_t.numammo; i++ {
				p_give_ammo(player, i, 1)
			}
			player.message = deh_string(c'Picked up a backpack full of ammo!')

			// weapons
		}
		.spr_bfug { // case comp body kind=IfStmt is_enum=true
			if !p_give_weapon(player, Weapontype_t.wp_bfg, false) {
				return
			}
			player.message = deh_string(c'You got the BFG9000!  Oh, yes.')
			sound = Sfxenum_t.sfx_wpnup
		}
		.spr_mgun { // case comp body kind=IfStmt is_enum=true
			if !p_give_weapon(player, Weapontype_t.wp_chaingun, (special.flags & int(Mobjflag_t.mf_dropped)) != 0) {
				return
			}
			player.message = deh_string(c'You got the chaingun!')
			sound = Sfxenum_t.sfx_wpnup
		}
		.spr_csaw { // case comp body kind=IfStmt is_enum=true
			if !p_give_weapon(player, Weapontype_t.wp_chainsaw, false) {
				return
			}
			player.message = deh_string(c'A chainsaw!  Find some meat!')
			sound = Sfxenum_t.sfx_wpnup
		}
		.spr_laun { // case comp body kind=IfStmt is_enum=true
			if !p_give_weapon(player, Weapontype_t.wp_missile, false) {
				return
			}
			player.message = deh_string(c'You got the rocket launcher!')
			sound = Sfxenum_t.sfx_wpnup
		}
		.spr_plas { // case comp body kind=IfStmt is_enum=true
			if !p_give_weapon(player, Weapontype_t.wp_plasma, false) {
				return
			}
			player.message = deh_string(c'You got the plasma gun!')
			sound = Sfxenum_t.sfx_wpnup
		}
		.spr_shot { // case comp body kind=IfStmt is_enum=true
			if !p_give_weapon(player, Weapontype_t.wp_shotgun, (special.flags & int(Mobjflag_t.mf_dropped)) != 0) {
				return
			}
			player.message = deh_string(c'You got the shotgun!')
			sound = Sfxenum_t.sfx_wpnup
		}
		.spr_sgn_2 { // case comp body kind=IfStmt is_enum=true
			if !p_give_weapon(player, Weapontype_t.wp_supershotgun, (special.flags & int(Mobjflag_t.mf_dropped)) != 0) {
				return
			}
			player.message = deh_string(c'You got the super shotgun!')
			sound = Sfxenum_t.sfx_wpnup
		}
		else {
			i_error(c'P_SpecialThing: Unknown gettable thing')
		}
	}
	if special.flags & Mobjflag_t.mf_countitem {
		player.itemcount++
	}
	p_remove_mobj(special)
	player.bonuscount += 6
	if player == &players[consoleplayer] {
		s_start_sound((unsafe { nil }), sound)
	}
}

//
// KillMobj
//
@[c: 'P_KillMobj']
fn p_kill_mobj(source &Mobj_t, target &Mobj_t) {
	item := Mobjtype_t{}
	mo := &Mobj_t(0)
	target.flags &= ~(Mobjflag_t.mf_shootable | Mobjflag_t.mf_float | Mobjflag_t.mf_skullfly)
	if target.type_ != Mobjtype_t.mt_skull {
		target.flags &= ~Mobjflag_t.mf_nogravity
	}
	target.flags |= int(Mobjflag_t.mf_corpse) | int(Mobjflag_t.mf_dropoff)
	target.height >>= 2
	if source && source.player {
		// count for intermission
		if target.flags & Mobjflag_t.mf_countkill {
			source.player.killcount++
		}
		if target.player {
			source.player.frags[target.player - players]++
		}
	} else if !netgame && target.flags & Mobjflag_t.mf_countkill {
		// count all monster deaths,
		// even those caused by other monsters
		players[0].killcount++
	}
	if target.player {
		// count environment kills against you
		if !source {
			target.player.frags[target.player - players]++
		}
		target.flags &= ~Mobjflag_t.mf_solid
		target.player.playerstate = Playerstate_t.pst_dead
		p_drop_weapon(target.player)
		if target.player == &players[consoleplayer] && automapactive {
			// don't die in auto map,
			// switch view prior to dying
			am_stop()
		}
	}
	if target.health < -target.info.spawnhealth && target.info.xdeathstate {
		p_set_mobj_state(target, target.info.xdeathstate)
	} else { // 3
		p_set_mobj_state(target, target.info.deathstate)
	}
	target.tics -= p_random() & 3
	if target.tics < 1 {
		target.tics = 1
	}
	//	I_StartSound (&actor->r, actor->info->deathsound);
	// In Chex Quest, monsters don't drop items.
	if gameversion == GameVersion_t.exe_chex {
		return
	}
	// Drop stuff.
	// This determines the kind of object spawned
	// during the death frame of a thing.
	match target.type_ {
		.mt_wolfss, .mt_possessed {
			item = Mobjtype_t.mt_clip
		}
		.mt_shotguy { // case comp body kind=BinaryOperator is_enum=true
			item = Mobjtype_t.mt_shotgun
		}
		.mt_chainguy { // case comp body kind=BinaryOperator is_enum=true
			item = Mobjtype_t.mt_chaingun
		}
		else {
			return
		}
	}
	mo = p_spawn_mobj(target.x, target.y, (-2147483647 - 1), item)
	mo.flags |= int(Mobjflag_t.mf_dropped)
	// special versions of items
}

//
// P_DamageMobj
// Damages both enemies and players
// "inflictor" is the thing that caused the damage
//  creature or missile, can be NULL (slime, etc)
// "source" is the thing to target after taking damage
//  creature or NULL
// Source and inflictor are the same for melee attacks.
// Source can be NULL for slime, barrel explosions
// and other environmental stuff.
//
@[c: 'P_DamageMobj']
fn p_damage_mobj(target &Mobj_t, inflictor &Mobj_t, source &Mobj_t, damage int) {
	ang := u32(0)
	saved := 0
	player := &Player_t(0)
	thrust := 0
	temp := 0
	if !(target.flags & Mobjflag_t.mf_shootable) {
		return
	}
	// shouldn't happen...
	if target.health <= 0 {
		return
	}
	if target.flags & Mobjflag_t.mf_skullfly {
		target.momx = 0
		target.momy = 0
		target.momz = target.momy
	}
	player = target.player
	if player && gameskill == Skill_t.sk_baby {
		damage >>= 1
	}
	// take half damage in trainer mode
	// Some close combat weapons should not
	// inflict thrust and push the victim out of reach,
	// thus kick away unless using the chainsaw.
	if inflictor && !(target.flags & Mobjflag_t.mf_noclip)
		&& (!source || !source.player || source.player.readyweapon != Weapontype_t.wp_chainsaw) {
		ang = r_point_to_angle2(inflictor.x, inflictor.y, target.x, target.y)
		thrust = damage * ((1 << 16) >> 3) * 100 / target.info.mass
		// make fall forwards sometimes
		if damage < 40 && damage > target.health && target.z - inflictor.z > 64 * (1 << 16)
			&& p_random() & 1 {
			ang += 2147483648
			thrust *= 4
		}
		ang >>= 19
		target.momx += fixed_mul(thrust, finecosine[ang])
		target.momy += fixed_mul(thrust, finesine[ang])
	}
	// player specific
	if player {
		// end of game hell hack
		if target.subsector.sector.special == 11 && damage >= target.health {
			damage = target.health - 1
		}
		// Below certain threshold,
		// ignore damage in GOD mode, or with INVUL power.
		if damage < 1000 && (player.cheats & Cheat_t.cf_godmode
			|| player.powers[int(Powertype_t.pw_invulnerability)]) {
			return
		}
		if player.armortype {
			if player.armortype == 1 {
				saved = damage / 3
			} else { // 3
				saved = damage / 2
			}
			if player.armorpoints <= saved {
				// armor is used up
				saved = player.armorpoints
				player.armortype = 0
			}
			player.armorpoints -= saved
			damage -= saved
		}
		player.health -= damage
		// mirror mobj health here for Dave
		if player.health < 0 {
			player.health = 0
		}
		player.attacker = source
		player.damagecount += damage
		// add damage after armor / invuln
		if player.damagecount > 100 {
			player.damagecount = 100
		}
		// teleport stomp does 10k points...
		temp = if damage < 100 { damage } else { 100 }
		if player == &players[consoleplayer] {
			i_tactile(40, 10, 40 + temp * 2)
		}
	}
	// do the damage	
	target.health -= damage
	if target.health <= 0 {
		p_kill_mobj(source, target)
		return
	}
	if p_random() < target.info.painchance && !(target.flags & Mobjflag_t.mf_skullfly) {
		target.flags |= Mobjflag_t.mf_justhit
		// fight back!
		p_set_mobj_state(target, target.info.painstate)
	}
	target.reactiontime = 0
	// we're awake now...	
	if (!target.threshold || target.type_ == Mobjtype_t.mt_vile) && source
		&& (source != target || gameversion <= GameVersion_t.exe_doom_1_2)
		&& source.type_ != Mobjtype_t.mt_vile {
		// if not intent on another player,
		// chase after this one
		target.target = source
		target.threshold = 100
		if target.state == &states[target.info.spawnstate]
			&& target.info.seestate != Statenum_t.s_null {
			p_set_mobj_state(target, target.info.seestate)
		}
	}
}
