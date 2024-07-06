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

@[c: 'DEH_printf']
@[c2v_variadic]
fn deh_printf(fmt ...&i8)

@[c: 'DEH_snprintf']
@[c2v_variadic]
fn deh_snprintf(buffer &i8, len usize, fmt ...&i8)

@[c: 'DEH_AddStringReplacement']
fn deh_add_string_replacement(from_text &i8, to_text &i8)

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
@[c: 'DEH_ParseCommandLine']
fn deh_parse_command_line()

@[c: 'DEH_LoadFile']
fn deh_load_file(filename &i8) int

@[c: 'DEH_AutoLoadPatches']
fn deh_auto_load_patches(path &i8)

@[c: 'DEH_LoadLump']
fn deh_load_lump(lumpnum int, allow_long bool, allow_error bool) int

@[c: 'DEH_LoadLumpByName']
fn deh_load_lump_by_name(name &i8, allow_long bool, allow_error bool) int

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
@[c: 'I_GetTime']
fn i_get_time() int

// returns current time in ms
// Pause for a specified number of ms
@[c: 'I_Sleep']
fn i_sleep(ms int)

// Initialize timer
@[c: 'I_InitTimer']
fn i_init_timer()

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
@[c: 'NetUpdate']
fn net_update()

// Broadcasts special packets to other players
//  to notify of game exit
//? how many ticks to run?
@[c: 'TryRunTics']
fn try_run_tics()

// Called at start of game loop to initialize timers
@[c: 'D_StartGameLoop']
fn d_start_game_loop()

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
// skipped extern global wipegamestate
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
//
// DESCRIPTION:
//	DOOM strings, by language.
//
// All important printed strings.
// Misc. other strings.
// QuitDOOM messages
// 8 per each game type
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
@[c: 'I_InitSound']
fn i_init_sound(use_sfx_prefix bool)

// Interface for music modules
@[c: 'I_InitMusic']
fn i_init_music()

@[c: 'I_BindSoundVariables']
fn i_bind_sound_variables()

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
// DESCRIPTION:
//     Find IWAD and initialize according to IWAD type.
//
struct Iwad_t {
	name        &i8
	mission     GameMission_t
	mode        GameMode_t
	description &i8
}

@[c: 'D_FindWADByName']
fn d_find_wadb_y_name(filename &i8) &i8

@[c: 'D_FindIWAD']
fn d_find_iwad(mask int, mission &GameMission_t) &i8

@[c: 'D_SaveGameIWADName']
fn d_save_game_iwadn_ame(gamemission GameMission_t) &i8

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
@[c: 'Z_Init']
fn z_init()

@[c: 'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

//
// This is used to get the local FILE:LINE info from CPP
// prior to really call the function in question.
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
//     Common code to parse command line, identifying WAD files to load.
//
@[c: 'W_ParseCommandLine']
fn w_parse_command_line() bool

@[c: 'W_CheckCorrectIWAD']
fn w_check_correct_iwad(mission GameMission_t)

// Autoload all .wad files from the given directory:
@[c: 'W_AutoLoadWADs']
fn w_auto_load_wad_s(path &i8)

// #ifndef W_MAIN_H
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
@[c: 'W_AddFile']
fn w_add_file(filename &i8) &Wad_file_t

@[c: 'W_CheckNumForName']
fn w_check_num_for_name(name &i8) Lumpindex_t

@[c: 'W_CacheLumpName']
fn w_cache_lump_name(name &i8, tag int) voidptr

@[c: 'W_GenerateHashTable']
fn w_generate_hash_table()

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
//	The not so system specific sound interface.
//
//
// Initializes sound stuff, including volume
// Sets channels, SFX and music volume,
//  allocates channel buffer, sets S_sfx lookup.
//
@[c: 'S_Init']
fn s_init(sfx_volume int, music_volume int)

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
@[c: 'S_StartMusic']
fn s_start_music(music_id int)

// Start music using <music_id> from sounds.h,
//  and set whether looping
// query if music is playing
// Stops the music fer sure.
// Stop and resume music, during game PAUSE.
//
// Updates music & sounds
//
@[c: 'S_UpdateSounds']
fn s_update_sounds(listener &Mobj_t)

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
//	Disk load indicator.
//
// Dimensions of the flashing "loading" disk icon
@[c: 'V_EnableLoadingDisk']
fn v_enable_loading_disk(lump_name &i8, xoffs int, yoffs int)

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
@[c: 'V_Init']
fn v_init()

// Draw a block from the specified source screen to the screen.
@[c: 'V_DrawPatch']
fn v_draw_patch(x int, y int, patch &Patch_t)

// villsa [STRIFE]
@[c: 'V_DrawPatchDirect']
fn v_draw_patch_direct(x int, y int, patch &Patch_t)

// Draw a linear block of pixels into the view buffer.
// Draw a raw screen lump
// Temporarily switch to using a different buffer to draw graphics, etc.
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
@[c: 'V_DrawMouseSpeedBox']
fn v_draw_mouse_speed_box(speed int)

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
@[c: 'D_PopEvent']
fn d_pop_event() &Event_t

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
// FINALE
//
// Called by main loop.
// Called by main loop.
// Called by main loop.
@[c: 'F_Drawer']
fn f_drawer()

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
//	Mission start screen wipe/melt, special effects.
//	
//
//                       SCREEN WIPE PACKAGE
//

// empty enum
// simple gradual pixel change for 8-bit only
const wipe_color_xf_orm = 0
// weird screen melt
const wipe_melt = 1
const wipe_numwipes = 2

@[c: 'wipe_StartScreen']
fn wipe_start_screen(x int, y int, width int, height int) int

@[c: 'wipe_EndScreen']
fn wipe_end_screen(x int, y int, width int, height int) int

@[c: 'wipe_ScreenWipe']
fn wipe_screen_wipe(wipeno int, x int, y int, width int, height int, ticks int) int

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
@[c: 'M_CheckParmWithArgs']
fn m_check_parm_with_args(check &i8, num_args int) int

// Parameter has been specified?
@[c: 'M_ParmExists']
fn m_parm_exists(check &i8) bool

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
//      Configuration file interface.
//
@[c: 'M_LoadDefaults']
fn m_load_defaults()

@[c: 'M_SaveDefaults']
fn m_save_defaults()

@[c: 'M_SetConfigDir']
fn m_set_config_dir(dir &i8)

@[c: 'M_BindIntVariable']
fn m_bind_int_variable(name &i8, variable &int)

@[c: 'M_BindStringVariable']
fn m_bind_string_variable(name &i8, variable &&u8)

@[c: 'M_SetConfigFilenames']
fn m_set_config_filenames(main_config &i8, extra_config &i8)

@[c: 'M_GetSaveGameDir']
fn m_get_save_game_dir(iwadname &i8) &i8

@[c: 'M_GetAutoloadDir']
fn m_get_autoload_dir(iwadname &i8) &i8

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
@[c: 'M_BindBaseControls']
fn m_bind_base_controls()

@[c: 'M_BindWeaponControls']
fn m_bind_weapon_controls()

@[c: 'M_BindMapControls']
fn m_bind_map_controls()

@[c: 'M_BindMenuControls']
fn m_bind_menu_controls()

@[c: 'M_BindChatControls']
fn m_bind_chat_controls(num_players u32)

@[c: 'M_ApplyPlatformDefaults']
fn m_apply_platform_defaults()

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
//      Miscellaneous.
//
@[c: 'M_FileExists']
fn m_file_exists(file &i8) bool

@[c: 'M_DirName']
fn m_dir_name(path &i8) &i8

@[c: 'M_ForceUppercase']
fn m_force_uppercase(text &i8)

@[c: 'M_StringCopy']
fn m_string_copy(dest &i8, src &i8, dest_size usize) bool

@[c: 'M_StringJoin']
@[c2v_variadic]
fn m_string_join(s ...&i8) &i8

@[c: 'M_StringEndsWith']
fn m_string_ends_with(s &i8, suffix &i8) bool

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
@[c: 'M_Responder']
fn m_responder(ev &Event_t) bool

// Called by main loop,
// only used for menu (skull cursor) animation.
// Called by main loop,
// draws the menus directly into the screen buffer.
@[c: 'M_Drawer']
fn m_drawer()

// Called by D_DoomMain,
// loads the config file.
@[c: 'M_Init']
fn m_init()

// Called by intro code to force menu up upon a keypress,
// does nothing if menu is already up.
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
@[c: 'P_SaveGameFile']
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
//    Exit text-mode ENDOOM screen.
//
// Display the Endoom screen on shutdown.  Pass a pointer to the
// ENDOOM lump.
@[c: 'I_Endoom']
fn i_endoom(data &u8)

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
@[c: 'I_BindInputVariables']
fn i_bind_input_variables()

// I_StartTextInput begins text input, activating the on-screen keyboard
// (if one is used). The caller indicates that any entered text will be
// displayed in the rectangle given by the provided set of coordinates.
// I_StopTextInput finishes text input, deactivating the on-screen keyboard
// (if one is used).
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
//      System-specific joystick interface.
//
// Number of "virtual" joystick buttons defined in configuration files.
// This needs to be at least as large as the number of different key
// bindings supported by the higher-level game code (joyb* variables).
// If this bit is set in a configuration file axis value, the axis is
// not actually a joystick axis, but instead is a "button axis". This
// means that instead of reading an SDL joystick axis, we read the
// state of two buttons to get the axis value. This is needed for eg.
// the PS3 SIXAXIS controller, where the D-pad buttons register as
// buttons, not as two axes.
// Query whether a given axis value describes a button axis.
// Get the individual buttons from a button axis value.
// Create a button axis value from two button values.
// If this bit is set in an axis value, the axis is not actually a
// joystick axis, but is a "hat" axis. This means that we read (one of)
// the hats on the joystick.
// Get the hat number from a hat axis value.
// Which axis of the hat? (horizonal or vertical)
@[c: 'I_InitJoystick']
fn i_init_joystick()

@[c: 'I_BindJoystickVariables']
fn i_bind_joystick_variables()

// #ifndef __I_JOYSTICK__
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
@[c: 'I_AtExit']
fn i_at_exit(func Atexit_func_t, run_if_error bool)

// Add all system-specific config file variable bindings.
// Print startup banner copyright message.
@[c: 'I_PrintStartupBanner']
fn i_print_startup_banner(gamedescription &i8)

// Print a centered text banner displaying the given string.
@[c: 'I_PrintBanner']
fn i_print_banner(text &i8)

// Print a dividing line for startup banners.
@[c: 'I_PrintDivider']
fn i_print_divider()

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
@[c: 'I_InitGraphics']
fn i_init_graphics()

@[c: 'I_GraphicsCheckCommandLine']
fn i_graphics_check_command_line()

// Takes full 8 bit values.
@[c: 'I_SetPalette']
fn i_set_palette(palette &u8)

@[c: 'I_UpdateNoBlit']
fn i_update_no_blit()

@[c: 'I_FinishUpdate']
fn i_finish_update()

@[c: 'I_SetWindowTitle']
fn i_set_window_title(title &i8)

@[c: 'I_CheckIsScreensaver']
fn i_check_is_screensaver()

@[c: 'I_SetGrabMouseCallback']
fn i_set_grab_mouse_callback(func Grabmouse_callback_t)

@[c: 'I_DisplayFPSDots']
fn i_display_fpsd_ots(dots_on bool)

@[c: 'I_BindVideoVariables']
fn i_bind_video_variables()

// Called before processing any tics in a frame (just after displaying a frame).
// Time consuming syncronous operations are performed here (joystick reading).
@[c: 'I_StartFrame']
fn i_start_frame()

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
//   Duh.
//
//
// GAME
//
@[c: 'G_InitNew']
fn g_init_new(skill Skill_t, episode int, map_ int)

// Can be called by the startup code or M_Responder.
// A normal game starts at map 1,
// but a warp test can start elsewhere
@[c: 'G_DeferedPlayDemo']
fn g_defered_play_demo(demo &i8)

// Can be called by the startup code or M_Responder,
// calls P_SetupLevel or W_EnterWorld.
@[c: 'G_LoadGame']
fn g_load_game(name &i8)

// Called by M_Responder.
// Only called by startup code.
@[c: 'G_RecordDemo']
fn g_record_demo(name &i8)

@[c: 'G_BeginRecording']
fn g_begin_recording()

@[c: 'G_TimeDemo']
fn g_time_demo(name &i8)

@[c: 'G_CheckDemoStatus']
fn g_check_demo_status() bool

// Read current data from inputs and build a player movement command.
@[c: 'G_Responder']
fn g_responder(ev &Event_t) bool

@[c: 'G_VanillaVersionCode']
fn g_vanilla_version_code() int

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
@[c: 'HU_Init']
fn hu_init()

@[c: 'HU_Drawer']
fn hu_drawer()

@[c: 'HU_Erase']
fn hu_erase()

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
// Called by main loop, animate the intermission.
// Called by main loop,
// draws the intermission directly into the screen buffer.
@[c: 'WI_Drawer']
fn wi_drawer()

// Setup for an intermission screen.
// Shut down the intermission screen
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
struct Cheatseq_t {
	// settings for this cheat
	sequence        [25]i8
	sequence_len    usize
	parameter_chars int
	// state used during the game
	chars_read       usize
	param_chars_read int
	parameter_buf    [5]i8
}

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
// Called by main loop.
// Called by main loop.
@[c: 'ST_Drawer']
fn st_drawer(fullscreen bool, refresh bool)

// Called when the console player is spawned on each level.
// Called by startup code.
@[c: 'ST_Init']
fn st_init()

// States for status bar code.
enum St_stateenum_t {
	automap_state
	first_person_state
}

// States for the chat code.
enum St_chatstateenum_t {
	start_chat_state
	wait_dest_state
	get_chat_state
}

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
@[c: 'AM_Drawer']
fn am_drawer()

// Called to force the automap to quit
// if the level is completed while it is up.
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
// Network client code
//
@[c: 'NET_Init']
fn net_init()

@[c: 'NET_BindVariables']
fn net_bind_variables()

// #ifndef NET_CLIENT_H
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
// Dedicated server code.
//
@[c: 'NET_DedicatedServer']
fn net_dedicated_server()

// #ifndef NET_DEDICATED_H
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
//     Querying servers to find their current status.
//
type Net_query_callback_t = fn (&Net_addr_t, &Net_querydata_t, u32, voidptr)

@[c: 'NET_LANQuery']
fn net_lanq_uery()

@[c: 'NET_MasterQuery']
fn net_master_query()

@[c: 'NET_QueryAddress']
fn net_query_address(addr &i8)

// #ifndef NET_QUERY_H
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
// NOT called by W_Ticker. Fixme.
// Called by startup code.
@[c: 'P_Init']
fn p_init()

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
@[c: 'R_RenderPlayerView']
fn r_render_player_view(player &Player_t)

// Called by startup code.
@[c: 'R_Init']
fn r_init()

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
@[c: 'R_FillBackScreen']
fn r_fill_back_screen()

// If the view size is not full screen, draws a border around it.
@[c: 'R_DrawViewBorder']
fn r_draw_view_border()

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
@[c: 'StatDump']
fn stat_dump()

// #ifndef DOOM_STATDUMP_H
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
@[c: 'D_ProcessEvents']
fn d_process_events()

//
// BASE LEVEL
//
@[c: 'D_PageTicker']
fn d_page_ticker()

@[c: 'D_PageDrawer']
fn d_page_drawer()

@[c: 'D_AdvanceDemo']
fn d_advance_demo()

@[c: 'D_DoAdvanceDemo']
fn d_do_advance_demo()

@[c: 'D_StartTitle']
fn d_start_title()

//
// GLOBAL VARIABLES
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
//	DOOM main program (D_DoomMain) and game loop (D_DoomLoop),
//	plus functions to determine game mode (shareware, registered),
//	parse command line parameters, configure game parameters (turbo),
//	and call the startup functions.
//
//
// D-DoomLoop()
// Not a globally visible function,
//  just included for source reference,
//  called by D_DoomMain, never exits.
// Manages timing and IO,
//  calls all ?_Responder, ?_Ticker, and ?_Drawer,
//  calls I_GetTime, I_StartFrame, and I_StartTic
//
@[c: 'D_DoomLoop']
fn d_doom_loop()

// Location where savegames are stored
// location of IWAD and WAD files
// started game with -devparm
// checkparm of -nomonsters
// checkparm of -respawn
// checkparm of -fast
// extern int soundVolume;
// extern  int	sfxVolume;
// extern  int	musicVolume;
// Store demo, do not accept any inputs
// If true, the main game loop has started.
// primary wad file
// directory of development maps
@[c: 'D_ConnectNetGame']
fn d_connect_net_game()

@[c: 'D_CheckNetGame']
fn d_check_net_game()

//
// D_ProcessEvents
// Send all the events of the given timestamp down the responder chain
//
@[c: 'D_ProcessEvents']
fn d_process_events() {
	ev := &Event_t(0)
	// IF STORE DEMO, DO NOT ACCEPT INPUT
	if storedemo {
		return
	}
	// while ((ev = D_PopEvent()) != NULL)
	for ; true; {
		ev = d_pop_event()
		if ev == (unsafe { nil }) {
			break
		}
		if m_responder(ev) {
			continue
		}
		// menu ate the event
		g_responder(ev)
	}
}

//
// D_Display
//  draw current display, possibly wiping it from the previous
//
// wipegamestate can be set to -1 to force a wipe on the next draw
@[c: 'R_ExecuteSetViewSize']
fn r_execute_set_view_size()

@[c: 'D_Display']
fn d_display() bool {
	viewactivestate := false
	menuactivestate := false
	inhelpscreensstate := false
	fullscreen := false
	oldgamestate := -1
	borderdrawcount := 0
	y := 0
	wipe := false
	redrawsbar := false
	redrawsbar = false
	// change the view size if needed
	if setsizeneeded {
		r_execute_set_view_size()
		oldgamestate = -1
		// force background redraw
		borderdrawcount = 3
	}
	// save the current screen if about to wipe
	if gamestate != wipegamestate {
		wipe = true
		wipe_start_screen(0, 0, 320, 200)
	} else { // 3
		wipe = false
	}
	if gamestate == Gamestate_t.gs_level && gametic {
		hu_erase()
	}
	// do buffered drawing
	match gamestate {
		.gs_level { // case comp body kind=IfStmt is_enum=true
			if !gametic {
			}
			if automapactive {
				am_drawer()
			}
			if wipe || (viewheight != 200 && fullscreen) {
				redrawsbar = true
			}
			if inhelpscreensstate && !inhelpscreens {
				redrawsbar = true
			}
			// just put away the help screen
			st_drawer(viewheight == 200, redrawsbar)
			fullscreen = viewheight == 200
		}
		.gs_intermission { // case comp body kind=CallExpr is_enum=true
			wi_drawer()
		}
		.gs_finale { // case comp body kind=CallExpr is_enum=true
			f_drawer()
		}
		.gs_demoscreen { // case comp body kind=CallExpr is_enum=true
			d_page_drawer()
		}
		else {}
	}
	// draw buffered stuff to screen
	i_update_no_blit()
	// draw the view directly
	if gamestate == Gamestate_t.gs_level && !automapactive && gametic {
		r_render_player_view(&players[displayplayer])
	}
	if gamestate == Gamestate_t.gs_level && gametic {
		hu_drawer()
	}
	// clean up border stuff
	if gamestate != oldgamestate && gamestate != Gamestate_t.gs_level {
		i_set_palette(w_cache_lump_name(deh_string(c'PLAYPAL'), 8))
	}
	// see if the border needs to be initially drawn
	if gamestate == Gamestate_t.gs_level && oldgamestate != Gamestate_t.gs_level {
		viewactivestate = false
		// view was not active
		r_fill_back_screen()
		// draw the pattern into the back screen
	}
	// see if the border needs to be updated to the screen
	if gamestate == Gamestate_t.gs_level && !automapactive && scaledviewwidth != 320 {
		if menuactive || menuactivestate || !viewactivestate {
			borderdrawcount = 3
		}
		if borderdrawcount {
			r_draw_view_border()
			// erase old menu stuff
			borderdrawcount--
		}
	}
	if testcontrols {
		// Box showing current mouse speed
		v_draw_mouse_speed_box(testcontrols_mousespeed)
	}
	menuactivestate = menuactive
	viewactivestate = viewactive
	inhelpscreensstate = inhelpscreens
	oldgamestate = gamestate
	wipegamestate = oldgamestate
	// draw pause pic
	if paused {
		if automapactive {
			y = 4
		} else { // 3
			y = viewwindowy + 4
		}
		v_draw_patch_direct(viewwindowx + (scaledviewwidth - 68) / 2, y, w_cache_lump_name(deh_string(c'M_PAUSE'),
			8))
	}
	// menus go directly to the screen
	m_drawer()
	// menu is drawn even on top of everything
	net_update()
	// send out any new accumulation
	return wipe
}

@[c: 'EnableLoadingDisk']
fn enable_loading_disk() {
	disk_lump_name := &i8(0)
	if show_diskicon {
		if m_check_parm(c'-cdrom') > 0 {
			disk_lump_name = deh_string(c'STCDROM')
		} else {
			disk_lump_name = deh_string(c'STDISK')
		}
		v_enable_loading_disk(disk_lump_name, 320 - 16, 200 - 16)
	}
}

//
// Add configuration file variable bindings.
//
@[c: 'D_BindVariables']
fn d_bind_variables() {
	i := 0
	m_apply_platform_defaults()
	i_bind_input_variables()
	i_bind_video_variables()
	i_bind_joystick_variables()
	i_bind_sound_variables()
	m_bind_base_controls()
	m_bind_weapon_controls()
	m_bind_map_controls()
	m_bind_menu_controls()
	m_bind_chat_controls(4)
	key_multi_msgplayer[0] = `g`
	key_multi_msgplayer[1] = `i`
	key_multi_msgplayer[2] = `b`
	key_multi_msgplayer[3] = `r`
	net_bind_variables()
	m_bind_int_variable(c'mouse_sensitivity', &mouseSensitivity)
	m_bind_int_variable(c'sfx_volume', &sfxVolume)
	m_bind_int_variable(c'music_volume', &musicVolume)
	m_bind_int_variable(c'show_messages', &showMessages)
	m_bind_int_variable(c'screenblocks', &screenblocks)
	m_bind_int_variable(c'detaillevel', &detailLevel)
	m_bind_int_variable(c'snd_channels', &snd_channels)
	m_bind_int_variable(c'vanilla_savegame_limit', &vanilla_savegame_limit)
	m_bind_int_variable(c'vanilla_demo_limit', &vanilla_demo_limit)
	m_bind_int_variable(c'show_endoom', &show_endoom)
	m_bind_int_variable(c'show_diskicon', &show_diskicon)
	// Multiplayer chat macros
	for i = 0; i < 10; i++ {
		buf := [12]i8{}
		m_snprintf(buf, sizeof(buf), c'chatmacro%i', i)
		m_bind_string_variable(buf, &chat_macros[i])
	}
}

//
// D_GrabMouseCallback
//
// Called to determine whether to grab the mouse pointer
//
@[c: 'D_GrabMouseCallback']
fn d_grab_mouse_callback() bool {
	// Drone players don't need mouse focus
	if drone {
		return false
	}
	// when menu is active or game is paused, release the mouse
	if menuactive || paused {
		return false
	}
	// only grab mouse when playing levels (but not demos)
	return gamestate == Gamestate_t.gs_level && !demoplayback && !advancedemo
}

//
//  D_RunFrame
//
@[c: 'D_RunFrame']
fn d_run_frame() {
	nowtime := 0
	tics := 0
	wipestart := 0
	wipe := false
	if wipe {
		for {
			nowtime = i_get_time()
			tics = nowtime - wipestart
			i_sleep(1)
			// while()
			if !(tics <= 0) {
				break
			}
		}
		wipestart = nowtime
		wipe = !wipe_screen_wipe(1, // wipe_Melt QTODO
		 0, 0, 320, 200, tics)
		i_update_no_blit()
		m_drawer()
		// menu is drawn even on top of wipes
		i_finish_update()
		// page flip or blit buffer
		return
	}
	// frame syncronous IO operations
	i_start_frame()
	try_run_tics()
	// will run at least one tic
	s_update_sounds(players[consoleplayer].mo)
	// move positional sounds
	// Update display, next frame, with current state if no profiling is on
	if screenvisible && !nodrawers {
		// if ((wipe = D_Display ()))
		wipe = d_display()
		if wipe {
			// start wipe on this frame
			wipe_end_screen(0, 0, 320, 200)
			wipestart = i_get_time() - 1
		} else {
			// normal update
			i_finish_update()
			// page flip or blit buffer
		}
	}
}

//
//  D_DoomLoop
//
@[c: 'D_DoomLoop']
fn d_doom_loop() {
	if gamevariant == GameVariant_t.bfgedition
		&& (demorecording || gameaction == Gameaction_t.ga_playdemo || netgame) {
		C.printf(c' WARNING: You are playing using one of the Doom Classic\n IWAD files shipped with the Doom 3: BFG Edition. These are\n known to be incompatible with the regular IWAD files and\n may cause demos and network games to get out of sync.\n')
	}
	if demorecording {
		g_begin_recording()
	}
	main_loop_started = true
	i_set_window_title(gamedescription)
	i_graphics_check_command_line()
	i_set_grab_mouse_callback(d_grab_mouse_callback)
	i_init_graphics()
	enable_loading_disk()
	try_run_tics()
	v_restore_buffer()
	r_execute_set_view_size()
	d_start_game_loop()
	if testcontrols {
		wipegamestate = gamestate
	}
	for 1 {
		d_run_frame()
	}
}

//
//  DEMO LOOP
//
//
// D_PageTicker
// Handles timing for warped projection
//
@[c: 'D_PageTicker']
fn d_page_ticker() {
	if pagetic--$ < 0 {
		d_advance_demo()
	}
}

//
// D_PageDrawer
//
@[c: 'D_PageDrawer']
fn d_page_drawer() {
	v_draw_patch(0, 0, w_cache_lump_name(pagename, 8))
}

//
// D_AdvanceDemo
// Called after each demo or intro demosequence finishes
//
@[c: 'D_AdvanceDemo']
fn d_advance_demo() {
	advancedemo = true
}

//
// This cycles through the demo sequences.
// FIXME - version dependend demo numbers?
//
@[c: 'D_DoAdvanceDemo']
fn d_do_advance_demo() {
	players[consoleplayer].playerstate = Playerstate_t.pst_live
	// not reborn
	advancedemo = false
	usergame = false
	// no save / end game here
	paused = false
	gameaction = Gameaction_t.ga_nothing
	// The Ultimate Doom executable changed the demo sequence to add
	// a DEMO4 demo.  Final Doom was based on Ultimate, so also
	// includes this change; however, the Final Doom IWADs do not
	// include a DEMO4 lump, so the game bombs out with an error
	// when it reaches this point in the demo sequence.
	// However! There is an alternate version of Final Doom that
	// includes a fixed executable.
	if gameversion == GameVersion_t.exe_ultimate || gameversion == GameVersion_t.exe_final {
		demosequence = (demosequence + 1) % 7
	} else { // 3
		demosequence = (demosequence + 1) % 6
	}
	match demosequence {
		0 { // case comp body kind=IfStmt is_enum=false
			if gamemode == GameMode_t.commercial {
				pagetic = 35 * 11
			} else { // 3
				pagetic = 170
			}
			gamestate = Gamestate_t.gs_demoscreen
			pagename = deh_string(c'TITLEPIC')
			if gamemode == GameMode_t.commercial {
				s_start_music(Musicenum_t.mus_dm2ttl)
			} else { // 3
				s_start_music(Musicenum_t.mus_intro)
			}
		}
		1 { // case comp body kind=CallExpr is_enum=false
			g_defered_play_demo(deh_string(c'demo1'))
		}
		2 { // case comp body kind=BinaryOperator is_enum=false
			pagetic = 200
			gamestate = Gamestate_t.gs_demoscreen
			pagename = deh_string(c'CREDIT')
		}
		3 { // case comp body kind=CallExpr is_enum=false
			g_defered_play_demo(deh_string(c'demo2'))
		}
		4 { // case comp body kind=BinaryOperator is_enum=false
			gamestate = Gamestate_t.gs_demoscreen
			if gamemode == GameMode_t.commercial {
				pagetic = 35 * 11
				pagename = deh_string(c'TITLEPIC')
				s_start_music(Musicenum_t.mus_dm2ttl)
			} else {
				pagetic = 200
				if gameversion >= GameVersion_t.exe_ultimate {
					pagename = deh_string(c'CREDIT')
				} else { // 3
					pagename = deh_string(c'HELP2')
				}
			}
		}
		5 { // case comp body kind=CallExpr is_enum=false
			g_defered_play_demo(deh_string(c'demo3'))

			// THE DEFINITIVE DOOM Special Edition demo
		}
		6 { // case comp body kind=CallExpr is_enum=false
			g_defered_play_demo(deh_string(c'demo4'))
		}
		else {}
	}
	// The Doom 3: BFG Edition version of doom2.wad does not have a
	// TITLETPIC lump. Use INTERPIC instead as a workaround.
	if gamevariant == GameVariant_t.bfgedition && !C.strcasecmp(pagename, c'TITLEPIC')
		&& w_check_num_for_name(c'titlepic') < 0 {
		pagename = deh_string(c'INTERPIC')
	}
}

//
// D_StartTitle
//
@[c: 'D_StartTitle']
fn d_start_title() {
	gameaction = Gameaction_t.ga_nothing
	demosequence = -1
	d_advance_demo()
}

// Strings for dehacked replacements of the startup banner
//
// These are from the original source: some of them are perhaps
// not used in any dehacked patches
//
// Get game name: if the startup banner has been replaced, use that.
// Otherwise, use the name given
//
@[c: 'GetGameName']
fn get_game_name(gamename &i8) &i8 {
	i := usize(0)
	deh_sub := &i8(0)
	for i = 0; i < (sizeof(banners) / sizeof(*banners)); i++ {
		// Has the banner been replaced?
		deh_sub = deh_string(banners[i])
		if deh_sub != banners[i] {
			gamename_size := usize(0)
			version := 0
			// Has been replaced.
			// We need to expand via printf to include the Doom version number
			// We also need to cut off spaces to get the basic name
			gamename_size = C.strlen(deh_sub) + 10
			gamename = z_malloc(gamename_size, 1, 0)
			version = g_vanilla_version_code()
			m_snprintf(gamename, gamename_size, deh_sub, version / 100, version % 100)
			for gamename[0] != `\0` && (*__ctype_b_loc())[int((gamename[0]))] & u16(_is_space) {
				C.memmove(gamename, gamename + 1, gamename_size - 1)
			}
			for gamename[0] != `\0`
				&& (*__ctype_b_loc())[int((gamename[C.strlen(gamename) - 1]))] & u16(_is_space) {
				gamename[C.strlen(gamename) - 1] = `\0`
			}
			return gamename
		}
	}
	return gamename
}

struct Pack_ {
	name    &i8
	mission int
}

@[c: 'SetMissionForPackName']
fn set_mission_for_pack_name(pack_name &i8) {
	i := 0
	for i = 0; i < (sizeof(packs_) / sizeof(*packs_)); i++ {
		if !C.strcasecmp(pack_name, packs_[i].name) {
			gamemission = packs_[i].mission
			return
		}
	}
	C.printf(c'Valid mission packs are:\n')
	for i = 0; i < (sizeof(packs_) / sizeof(*packs_)); i++ {
		C.printf(c'\t%s\n', packs_[i].name)
	}
	i_error(c'Unknown mission pack name: %s', pack_name)
}

//
// Find out what version of Doom is playing.
//
@[c: 'D_IdentifyVersion']
fn d_identify_version() {
	// gamemission is set up by the D_FindIWAD function.  But if
	// we specify '-iwad', we have to identify using
	// IdentifyIWADByName.  However, if the iwad does not match
	// any known IWAD name, we may have a dilemma.  Try to
	// identify by its contents.
	if gamemission == GameMission_t.none_ {
		i := u32(0)
		for i = 0; i < numlumps; i++ {
			if !C.strncasecmp(lumpinfo[i].name, c'MAP01', 8) {
				gamemission = GameMission_t.doom2
				break
			} else if !C.strncasecmp(lumpinfo[i].name, c'E1M1', 8) {
				gamemission = GameMission_t.doom
				break
			}
		}
		if gamemission == GameMission_t.none_ {
			// Still no idea.  I don't think this is going to work.
			i_error(c'Unknown or invalid IWAD file.')
		}
	}
	// Make sure gamemode is set up correctly
	if GameMission_t.doom == GameMission_t.doom {
		// Doom 1.  But which version?
		if w_check_num_for_name(c'E4M1') > 0 {
			// Ultimate Doom
			gamemode = GameMode_t.retail
		} else if w_check_num_for_name(c'E3M1') > 0 {
			gamemode = GameMode_t.registered
		} else {
			gamemode = GameMode_t.shareware
		}
	} else {
		p := 0
		// Doom 2 of some kind.
		gamemode = GameMode_t.commercial
		// We can manually override the gamemission that we got from the
		// IWAD detection code. This allows us to eg. play Plutonia 2
		// with Freedoom and get the right level names.
		//!
		// @category compat
		// @arg <pack>
		//
		// Explicitly specify a Doom II "mission pack" to run as, instead of
		// detecting it based on the filename. Valid values are: "doom2",
		// "tnt" and "plutonia".
		//
		p = m_check_parm_with_args(c'-pack', 1)
		if p > 0 {
			set_mission_for_pack_name(myargv[p + 1])
		}
	}
}

// Set the gamedescription string
@[c: 'D_SetGameDescription']
fn d_set_game_description() {
	gamedescription = c'Unknown'
	if GameMission_t.doom == GameMission_t.doom {
		// Doom 1.  But which version?
		if gamevariant == GameVariant_t.freedoom {
			gamedescription = get_game_name(c'Freedoom: Phase 1')
		} else if gamemode == GameMode_t.retail {
			// Ultimate Doom
			gamedescription = get_game_name(c'The Ultimate DOOM')
		} else if gamemode == GameMode_t.registered {
			gamedescription = get_game_name(c'DOOM Registered')
		} else if gamemode == GameMode_t.shareware {
			gamedescription = get_game_name(c'DOOM Shareware')
		}
	} else {
		// Doom 2 of some kind.  But which mission?
		if gamevariant == GameVariant_t.freedm {
			gamedescription = get_game_name(c'FreeDM')
		} else if gamevariant == GameVariant_t.freedoom {
			gamedescription = get_game_name(c'Freedoom: Phase 2')
		} else if GameMission_t.doom == GameMission_t.doom2 {
			gamedescription = get_game_name(c'DOOM 2: Hell on Earth')
		} else if GameMission_t.doom == GameMission_t.pack_plut {
			gamedescription = get_game_name(c'DOOM 2: Plutonia Experiment')
		} else if GameMission_t.doom == GameMission_t.pack_tnt {
			gamedescription = get_game_name(c'DOOM 2: TNT - Evilution')
		}
	}
}

//      print title for every printed line
@[c: 'D_AddFile']
fn d_add_file(filename &i8) bool {
	C.printf(c' adding %s\n', filename)
	handle := w_add_file(filename)
	return handle != (unsafe { nil })
}

// Copyright message banners
// Some dehacked mods replace these.  These are only displayed if they are
// replaced by dehacked.
// Prints a message only if it has been modified by dehacked.
@[c: 'PrintDehackedBanners']
fn print_dehacked_banners() {
	i := usize(0)
	for i = 0; i < (sizeof(copyright_banners) / sizeof(*copyright_banners)); i++ {
		deh_s := &i8(0)
		deh_s = deh_string(copyright_banners[i])
		if deh_s != copyright_banners[i] {
			C.printf(c'%s', deh_s)
			// Make sure the modified banner always ends in a newline character.
			// If it doesn't, add a newline.  This fixes av.wad.
			if deh_s[C.strlen(deh_s) - 1] != `\n` {
				C.printf(c'\n')
			}
		}
	}
}

struct GameVersionStruct {
	description &i8
	cmdline     &i8
	version     GameVersion_t
}

// Initialize the game version
@[c: 'InitGameVersion']
fn init_game_version() {
	demolump := &u8(0)
	demolumpname := [6]i8{}
	demoversion := 0
	p := 0
	i := 0
	status := false
	//!
	// @arg <version>
	// @category compat
	//
	// Emulate a specific version of Doom.  Valid values are "1.2",
	// "1.666", "1.7", "1.8", "1.9", "ultimate", "final", "final2",
	// "hacx" and "chex".
	//
	p = m_check_parm_with_args(c'-gameversion', 1)
	if p {
		for i = 0; gameversions[i].description != (unsafe { nil }); i++ {
			if !C.strcmp(myargv[p + 1], gameversions[i].cmdline) {
				gameversion = gameversions[i].version
				break
			}
		}
		if gameversions[i].description == (unsafe { nil }) {
			C.printf(c'Supported game versions:\n')
			for i = 0; gameversions[i].description != (unsafe { nil }); i++ {
				C.printf(c'\t%s (%s)\n', gameversions[i].cmdline, gameversions[i].description)
			}
			i_error(c"Unknown game version '%s'", myargv[p + 1])
		}
	} else {
		// Determine automatically
		if gamemission == GameMission_t.pack_chex {
			// chex.exe - identified by iwad filename
			gameversion = GameVersion_t.exe_chex
		} else if gamemission == GameMission_t.pack_hacx {
			// hacx.exe: identified by iwad filename
			gameversion = GameVersion_t.exe_hacx
		} else if gamemode == GameMode_t.shareware
			|| gamemode == GameMode_t.registered
			|| (gamemode == GameMode_t.commercial && gamemission == GameMission_t.doom2) {
			// original
			gameversion = GameVersion_t.exe_doom_1_9
			// Detect version from demo lump
			for i = 1; i <= 3; i++ {
				m_snprintf(demolumpname, 6, c'demo%i', i)
				if w_check_num_for_name(demolumpname) > 0 {
					demolump = w_cache_lump_name(demolumpname, 1)
					demoversion = demolump[0]
					w_release_lump_name(demolumpname)
					status = true
					match demoversion {
						0, 1, 2, 3, 4 {
							gameversion = GameVersion_t.exe_doom_1_2
						}
						106 { // case comp body kind=BinaryOperator is_enum=false
							gameversion = GameVersion_t.exe_doom_1_666
						}
						107 { // case comp body kind=BinaryOperator is_enum=false
							gameversion = GameVersion_t.exe_doom_1_7
						}
						108 { // case comp body kind=BinaryOperator is_enum=false
							gameversion = GameVersion_t.exe_doom_1_8
						}
						109 { // case comp body kind=BinaryOperator is_enum=false
							gameversion = GameVersion_t.exe_doom_1_9
						}
						else {
							status = false
						}
					}
					if status {
						break
					}
				}
			}
		} else if gamemode == GameMode_t.retail {
			gameversion = GameVersion_t.exe_ultimate
		} else if gamemode == GameMode_t.commercial {
			// Final Doom: tnt or plutonia
			// Defaults to emulating the first Final Doom executable,
			// which has the crash in the demo loop; however, having
			// this as the default should mean that it plays back
			// most demos correctly.
			gameversion = GameVersion_t.exe_final
		}
	}
	// Deathmatch 2.0 did not exist until Doom v1.4
	if gameversion <= GameVersion_t.exe_doom_1_2 && deathmatch == 2 {
		deathmatch = 1
	}
	// The original exe does not support retail - 4th episode not supported
	if gameversion < GameVersion_t.exe_ultimate && gamemode == GameMode_t.retail {
		gamemode = GameMode_t.registered
	}
	// EXEs prior to the Final Doom exes do not support Final Doom.
	if gameversion < GameVersion_t.exe_final && gamemode == GameMode_t.commercial
		&& (gamemission == GameMission_t.pack_tnt || gamemission == GameMission_t.pack_plut) {
		gamemission = GameMission_t.doom2
	}
}

@[c: 'PrintGameVersion']
fn print_game_version() {
	i := 0
	for i = 0; gameversions[i].description != (unsafe { nil }); i++ {
		if gameversions[i].version == gameversion {
			C.printf(c"Emulating the behavior of the '%s' executable.\n", gameversions[i].description)
			break
		}
	}
}

// Function called at exit to display the ENDOOM screen
@[c: 'D_Endoom']
fn d_endoom() {
	endoom := &u8(0)
	// Don't show ENDOOM if we have it disabled, or we're running
	// in screensaver or control test mode. Only show it once the
	// game has actually started.
	if !show_endoom || !main_loop_started || screensaver_mode || m_check_parm(c'-testcontrols') > 0 {
		return
	}
	endoom = w_cache_lump_name(deh_string(c'ENDOOM'), 1)
	i_endoom(endoom)
}

// Load dehacked patches needed for certain IWADs.
@[c: 'LoadIwadDeh']
fn load_iwad_deh() {
	// The Freedoom IWADs have DEHACKED lumps that must be loaded.
	if gamevariant == GameVariant_t.freedoom || gamevariant == GameVariant_t.freedm {
		// Old versions of Freedoom (before 2014-09) did not have technically
		// valid DEHACKED lumps, so ignore errors and just continue if this
		// is an old IWAD.
		deh_load_lump_by_name(c'DEHACKED', false, true)
	}
	// If this is the HACX IWAD, we need to load the DEHACKED lump.
	if gameversion == GameVersion_t.exe_hacx {
		if !deh_load_lump_by_name(c'DEHACKED', true, false) {
			i_error(c'DEHACKED lump not found.  Please check that this is the Hacx v1.2 IWAD.')
		}
	}
	// Chex Quest needs a separate Dehacked patch which must be downloaded
	// and installed next to the IWAD.
	if gameversion == GameVersion_t.exe_chex {
		chex_deh := (unsafe { nil })
		dirname := &i8(0)
		// Look for chex.deh in the same directory as the IWAD file.
		dirname = m_dir_name(iwadfile)
		chex_deh = m_string_join(dirname, c'/', c'chex.deh', (unsafe { nil }))
		C.free(dirname)
		// If the dehacked patch isn't found, try searching the WAD
		// search path instead.  We might find it...
		if !m_file_exists(chex_deh) {
			C.free(chex_deh)
			chex_deh = d_find_wadb_y_name(c'chex.deh')
		}
		// Still not found?
		if chex_deh == (unsafe { nil }) {
			i_error(c'Unable to find Chex Quest dehacked file (chex.deh).\nThe dehacked file is required in order to emulate\nchex.exe correctly.  It can be found in your nearest\n/idgames repository mirror at:\n\n   utils/exe_edit/patches/chexdeh.zip')
		}
		if !deh_load_file(chex_deh) {
			i_error(c'Failed to load chex.deh needed for emulating chex.exe.')
		}
	}
}

@[c: 'G_CheckDemoStatusAtExit']
fn g_check_demo_status_at_exit() {
	g_check_demo_status()
}

//
// D_DoomMain
//
@[c: 'D_DoomMain']
fn d_doom_main() {
	p := 0
	file := [256]i8{}
	demolumpname := [9]i8{}
	numiwadlumps := 0
	i_at_exit(d_endoom, false)
	// print banner
	i_print_banner(c'Chocolate Doom 3.0.0')
	deh_printf(c'Z_Init: Init zone memory allocation daemon. \n')
	z_init()
	//!
	// @category net
	//
	// Start a dedicated server, routing packets but not participating
	// in the game itself.
	//
	if m_check_parm(c'-dedicated') > 0 {
		C.printf(c'Dedicated server mode.\n')
		net_dedicated_server()
		// Never returns
	}
	//!
	// @category net
	//
	// Query the Internet master server for a global list of active
	// servers.
	//
	if m_check_parm(c'-search') {
		net_master_query()
		C.exit(0)
	}
	//!
	// @arg <address>
	// @category net
	//
	// Query the status of the server running on the given IP
	// address.
	//
	p = m_check_parm_with_args(c'-query', 1)
	if p {
		net_query_address(myargv[p + 1])
		C.exit(0)
	}
	//!
	// @category net
	//
	// Search the local LAN for running servers.
	//
	if m_check_parm(c'-localsearch') {
		net_lanq_uery()
		C.exit(0)
	}
	//!
	// @category game
	// @vanilla
	//
	// Disable monsters.
	//
	nomonsters = m_check_parm(c'-nomonsters')
	//!
	// @category game
	// @vanilla
	//
	// Monsters respawn after being killed.
	//
	respawnparm = m_check_parm(c'-respawn')
	//!
	// @category game
	// @vanilla
	//
	// Monsters move faster.
	//
	fastparm = m_check_parm(c'-fast')
	//!
	// @vanilla
	//
	// Developer mode. F1 saves a screenshot in the current working
	// directory.
	//
	devparm = m_check_parm(c'-devparm')
	i_display_fpsd_ots(devparm)
	//!
	// @category net
	// @vanilla
	//
	// Start a deathmatch game.
	//
	if m_check_parm(c'-deathmatch') {
		deathmatch = 1
	}
	//!
	// @category net
	// @vanilla
	//
	// Start a deathmatch 2.0 game.  Weapons do not stay in place and
	// all items respawn after 30 seconds.
	//
	if m_check_parm(c'-altdeath') {
		deathmatch = 2
	}
	if devparm {
		deh_printf(c'Development mode ON.\n')
	}
	// find which dir to use for config files
	//!
	// @category obscure
	// @platform windows
	// @vanilla
	//
	// Save configuration data and savegames in c:\doomdata,
	// allowing play from CD.
	//
	{
		// Auto-detect the configuration dir.
		m_set_config_dir((unsafe { nil }))
	}
	//!
	// @category game
	// @arg <x>
	// @vanilla
	//
	// Turbo mode.  The player's speed is multiplied by x%.  If unspecified,
	// x defaults to 200.  Values are rounded up to 10 and down to 400.
	//
	// if ( (p=M_CheckParm ("-turbo")) )
	p = m_check_parm(c'-turbo')
	if p {
		scale := 200
		if p < myargc - 1 {
			scale = C.atoi(myargv[p + 1])
		}
		if scale < 10 {
			scale = 10
		}
		if scale > 400 {
			scale = 400
		}
		deh_printf(c'turbo scale: %i%%\n', scale)
		forwardmove[0] = forwardmove[0] * scale / 100
		forwardmove[1] = forwardmove[1] * scale / 100
		sidemove[0] = sidemove[0] * scale / 100
		sidemove[1] = sidemove[1] * scale / 100
	}
	// init subsystems
	deh_printf(c'V_Init: allocate screens.\n')
	v_init()
	// Load configuration files before initialising other subsystems.
	deh_printf(c'M_LoadDefaults: Load system defaults.\n')
	m_set_config_filenames(c'default.cfg', c'chocolate-doom.cfg')
	d_bind_variables()
	m_load_defaults()
	// Save configuration at exit.
	i_at_exit(m_save_defaults, false)
	// Find main IWAD file and load it.
	iwadfile = d_find_iwad(((1 << GameMission_t.doom) | (1 << GameMission_t.doom2) | (1 << GameMission_t.pack_tnt) | (1 << GameMission_t.pack_plut) | (1 << GameMission_t.pack_chex) | (1 << GameMission_t.pack_hacx)),
		&gamemission)
	// None found?
	if iwadfile == (unsafe { nil }) {
		i_error(c"Game mode indeterminate.  No IWAD file was found.  Try\nspecifying one with the '-iwad' command line parameter.\n")
	}
	modifiedgame = false
	deh_printf(c'W_Init: Init WADfiles.\n')
	d_add_file(iwadfile)
	numiwadlumps = numlumps
	w_check_correct_iwad(GameMission_t.doom)
	// Now that we've loaded the IWAD, we can figure out what gamemission
	// we're playing and which version of Vanilla Doom we need to emulate.
	d_identify_version()
	init_game_version()
	// Check which IWAD variant we are using.
	if w_check_num_for_name(c'FREEDOOM') >= 0 {
		if w_check_num_for_name(c'FREEDM') >= 0 {
			gamevariant = GameVariant_t.freedm
		} else {
			gamevariant = GameVariant_t.freedoom
		}
	} else if w_check_num_for_name(c'DMENUPIC') >= 0 {
		gamevariant = GameVariant_t.bfgedition
	}
	//!
	// @category mod
	//
	// Disable automatic loading of Dehacked patches for certain
	// IWAD files.
	//
	if !m_parm_exists(c'-nodeh') {
		// Some IWADs have dehacked patches that need to be loaded for
		// them to be played properly.
		load_iwad_deh()
	}
	// Doom 3: BFG Edition includes modified versions of the classic
	// IWADs which can be identified by an additional DMENUPIC lump.
	// Furthermore, the M_GDHIGH lumps have been modified in a way that
	// makes them incompatible to Vanilla Doom and the modified version
	// of doom2.wad is missing the TITLEPIC lump.
	// We specifically check for DMENUPIC here, before PWADs have been
	// loaded which could probably include a lump of that name.
	if gamevariant == GameVariant_t.bfgedition {
		C.printf(c'BFG Edition: Using workarounds as needed.\n')
		// BFG Edition changes the names of the secret levels to
		// censor the Wolfenstein references. It also has an extra
		// secret level (MAP33). In Vanilla Doom (meaning the DOS
		// version), MAP33 overflows into the Plutonia level names
		// array, so HUSTR_33 is actually PHUSTR_1.
		deh_add_string_replacement(c'level 31: wolfenstein', c'level 31: idkfa')
		deh_add_string_replacement(c'level 32: grosse', c'level 32: keen')
		deh_add_string_replacement(c'level 1: congo', c'level 33: betray')
		// The BFG edition doesn't have the "low detail" menu option (fair
		// enough). But bizarrely, it reuses the M_GDHIGH patch as a label
		// for the options menu (says "Fullscreen:"). Why the perpetrators
		// couldn't just add a new graphic lump and had to reuse this one,
		// I don't know.
		//
		// The end result is that M_GDHIGH is too wide and causes the game
		// to crash. As a workaround to get a minimum level of support for
		// the BFG edition IWADs, use the "ON"/"OFF" graphics instead.
		deh_add_string_replacement(c'M_GDHIGH', c'M_MSGON')
		deh_add_string_replacement(c'M_GDLOW', c'M_MSGOFF')
		// The BFG edition's "Screen Size:" graphic has also been changed
		// to say "Gamepad:". Fortunately, it (along with the original
		// Doom IWADs) has an unused graphic that says "Display". So we
		// can swap this in instead, and it kind of makes sense.
		deh_add_string_replacement(c'M_SCRNSZ', c'M_DISP')
	}
	//!
	// @category mod
	//
	// Disable auto-loading of .wad and .deh files.
	//
	if !m_parm_exists(c'-noautoload') && gamemode != GameMode_t.shareware {
		autoload_dir := &i8(0)
		// common auto-loaded files for all Doom flavors
		if gamemission < GameMission_t.pack_chex {
			autoload_dir = m_get_autoload_dir(c'doom-all')
			deh_auto_load_patches(autoload_dir)
			w_auto_load_wad_s(autoload_dir)
			C.free(autoload_dir)
		}
		// auto-loaded files per IWAD
		autoload_dir = m_get_autoload_dir(d_save_game_iwadn_ame(gamemission))
		deh_auto_load_patches(autoload_dir)
		w_auto_load_wad_s(autoload_dir)
		C.free(autoload_dir)
	}
	// Load Dehacked patches specified on the command line with -deh.
	// Note that there's a very careful and deliberate ordering to how
	// Dehacked patches are loaded. The order we use is:
	//  1. IWAD dehacked patches.
	//  2. Command line dehacked patches specified with -deh.
	//  3. PWAD dehacked patches in DEHACKED lumps.
	deh_parse_command_line()
	// Load PWAD files.
	modifiedgame = w_parse_command_line()
	// Debug:
	//    W_PrintDirectory();
	//!
	// @arg <demo>
	// @category demo
	// @vanilla
	//
	// Play back the demo named demo.lmp.
	//
	p = m_check_parm_with_args(c'-playdemo', 1)
	if !p {
		//!
		// @arg <demo>
		// @category demo
		// @vanilla
		//
		// Play back the demo named demo.lmp, determining the framerate
		// of the screen.
		//
		p = m_check_parm_with_args(c'-timedemo', 1)
	}
	if p {
		uc_filename := C.strdup(myargv[p + 1])
		m_force_uppercase(uc_filename)
		// With Vanilla you have to specify the file without extension,
		// but make that optional.
		if m_string_ends_with(uc_filename, c'.LMP') {
			m_string_copy(file, myargv[p + 1], sizeof(file))
		} else {
			deh_snprintf(file, sizeof(file), c'%s.lmp', myargv[p + 1])
		}
		C.free(uc_filename)
		if d_add_file(file) {
			m_string_copy(demolumpname, lumpinfo[numlumps - 1].name, sizeof(demolumpname))
		} else {
			// If file failed to load, still continue trying to play
			// the demo in the same way as Vanilla Doom.  This makes
			// tricks like "-playdemo demo1" possible.
			m_string_copy(demolumpname, myargv[p + 1], sizeof(demolumpname))
		}
		C.printf(c'Playing demo %s.\n', file)
	}
	i_at_exit(g_check_demo_status_at_exit, true)
	// Generate the WAD hash table.  Speed things up a bit.
	w_generate_hash_table()
	// Load DEHACKED lumps from WAD files - but only if we give the right
	// command line parameter.
	//!
	// @category mod
	//
	// Load Dehacked patches from DEHACKED lumps contained in one of the
	// loaded PWAD files.
	//
	if m_parm_exists(c'-dehlump') {
		i := 0
		loaded := 0

		for i = numiwadlumps; i < numlumps; i++ {
			if !C.strncmp(lumpinfo[i].name, c'DEHACKED', 8) {
				deh_load_lump(i, false, false)
				loaded++
			}
		}
		C.printf(c'  loaded %i DEHACKED lumps from PWAD files.\n', loaded)
	}
	// Set the gamedescription string. This is only possible now that
	// we've finished loading Dehacked patches.
	d_set_game_description()
	savegamedir = m_get_save_game_dir(d_save_game_iwadn_ame(gamemission))
	// Check for -file in shareware
	if modifiedgame && gamevariant != GameVariant_t.freedoom {
		// These are the lumps that will be checked in IWAD,
		// if any one is not present, execution will be aborted.
		name := [c'e2m1', c'e2m2', c'e2m3', c'e2m4', c'e2m5', c'e2m6', c'e2m7', c'e2m8', c'e2m9',
			c'e3m1', c'e3m3', c'e3m3', c'e3m4', c'e3m5', c'e3m6', c'e3m7', c'e3m8', c'e3m9', c'dphoof',
			c'bfgga0', c'heada1', c'cybra1', c'spida1d1']!

		i := 0
		if gamemode == GameMode_t.shareware {
			i_error(deh_string(c'\nYou cannot -file with the shareware version. Register!'))
		}
		// Check for fake IWAD with right name,
		// but w/o all the lumps of the registered version.
		if gamemode == GameMode_t.registered {
			for i = 0; i < 23; i++ {
				if w_check_num_for_name(name[i]) < 0 {
					i_error(deh_string(c'\nThis is not the registered version.'))
				}
			}
		}
	}
	if w_check_num_for_name(c'SS_START') >= 0 || w_check_num_for_name(c'FF_END') >= 0 {
		i_print_divider()
		C.printf(c" WARNING: The loaded WAD file contains modified sprites or\n floor textures.  You may want to use the '-merge' command\n line option instead of '-file'.\n")
	}
	i_print_startup_banner(gamedescription)
	print_dehacked_banners()
	deh_printf(c'I_Init: Setting up machine state.\n')
	i_check_is_screensaver()
	i_init_timer()
	i_init_joystick()
	i_init_sound(true)
	i_init_music()
	C.printf(c'NET_Init: Init network subsystem.\n')
	net_init()
	// Initial netgame startup. Connect to server etc.
	d_connect_net_game()
	// get skill / episode / map from parms
	startskill = Skill_t.sk_medium
	startepisode = 1
	startmap = 1
	autostart = false
	//!
	// @category game
	// @arg <skill>
	// @vanilla
	//
	// Set the game skill, 1-5 (1: easiest, 5: hardest).  A skill of
	// 0 disables all monsters.
	//
	p = m_check_parm_with_args(c'-skill', 1)
	if p {
		startskill = myargv[p + 1][0] - `1`
		autostart = true
	}
	//!
	// @category game
	// @arg <n>
	// @vanilla
	//
	// Start playing on episode n (1-4)
	//
	p = m_check_parm_with_args(c'-episode', 1)
	if p {
		startepisode = myargv[p + 1][0] - `0`
		startmap = 1
		autostart = true
	}
	timelimit = 0
	//!
	// @arg <n>
	// @category net
	// @vanilla
	//
	// For multiplayer games: exit each level after n minutes.
	//
	p = m_check_parm_with_args(c'-timer', 1)
	if p {
		timelimit = C.atoi(myargv[p + 1])
	}
	//!
	// @category net
	// @vanilla
	//
	// Austin Virtual Gaming: end levels after 20 minutes.
	//
	p = m_check_parm(c'-avg')
	if p {
		timelimit = 20
	}
	//!
	// @category game
	// @arg [<x> <y> | <xy>]
	// @vanilla
	//
	// Start a game immediately, warping to ExMy (Doom 1) or MAPxy
	// (Doom 2)
	//
	p = m_check_parm_with_args(c'-warp', 1)
	if p {
		if gamemode == GameMode_t.commercial {
			startmap = C.atoi(myargv[p + 1])
		} else {
			startepisode = myargv[p + 1][0] - `0`
			if p + 2 < myargc {
				startmap = myargv[p + 2][0] - `0`
			} else {
				startmap = 1
			}
		}
		autostart = true
	}
	// Undocumented:
	// Invoked by setup to test the controls.
	p = m_check_parm(c'-testcontrols')
	if p > 0 {
		startepisode = 1
		startmap = 1
		autostart = true
		testcontrols = true
	}
	// Check for load game parameter
	// We do this here and save the slot number, so that the network code
	// can override it or send the load slot to other players.
	//!
	// @category game
	// @arg <s>
	// @vanilla
	//
	// Load the game in slot s.
	//
	p = m_check_parm_with_args(c'-loadgame', 1)
	if p {
		startloadgame = C.atoi(myargv[p + 1])
	} else {
		// Not loading a game
		startloadgame = -1
	}
	deh_printf(c'M_Init: Init miscellaneous info.\n')
	m_init()
	deh_printf(c'R_Init: Init DOOM refresh daemon - ')
	r_init()
	deh_printf(c'\nP_Init: Init Playloop state.\n')
	p_init()
	deh_printf(c'S_Init: Setting up sound.\n')
	s_init(sfxVolume * 8, musicVolume * 8)
	deh_printf(c'D_CheckNetGame: Checking network game status.\n')
	d_check_net_game()
	print_game_version()
	deh_printf(c'HU_Init: Setting up heads up display.\n')
	hu_init()
	deh_printf(c'ST_Init: Init status bar.\n')
	st_init()
	// If Doom II without a MAP01 lump, this is a store demo.
	// Moved this here so that MAP01 isn't constantly looked up
	// in the main loop.
	if gamemode == GameMode_t.commercial && w_check_num_for_name(c'map01') < 0 {
		storedemo = true
	}
	if m_check_parm_with_args(c'-statdump', 1) {
		i_at_exit(stat_dump, true)
		deh_printf(c'External statistics registered.\n')
	}
	//!
	// @arg <x>
	// @category demo
	// @vanilla
	//
	// Record a demo named x.lmp.
	//
	p = m_check_parm_with_args(c'-record', 1)
	if p {
		g_record_demo(myargv[p + 1])
		autostart = true
	}
	p = m_check_parm_with_args(c'-playdemo', 1)
	if p {
		singledemo = true
		// quit after one demo
		g_defered_play_demo(demolumpname)
		d_doom_loop()
		// never returns
	}
	p = m_check_parm_with_args(c'-timedemo', 1)
	if p {
		g_time_demo(demolumpname)
		d_doom_loop()
		// never returns
	}
	if startloadgame >= 0 {
		m_string_copy(file, p_save_game_file(startloadgame), sizeof(file))
		g_load_game(file)
	}
	if gameaction != Gameaction_t.ga_loadgame {
		if autostart || netgame {
			g_init_new(startskill, startepisode, startmap)
		} else { // 3
			d_start_title()
		}
		// start up intro loop
	}
	d_doom_loop()
	// never returns
}
