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
@[c: 'I_GetTime']
fn i_get_time() int

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
@[c: 'D_NonVanillaRecord']
fn d_non_vanilla_record(conditional bool, feature &i8) bool

// Check if it is permitted to play back a demo with a non-vanilla feature.
@[c: 'D_NonVanillaPlayback']
fn d_non_vanilla_playback(conditional bool, lumpnum int, feature &i8) bool

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
// skipped extern global testcontrols
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
// skipped extern global precache
// wipegamestate can be set to -1
//  to force a wipe on the next draw
// skipping global dup "wipegamestate"
// skipping global dup "mouseSensitivity"
// Needed to store the number of the dummy sky flat.
// Used for rendering,
//  as well as tracking projectiles etc.
// skipping global dup "skyflatnum"
// Netgame stuff (buffers and pointers, i.e. indices).
// skipping global dup "rndindex"
// skipping global dup "netcmds"
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

@[c: 'Z_Free']
fn z_free(ptr voidptr)

@[c: 'Z_CheckHeap']
fn z_check_heap()

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
//
//
//
// FINALE
//
// Called by main loop.
@[c: 'F_Responder']
fn f_responder(ev &Event_t) bool

// Called by main loop.
@[c: 'F_Ticker']
fn f_ticker()

// Called by main loop.
@[c: 'F_StartFinale']
fn f_start_finale()

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
//      Miscellaneous.
//
@[c: 'M_WriteFile']
fn m_write_file(name &i8, source voidptr, length int) bool

@[c: 'M_TempFile']
fn m_temp_file(s &i8) &i8

@[c: 'M_StringCopy']
fn m_string_copy(dest &i8, src &i8, dest_size usize) bool

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
// Called by main loop,
// only used for menu (skull cursor) animation.
// Called by main loop,
// draws the menus directly into the screen buffer.
// Called by D_DoomMain,
// loads the config file.
// Called by intro code to force menu up upon a keypress,
// does nothing if menu is already up.
@[c: 'M_StartControlPanel']
fn m_start_control_panel()

// skipping global dup "detailLevel"
// skipping global dup "screenblocks"
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
@[c: 'M_ClearRandom']
fn m_clear_random()

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
@[c: 'I_Quit']
fn i_quit()

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
//    System-specific keyboard/mouse input.
//
// I_StartTextInput begins text input, activating the on-screen keyboard
// (if one is used). The caller indicates that any entered text will be
// displayed in the rectangle given by the provided set of coordinates.
// I_StopTextInput finishes text input, deactivating the on-screen keyboard
// (if one is used).
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
//   Setup a game, startup stuff.
//
// skipping global dup "maplumpinfo"
// NOT called by W_Ticker. Fixme.
@[c: 'P_SetupLevel']
fn p_setup_level(episode int, map_ int, playermask int, skill Skill_t)

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
//	Savegame I/O, archiving, persistence.
//
// maximum size of a savegame description
// temporary filename to use while saving.
@[c: 'P_TempSaveGameFile']
fn p_temp_save_game_file() &i8

// filename to use for a savegame slot
@[c: 'P_SaveGameFile']
fn p_save_game_file(slot int) &i8

// Savegame file header read/write functions
@[c: 'P_ReadSaveGameHeader']
fn p_read_save_game_header() bool

@[c: 'P_WriteSaveGameHeader']
fn p_write_save_game_header(description &i8)

// Savegame end-of-file read/write functions
@[c: 'P_ReadSaveGameEOF']
fn p_read_save_game_eof() bool

@[c: 'P_WriteSaveGameEOF']
fn p_write_save_game_eof()

// Persistent storage/archiving.
// These are the load / save game routines.
@[c: 'P_ArchivePlayers']
fn p_archive_players()

@[c: 'P_UnArchivePlayers']
fn p_un_archive_players()

@[c: 'P_ArchiveWorld']
fn p_archive_world()

@[c: 'P_UnArchiveWorld']
fn p_un_archive_world()

@[c: 'P_ArchiveThinkers']
fn p_archive_thinkers()

@[c: 'P_UnArchiveThinkers']
fn p_un_archive_thinkers()

@[c: 'P_ArchiveSpecials']
fn p_archive_specials()

@[c: 'P_UnArchiveSpecials']
fn p_un_archive_specials()

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	?
//
// Called by C_Ticker,
// can call G_PlayerExited.
// Carries out all thinking of monsters and players.
@[c: 'P_Ticker']
fn p_ticker()

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
@[c: 'D_PageTicker']
fn d_page_ticker()

@[c: 'D_AdvanceDemo']
fn d_advance_demo()

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
//  Intermission.
//
//#include "v_video.h"
// States for the intermission
// Called by main loop, animate the intermission.
@[c: 'WI_Ticker']
fn wi_ticker()

// Called by main loop,
// draws the intermission directly into the screen buffer.
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
@[c: 'HU_Responder']
fn hu_responder(ev &Event_t) bool

@[c: 'HU_Ticker']
fn hu_ticker()

@[c: 'HU_dequeueChatChar']
fn hu_dequeue_chat_char() i8

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
// Called when the console player is spawned on each level.
// Called by startup code.
// States for status bar code.
// States for the chat code.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
@[c: 'AM_Responder']
fn am_responder(ev &Event_t) bool

// Called by main loop.
@[c: 'AM_Ticker']
fn am_ticker()

// Called by main loop,
// called instead of view drawer if automap active.
// Called to force the automap to quit
// if the level is completed while it is up.
@[c: 'AM_Stop']
fn am_stop()

// skipping global dup "cheat_amap"
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
@[c: 'StatCopy']
fn stat_copy(stats &Wbstartstruct_t)

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
// Draw a linear block of pixels into the view buffer.
// Draw a raw screen lump
// Temporarily switch to using a different buffer to draw graphics, etc.
// Return to using the normal screen buffer to draw graphics.
// Save a screenshot of the current screen to a file, named in the
// format described in the string passed to the function, eg.
// "DOOM%02i.pcx"
@[c: 'V_ScreenShot']
fn v_screen_shot(format &i8)

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
@[c: 'R_PointInSubsector']
fn r_point_in_subsector(x int, y int) &Subsector_t

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
@[c: 'R_FillBackScreen']
fn r_fill_back_screen()

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
@[c: 'P_SpawnMobj']
fn p_spawn_mobj(x int, y int, z int, type_ Mobjtype_t) &Mobj_t

@[c: 'P_RemoveMobj']
fn p_remove_mobj(th &Mobj_t)

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
@[c: 'P_CheckPosition']
fn p_check_position(thing &Mobj_t, x int, y int) bool

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
@[c: 'S_StartSound']
fn s_start_sound(origin voidptr, sound_id int)

// Stop sound for thing at <origin>
// Start music using <music_id> from sounds.h
// Start music using <music_id> from sounds.h,
//  and set whether looping
// query if music is playing
// Stops the music fer sure.
// Stop and resume music, during game PAUSE.
@[c: 'S_PauseSound']
fn s_pause_sound()

@[c: 'S_ResumeSound']
fn s_resume_sound()

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
//	Sky rendering.
//
// SKY, store the number for name.
// The sky map is 256*128*4 maps.
// skipping global dup "skytexture"
// skipping global dup "skytexturemid"
// Called whenever the view size changes.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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

@[c: 'G_InitNew']
fn g_init_new(skill Skill_t, episode int, map_ int)

// Can be called by the startup code or M_Responder.
// A normal game starts at map 1,
// but a warp test can start elsewhere
@[c: 'G_DeferedInitNew']
fn g_defered_init_new(skill Skill_t, episode int, map_ int)

@[c: 'G_DeferedPlayDemo']
fn g_defered_play_demo(demo &i8)

// Can be called by the startup code or M_Responder,
// calls P_SetupLevel or W_EnterWorld.
@[c: 'G_LoadGame']
fn g_load_game(name &i8)

@[c: 'G_DoLoadGame']
fn g_do_load_game()

// Called by M_Responder.
@[c: 'G_SaveGame']
fn g_save_game(slot int, description &i8)

// Only called by startup code.
@[c: 'G_RecordDemo']
fn g_record_demo(name &i8)

@[c: 'G_BeginRecording']
fn g_begin_recording()

@[c: 'G_TimeDemo']
fn g_time_demo(name &i8)

@[c: 'G_CheckDemoStatus']
fn g_check_demo_status() bool

@[c: 'G_ExitLevel']
fn g_exit_level()

@[c: 'G_SecretExitLevel']
fn g_secret_exit_level()

@[c: 'G_WorldDone']
fn g_world_done()

// Read current data from inputs and build a player movement command.
@[c: 'G_BuildTiccmd']
fn g_build_ticcmd(cmd &Ticcmd_t, maketic int)

@[c: 'G_Ticker']
fn g_ticker()

@[c: 'G_Responder']
fn g_responder(ev &Event_t) bool

@[c: 'G_ScreenShot']
fn g_screen_shot()

@[c: 'G_VanillaVersionCode']
fn g_vanilla_version_code() int

// skipped extern global vanilla_savegame_limit
// skipped extern global vanilla_demo_limit
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
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
//
// Needs access to LFB.
// Data.
// SKY handling - still the wrong place.
@[c: 'G_ReadDemoTiccmd']
fn g_read_demo_ticcmd(cmd &Ticcmd_t)

@[c: 'G_WriteDemoTiccmd']
fn g_write_demo_ticcmd(cmd &Ticcmd_t)

@[c: 'G_PlayerReborn']
fn g_player_reborn(player int)

@[c: 'G_DoReborn']
fn g_do_reborn(playernum int)

@[c: 'G_DoLoadLevel']
fn g_do_load_level()

@[c: 'G_DoNewGame']
fn g_do_new_game()

@[c: 'G_DoPlayDemo']
fn g_do_play_demo()

@[c: 'G_DoCompleted']
fn g_do_completed()

@[c: 'G_DoVictory']
fn g_do_victory()

@[c: 'G_DoWorldDone']
fn g_do_world_done()

@[c: 'G_DoSaveGame']
fn g_do_save_game()

// Gamestate the last time G_Ticker was called.
// If non-zero, exit the level after this number of minutes.
// send a pause event next tic
// send a save event next tic
// ok to save / end game
// if true, exit with report on completion
// for comparative timing purposes
// for comparative timing purposes  	
// only if started as net death
// only true if packets are broadcast
// player taking events and displaying
// view being displayed
// gametic at level start
// for intermission
// cph's doom 1.91 longtics hack
// low resolution turning for longtics
// quit after playing a demo from cmdline
// if true, load all graphics at start
// Invoked by setup to test controls
// parms for world map / intermission
// + slow turn
// Set to -1 or +1 to switch to the previous or next weapon.
// Used for prev/next weapon keys.
struct Weapon {
	weapon     Weapontype_t
	weapon_num Weapontype_t
}

// for accelerative turning
// allow [-1]
// mouse values are used once
// joystick values are repeated
// allow [-1]
@[c: 'G_CmdChecksum']
fn g_cmd_checksum(cmd &Ticcmd_t) int {
	// printf("CHECKSUM %d", sizeof(*cmd));
	i := usize(0)
	sum := 0
	for i = 0; i < sizeof(Ticcmd_t) / 4 - 1; i++ {
		sum += (&int(cmd))[i]
	}
	return sum
}

@[c: 'WeaponSelectable']
fn weapon_selectable(weapon Weapontype_t) bool {
	// Can't select the super shotgun in Doom 1.
	if weapon == Weapontype_t.wp_supershotgun && GameMission_t.doom == GameMission_t.doom {
		return false
	}
	// These weapons aren't available in shareware.
	if (weapon == Weapontype_t.wp_plasma || weapon == Weapontype_t.wp_bfg)
		&& gamemission == GameMission_t.doom && gamemode == GameMode_t.shareware {
		return false
	}
	// Can't select a weapon if we don't own it.
	if !players[consoleplayer].weaponowned[weapon] {
		return false
	}
	// Can't select the fist if we have the chainsaw, unless
	// we also have the berserk pack.
	if weapon == Weapontype_t.wp_fist
		&& players[consoleplayer].weaponowned[int(Weapontype_t.wp_chainsaw)]
		&& !players[consoleplayer].powers[int(Powertype_t.pw_strength)] {
		return false
	}
	return true
}

@[c: 'G_NextWeapon']
fn g_next_weapon(direction int) int {
	weapon := Weapontype_t{}
	start_i := 0
	i := 0

	// Find index in the table.
	if players[consoleplayer].pendingweapon == Weapontype_t.wp_nochange {
		weapon = players[consoleplayer].readyweapon
	} else {
		weapon = players[consoleplayer].pendingweapon
	}
	for i = 0; i < (sizeof(weapon_order_table) / sizeof(*weapon_order_table)); i++ {
		if weapon_order_table[i].weapon == weapon {
			break
		}
	}
	// Switch weapon. Don't loop forever.
	start_i = i
	for {
		i += direction
		i = (i + (sizeof(weapon_order_table) / sizeof(*weapon_order_table))) % (sizeof(weapon_order_table) / sizeof(*weapon_order_table))
		// while()
		if !(i != start_i && !weapon_selectable(weapon_order_table[i].weapon)) {
			break
		}
	}
	return weapon_order_table[i].weapon_num
}

//
// G_BuildTiccmd
// Builds a ticcmd from all of the available inputs
// or reads it from the demo buffer.
// If recording a demo, write it out
//
@[c: 'G_BuildTiccmd']
fn g_build_ticcmd(cmd &Ticcmd_t, maketic int) {
	i := 0
	strafe := false
	bstrafe := false
	speed := 0
	tspeed := 0
	forward := 0
	side := 0
	// printf("\n\nTAAAA SIZEOF=%d\n", sizeof(ticcmd_t));
	// printf("TAAAA len mousebuttons=%d\n", sizeof(mousebuttons));
	// printf("mousebstrafe=%d\n", mousebstrafe);
	C.memset(cmd, 0, sizeof(Ticcmd_t))
	cmd.consistancy = consistancy[consoleplayer][maketic % 128]
	strafe = gamekeydown[key_strafe] || mousebuttons[mousebstrafe] || joybuttons[joybstrafe]
	// fraggle: support the old "joyb_speed = 31" hack which
	// allowed an autorun effect
	speed = key_speed >= 256 || joybspeed >= 20 || gamekeydown[key_speed] || joybuttons[joybspeed]
	forward = 0
	side = forward
	// use two stage accelerative turning
	// on the keyboard and joystick
	if joyxmove < 0 || joyxmove > 0 || gamekeydown[key_right] || gamekeydown[key_left] {
		turnheld += ticdup
	} else { // 3
		turnheld = 0
	}
	if turnheld < 6 {
		tspeed = 2
	}
	// slow turn
	else { // 3
		tspeed = speed
	}
	// let movement keys cancel each other out
	if strafe {
		if gamekeydown[key_right] {
			// fprintf(stderr, "strafe right\n");
			side += sidemove[speed]
		}
		if gamekeydown[key_left] {
			//	fprintf(stderr, "strafe left\n");
			side -= sidemove[speed]
		}
		if joyxmove > 0 {
			side += sidemove[speed]
		}
		if joyxmove < 0 {
			side -= sidemove[speed]
		}
	} else {
		if gamekeydown[key_right] {
			cmd.angleturn -= angleturn[tspeed]
		}
		if gamekeydown[key_left] {
			cmd.angleturn += angleturn[tspeed]
		}
		if joyxmove > 0 {
			cmd.angleturn -= angleturn[tspeed]
		}
		if joyxmove < 0 {
			cmd.angleturn += angleturn[tspeed]
		}
	}
	if gamekeydown[key_up] {
		// fprintf(stderr, "up\n");
		forward += forwardmove[speed]
	}
	if gamekeydown[key_down] {
		// fprintf(stderr, "down\n");
		forward -= forwardmove[speed]
	}
	if joyymove < 0 {
		forward += forwardmove[speed]
	}
	if joyymove > 0 {
		forward -= forwardmove[speed]
	}
	if gamekeydown[key_strafeleft] || joybuttons[joybstrafeleft] || mousebuttons[mousebstrafeleft]
		|| joystrafemove < 0 {
		side -= sidemove[speed]
	}
	if gamekeydown[key_straferight] || joybuttons[joybstraferight]
		|| mousebuttons[mousebstraferight] || joystrafemove > 0 {
		side += sidemove[speed]
	}
	// buttons
	cmd.chatchar = hu_dequeue_chat_char()
	if gamekeydown[key_fire] || mousebuttons[mousebfire] || joybuttons[joybfire] {
		cmd.buttons |= Buttoncode_t.bt_attack
	}
	if gamekeydown[key_use] || joybuttons[joybuse] || mousebuttons[mousebuse] {
		cmd.buttons |= Buttoncode_t.bt_use
		// clear double clicks if hit use button
		dclicks = 0
	}
	// If the previous or next weapon button is pressed, the
	// next_weapon variable is set to change weapons when
	// we generate a ticcmd.  Choose a new weapon.
	if gamestate == Gamestate_t.gs_level && next_weapon != 0 {
		i = g_next_weapon(next_weapon)
		cmd.buttons |= Buttoncode_t.bt_change
		cmd.buttons |= i << Buttoncode_t.bt_weaponshift
	} else {
		// Check weapon keys.
		for i = 0; i < (sizeof(weapon_keys) / sizeof(*weapon_keys)); i++ {
			key := *weapon_keys[i]
			if gamekeydown[key] {
				cmd.buttons |= Buttoncode_t.bt_change
				cmd.buttons |= i << Buttoncode_t.bt_weaponshift
				break
			}
		}
	}
	next_weapon = 0
	// mouse
	if mousebuttons[mousebforward] {
		forward += forwardmove[speed]
	}
	if mousebuttons[mousebbackward] {
		forward -= forwardmove[speed]
	}
	if dclick_use {
		// forward double click
		if mousebuttons[mousebforward] != dclickstate && dclicktime > 1 {
			dclickstate = mousebuttons[mousebforward]
			if dclickstate {
				dclicks++
			}
			if dclicks == 2 {
				cmd.buttons |= Buttoncode_t.bt_use
				dclicks = 0
			} else { // 3
				dclicktime = 0
			}
		} else {
			dclicktime += ticdup
			if dclicktime > 20 {
				dclicks = 0
				dclickstate = 0
			}
		}
		// strafe double click
		bstrafe = mousebuttons[mousebstrafe] || joybuttons[joybstrafe]
		if bstrafe != dclickstate2 && dclicktime2 > 1 {
			dclickstate2 = bstrafe
			if dclickstate2 {
				dclicks2++
			}
			if dclicks2 == 2 {
				cmd.buttons |= Buttoncode_t.bt_use
				dclicks2 = 0
			} else { // 3
				dclicktime2 = 0
			}
		} else {
			dclicktime2 += ticdup
			if dclicktime2 > 20 {
				dclicks2 = 0
				dclickstate2 = 0
			}
		}
	}
	forward += mousey
	if strafe {
		side += mousex * 2
	} else { // 3
		cmd.angleturn -= mousex * 8
	}
	if mousex == 0 {
		// No movement in the previous frame
		testcontrols_mousespeed = 0
	}
	mousex = 0
	mousey = mousex
	if forward > (forwardmove[1]) {
		forward = (forwardmove[1])
	} else if forward < -(forwardmove[1]) {
		forward = -(forwardmove[1])
	}
	if side > (forwardmove[1]) {
		side = (forwardmove[1])
	} else if side < -(forwardmove[1]) {
		side = -(forwardmove[1])
	}
	cmd.forwardmove += forward
	cmd.sidemove += side
	// special buttons
	if sendpause {
		sendpause = false
		cmd.buttons = Buttoncode_t.bt_special | Buttoncode_t.bts_pause
	}
	if sendsave {
		sendsave = false
		cmd.buttons = Buttoncode_t.bt_special | Buttoncode_t.bts_savegame | (savegameslot << Buttoncode_t.bts_saveshift)
	}
	// low-res turning
	if lowres_turn {
		carry := 0
		desired_angleturn := i16(0)
		desired_angleturn = cmd.angleturn + carry
		// round angleturn to the nearest 256 unit boundary
		// for recording demos with single byte values for turn
		cmd.angleturn = (desired_angleturn + 128) & 65280
		// Carry forward the error from the reduced resolution to the
		// next tic, so that successive small movements can accumulate.
		carry = desired_angleturn - cmd.angleturn
	}
}

//
// G_DoLoadLevel
//
@[c: 'G_DoLoadLevel']
fn g_do_load_level() {
	i := 0
	// Set the sky map.
	// First thing, we have a dummy sky texture name,
	//  a flat. The data is in the WAD only because
	//  we look for an actual index, instead of simply
	//  setting one.
	skyflatnum = r_flat_num_for_name(deh_string(c'F_SKY1'))
	// The "Sky never changes in Doom II" bug was fixed in
	// the id Anthology version of doom2.exe for Final Doom.
	if gamemode == GameMode_t.commercial
		&& (gameversion == GameVersion_t.exe_final2 || gameversion == GameVersion_t.exe_chex) {
		skytexturename := &i8(0)
		if gamemap < 12 {
			skytexturename = c'SKY1'
		} else if gamemap < 21 {
			skytexturename = c'SKY2'
		} else {
			skytexturename = c'SKY3'
		}
		skytexturename = deh_string(skytexturename)
		skytexture = r_texture_num_for_name(skytexturename)
	}
	levelstarttic = gametic
	// for time calculation
	if wipegamestate == Gamestate_t.gs_level {
		wipegamestate = -1
	}
	// force a wipe
	gamestate = Gamestate_t.gs_level
	for i = 0; i < 4; i++ {
		turbodetected[i] = false
		if playeringame[i] && players[i].playerstate == Playerstate_t.pst_dead {
			players[i].playerstate = Playerstate_t.pst_reborn
		}
		frags_size := 16
		C.memset(players[i].frags, 0, frags_size)
		// QTODO

		// memset (players[i].frags,0,sizeof(players[i].frags));
	}
	p_setup_level(gameepisode, gamemap, 0, gameskill)
	displayplayer = consoleplayer
	// view the guy you are playing
	gameaction = Gameaction_t.ga_nothing
	z_check_heap()
	// clear cmd building stuff
	C.memset(gamekeydown, 0, sizeof(gamekeydown))
	joyxmove = 0
	joyymove = joyxmove
	joystrafemove = 0
	mousex = 0
	mousey = mousex
	sendpause = false
	sendsave = sendpause
	paused = false
	C.memset(mousearray, 0, sizeof(mousearray))
	C.memset(joyarray, 0, sizeof(joyarray))
	if testcontrols {
		players[consoleplayer].message = c'Press escape to quit.'
	}
}

@[c: 'SetJoyButtons']
fn set_joy_buttons(buttons_mask u32) {
	i := 0
	for i = 0; i < 20; i++ {
		button_on := (buttons_mask & (1 << i)) != 0
		// Detect button press:
		if !joybuttons[i] && button_on {
			// Weapon cycling:
			if i == joybprevweapon {
				next_weapon = -1
			} else if i == joybnextweapon {
				next_weapon = 1
			}
		}
		joybuttons[i] = button_on
	}
}

@[c: 'SetMouseButtons']
fn set_mouse_buttons(buttons_mask u32) {
	i := 0
	for i = 0; i < 8; i++ {
		button_on := (buttons_mask & (1 << i)) != 0
		// Detect button press:
		if !mousebuttons[i] && button_on {
			if i == mousebprevweapon {
				next_weapon = -1
			} else if i == mousebnextweapon {
				next_weapon = 1
			}
		}
		mousebuttons[i] = button_on
	}
}

//
// G_Responder
// Get info needed to make ticcmd_ts for the players.
//
@[c: 'G_Responder']
fn g_responder(ev &Event_t) bool {
	// allow spy mode changes even during the demo
	if gamestate == Gamestate_t.gs_level && ev.type_ == Evtype_t.ev_keydown && ev.data1 == key_spy
		&& (singledemo || !deathmatch) {
		// spy mode
		for {
			displayplayer++
			if displayplayer == 4 {
				displayplayer = 0
			}
			// while()
			if !(!playeringame[displayplayer] && displayplayer != consoleplayer) {
				break
			}
		}
		return true
	}
	// any other key pops up menu if in demos
	if gameaction == Gameaction_t.ga_nothing && !singledemo
		&& (demoplayback || gamestate == Gamestate_t.gs_demoscreen) {
		if ev.type_ == Evtype_t.ev_keydown
			|| (ev.type_ == Evtype_t.ev_mouse && ev.data1)
			|| (ev.type_ == Evtype_t.ev_joystick && ev.data1) {
			m_start_control_panel()
			return true
		}
		return false
	}
	if gamestate == Gamestate_t.gs_level {
		if hu_responder(ev) {
			return true
		}
		// chat ate the event
		if st_responder(ev) {
			return true
		}
		// status window ate it
		if am_responder(ev) {
			return true
		}
		// automap ate it
	}
	if gamestate == Gamestate_t.gs_finale {
		if f_responder(ev) {
			return true
		}
		// finale ate the event
	}
	if testcontrols && ev.type_ == Evtype_t.ev_mouse {
		// If we are invoked by setup to test the controls, save the
		// mouse speed so that we can display it on-screen.
		// Perform a low pass filter on this so that the thermometer
		// appears to move smoothly.
		testcontrols_mousespeed = C.abs(ev.data2)
	}
	// If the next/previous weapon keys are pressed, set the next_weapon
	// variable to change weapons when the next ticcmd is generated.
	if ev.type_ == Evtype_t.ev_keydown && ev.data1 == key_prevweapon {
		next_weapon = -1
	} else if ev.type_ == Evtype_t.ev_keydown && ev.data1 == key_nextweapon {
		next_weapon = 1
	}
	match ev.type_ {
		.ev_keydown { // case comp body kind=IfStmt is_enum=true
			if ev.data1 == key_pause {
				sendpause = true
			} else if ev.data1 < 256 {
				gamekeydown[ev.data1] = true
			}
			return true
			// eat key down events
		}
		.ev_keyup { // case comp body kind=IfStmt is_enum=true
			if ev.data1 < 256 {
				gamekeydown[ev.data1] = false
			}
			return false
			// always let key up events filter down
		}
		.ev_mouse { // case comp body kind=CallExpr is_enum=true
			set_mouse_buttons(ev.data1)
			mousex = ev.data2 * (mouseSensitivity + 5) / 10
			mousey = ev.data3 * (mouseSensitivity + 5) / 10
			return true
			// eat events
		}
		.ev_joystick { // case comp body kind=CallExpr is_enum=true
			set_joy_buttons(ev.data1)
			joyxmove = ev.data2
			joyymove = ev.data3
			joystrafemove = ev.data4
			return true
			// eat events
		}
		else {}
	}
	return false
}

//
// G_Ticker
// Make ticcmd_ts for the players.
//
@[c: 'G_Ticker']
fn g_ticker() {
	i := 0
	buf := 0
	cmd := &Ticcmd_t(0)
	// do player reborns if needed
	for i = 0; i < 4; i++ {
		if playeringame[i] && players[i].playerstate == Playerstate_t.pst_reborn {
			g_do_reborn(i)
		}
	}
	// do things to change the game state
	for gameaction != Gameaction_t.ga_nothing {
		match gameaction {
			.ga_loadlevel { // case comp body kind=CallExpr is_enum=true
				g_do_load_level()
			}
			.ga_newgame { // case comp body kind=CallExpr is_enum=true
				g_do_new_game()
			}
			.ga_loadgame { // case comp body kind=CallExpr is_enum=true
				g_do_load_game()
			}
			.ga_savegame { // case comp body kind=CallExpr is_enum=true
				g_do_save_game()
			}
			.ga_playdemo { // case comp body kind=CallExpr is_enum=true
				g_do_play_demo()
			}
			.ga_completed { // case comp body kind=CallExpr is_enum=true
				g_do_completed()
			}
			.ga_victory { // case comp body kind=CallExpr is_enum=true
				f_start_finale()
			}
			.ga_worlddone { // case comp body kind=CallExpr is_enum=true
				g_do_world_done()
			}
			.ga_screenshot { // case comp body kind=CallExpr is_enum=true
				v_screen_shot(c'DOOM%02i.%s')
				players[consoleplayer].message = deh_string(c'screen shot')
				gameaction = Gameaction_t.ga_nothing
			}
			.ga_nothing { // case comp body kind=BreakStmt is_enum=true
			}
			else {}
		}
	}
	// get commands, check consistancy,
	// and build new consistancy check
	buf = (gametic / ticdup) % 128
	for i = 0; i < 4; i++ {
		if playeringame[i] {
			cmd = &players[i].cmd
			C.memcpy(cmd, &netcmds[i], sizeof(Ticcmd_t))
			if demoplayback {
				g_read_demo_ticcmd(cmd)
			}
			if demorecording {
				g_write_demo_ticcmd(cmd)
			}
			// check for turbo cheats
			// check ~ 4 seconds whether to display the turbo message.
			// store if the turbo threshold was exceeded in any tics
			// over the past 4 seconds.  offset the checking period
			// for each player so messages are not displayed at the
			// same time.
			if cmd.forwardmove > 50 {
				turbodetected[i] = true
			}
			if (gametic & 31) == 0 && ((gametic >> 5) % 4) == i && turbodetected[i] {
				turbomessage := [80]i8{}
				// XTODO
				// extern char *player_names[4];
				m_snprintf(turbomessage, sizeof(turbomessage), c'%s is turbo!', player_names[i])
				players[consoleplayer].message = turbomessage
				turbodetected[i] = false
			}
			if netgame && !netdemo && !(gametic % ticdup) {
				if gametic > 128 && consistancy[i][buf] != cmd.consistancy {
					i_error(c'consistency failure (%i should be %i)', cmd.consistancy,
						consistancy[i][buf])
				}
				if players[i].mo {
					consistancy[i][buf] = players[i].mo.x
				} else { // 3
					consistancy[i][buf] = rndindex
				}
			}
		}
	}
	// check for special buttons
	for i = 0; i < 4; i++ {
		if playeringame[i] {
			if players[i].cmd.buttons & Buttoncode_t.bt_special {
				valera := 0
				qqq := Buttoncode_t.bts_pause
				match qqq {
					.bts_pause { // case comp body kind=BreakStmt is_enum=true
					}
					else {}
				}
				x := (players[i].cmd.buttons & Buttoncode_t.bt_specialmask)
				// switch (players[i].cmd.buttons & BT_SPECIALMASK)
				match x {
					u8(Buttoncode_t.bts_pause) { // case comp body kind=CompoundAssignOperator is_enum=false
						paused ^= 1
						if paused {
							s_pause_sound()
						} else { // 3
							s_resume_sound()
						}
					}
					u8(Buttoncode_t.bts_savegame) { // case comp body kind=IfStmt is_enum=false
						if !savedescription[0] {
							m_string_copy(savedescription, c'NET GAME', sizeof(savedescription))
						}
						savegameslot = (players[i].cmd.buttons & Buttoncode_t.bts_savemask) >> Buttoncode_t.bts_saveshift
						gameaction = Gameaction_t.ga_savegame
					}
					else {}
				}
			}
		}
	}
	// Have we just finished displaying an intermission screen?
	if oldgamestate == Gamestate_t.gs_intermission && gamestate != Gamestate_t.gs_intermission {
		wi_end()
	}
	oldgamestate = gamestate
	// do main actions
	match gamestate {
		.gs_level { // case comp body kind=CallExpr is_enum=true
			p_ticker()
			st_ticker()
			am_ticker()
			hu_ticker()
		}
		.gs_intermission { // case comp body kind=CallExpr is_enum=true
			wi_ticker()
		}
		.gs_finale { // case comp body kind=CallExpr is_enum=true
			f_ticker()
		}
		.gs_demoscreen { // case comp body kind=CallExpr is_enum=true
			d_page_ticker()
		}
		else {}
	}
}

//
// PLAYER STRUCTURE FUNCTIONS
// also see P_SpawnPlayer in P_Things
//
//
// G_InitPlayer
// Called at the start.
// Called by the game initialization functions.
//
@[c: 'G_InitPlayer']
fn g_init_player(player int) {
	// clear everything else to defaults
	g_player_reborn(player)
}

//
// G_PlayerFinishLevel
// Can when a player completes a level.
//
@[c: 'G_PlayerFinishLevel']
fn g_player_finish_level(player int) {
	p := &Player_t(0)
	p = &players[player]
	C.memset(p.powers, 0, sizeof(p.powers))
	C.memset(p.cards, 0, sizeof(p.cards))
	p.mo.flags &= ~Mobjflag_t.mf_shadow
	// cancel invisibility
	p.extralight = 0
	// cancel gun flashes
	p.fixedcolormap = 0
	// cancel ir gogles
	p.damagecount = 0
	// no palette changes
	p.bonuscount = 0
}

//
// G_PlayerReborn
// Called after a player dies
// almost everything is cleared and initialized
//
@[c: 'G_PlayerReborn']
fn g_player_reborn(player int) {
	p := &Player_t(0)
	i := 0
	frags := [4]int{}
	killcount := 0
	itemcount := 0
	secretcount := 0
	C.memcpy(frags, players[player].frags, sizeof(frags))
	killcount = players[player].killcount
	itemcount = players[player].itemcount
	secretcount = players[player].secretcount
	p = &players[player]
	C.memset(p, 0, sizeof(*p))
	C.memcpy(players[player].frags, frags, 16)
	// QTODOsizeof(players[player].frags));
	players[player].killcount = killcount
	players[player].itemcount = itemcount
	players[player].secretcount = secretcount
	p.usedown = true
	p.attackdown = p.usedown
	// don't do anything immediately
	p.playerstate = Playerstate_t.pst_live
	p.health = deh_initial_health
	// Use dehacked value
	p.readyweapon = Weapontype_t.wp_pistol
	p.pendingweapon = p.readyweapon
	p.weaponowned[int(Weapontype_t.wp_fist)] = true
	p.weaponowned[int(Weapontype_t.wp_pistol)] = true
	p.ammo[int(Ammotype_t.am_clip)] = deh_initial_bullets
	for i = 0; i < Ammotype_t.numammo; i++ {
		p.maxammo[i] = maxammo[i]
	}
}

//
// G_CheckSpot
// Returns false if the player cannot be respawned
// at the given mapthing_t spot
// because something is occupying it
//
@[c: 'P_SpawnPlayer']
fn p_spawn_player(mthing &Mapthing_t)

@[c: 'G_CheckSpot']
fn g_check_spot(playernum int, mthing &Mapthing_t) bool {
	x := 0
	y := 0
	ss := &Subsector_t(0)
	mo := &Mobj_t(0)
	i := 0
	if !players[playernum].mo {
		// first spawn of level, before corpses
		for i = 0; i < playernum; i++ {
			if players[i].mo.x == mthing.x << 16 && players[i].mo.y == mthing.y << 16 {
				return false
			}
		}
		return true
	}
	x = mthing.x << 16
	y = mthing.y << 16
	if !p_check_position(players[playernum].mo, x, y) {
		return false
	}
	// flush an old corpse if needed
	if bodyqueslot >= 32 {
		p_remove_mobj(bodyque[bodyqueslot % 32])
	}
	bodyque[bodyqueslot % 32] = players[playernum].mo
	bodyqueslot++
	// spawn a teleport fog
	ss = r_point_in_subsector(x, y)
	// The code in the released source looks like this:
	//
	//    an = ( ANG45 * (((unsigned int) mthing->angle)/45) )
	//         >> ANGLETOFINESHIFT;
	//    mo = P_SpawnMobj (x+20*finecosine[an], y+20*finesine[an]
	//                     , ss->sector->floorheight
	//                     , MT_TFOG);
	//
	// But 'an' can be a signed value in the DOS version. This means that
	// we get a negative index and the lookups into finecosine/finesine
	// end up dereferencing values in finetangent[].
	// A player spawning on a deathmatch start facing directly west spawns
	// "silently" with no spawn fog. Emulate this.
	//
	// This code is imported from PrBoom+.
	xa := 0
	ya := 0

	an := 0
	// This calculation overflows in Vanilla Doom, but here we deliberately
	// avoid integer overflow as it is undefined behavior, so the value of
	// 'an' will always be positive.
	an = (536870912 >> 19) * (int(mthing.angle) / 45)
	match an {
		4096 { // case comp body kind=BinaryOperator is_enum=false
			// -4096:
			xa = finetangent[2048]
			// finecosine[-4096]
			ya = finetangent[0]
			// finesine[-4096]
		}
		5120 { // case comp body kind=BinaryOperator is_enum=false
			// -3072:
			xa = finetangent[3072]
			// finecosine[-3072]
			ya = finetangent[1024]
			// finesine[-3072]
		}
		6144 { // case comp body kind=BinaryOperator is_enum=false
			// -2048:
			xa = finesine[0]
			// finecosine[-2048]
			ya = finetangent[2048]
			// finesine[-2048]
		}
		7168 { // case comp body kind=BinaryOperator is_enum=false
			// -1024:
			xa = finesine[1024]
			// finecosine[-1024]
			ya = finetangent[3072]
			// finesine[-1024]
		}
		0, 1024, 2048, 3072 {
			xa = finecosine[an]
			ya = finesine[an]

			xa = 0
			ya = xa
		}
		else {
			i_error(c'G_CheckSpot: unexpected angle %d', an)
		}
	}
	mo = p_spawn_mobj(x + 20 * xa, y + 20 * ya, ss.sector.floorheight, Mobjtype_t.mt_tfog)
	if players[consoleplayer].viewz != 1 {
		s_start_sound(mo, Sfxenum_t.sfx_telept)
	}
	// don't start sound on first frame
	return true
}

//
// G_DeathMatchSpawnPlayer
// Spawns a player at one of the random death match spots
// called at level load and each death
//
@[c: 'G_DeathMatchSpawnPlayer']
fn g_death_match_spawn_player(playernum int) {
	i := 0
	j := 0

	selections := 0
	selections = deathmatch_p - deathmatchstarts
	if selections < 4 {
		i_error(c'Only %i deathmatch spots, 4 required', selections)
	}
	for j = 0; j < 20; j++ {
		i = p_random() % selections
		if g_check_spot(playernum, &deathmatchstarts[i]) {
			deathmatchstarts[i].type_ = playernum + 1
			p_spawn_player(&deathmatchstarts[i])
			return
		}
	}
	// no good spot, so the player will probably get stuck
	p_spawn_player(&playerstarts[playernum])
}

//
// G_DoReborn
//
@[c: 'G_DoReborn']
fn g_do_reborn(playernum int) {
	i := 0
	if !netgame {
		// reload the level from scratch
		gameaction = Gameaction_t.ga_loadlevel
	} else {
		// respawn at the start
		// first dissasociate the corpse
		players[playernum].mo.player = (unsafe { nil })
		// spawn at random spot if in death match
		if deathmatch {
			g_death_match_spawn_player(playernum)
			return
		}
		if g_check_spot(playernum, &playerstarts[playernum]) {
			p_spawn_player(&playerstarts[playernum])
			return
		}
		// try to spawn at one of the other players spots
		for i = 0; i < 4; i++ {
			if g_check_spot(playernum, &playerstarts[i]) {
				playerstarts[i].type_ = playernum + 1
				// fake as other player
				p_spawn_player(&playerstarts[i])
				playerstarts[i].type_ = i + 1
				// restore
				return
			}
			// he's going to be inside something.  Too bad.
		}
		p_spawn_player(&playerstarts[playernum])
	}
}

@[c: 'G_ScreenShot']
fn g_screen_shot() {
	gameaction = Gameaction_t.ga_screenshot
}

// DOOM Par Times
// DOOM II Par Times
//
// G_DoCompleted
//
// skipping global dup "pagename"
@[c: 'G_ExitLevel']
fn g_exit_level() {
	secretexit = false
	gameaction = Gameaction_t.ga_completed
}

// Here's for the german edition.
@[c: 'G_SecretExitLevel']
fn g_secret_exit_level() {
	// IF NO WOLF3D LEVELS, NO SECRET EXIT!
	if gamemode == GameMode_t.commercial && w_check_num_for_name(c'map31') < 0 {
		secretexit = false
	} else { // 3
		secretexit = true
	}
	gameaction = Gameaction_t.ga_completed
}

@[c: 'G_DoCompleted']
fn g_do_completed() {
	i := 0
	gameaction = Gameaction_t.ga_nothing
	for i = 0; i < 4; i++ {
		if playeringame[i] {
			g_player_finish_level(i)
		}
	}
	// take away cards and stuff
	if automapactive {
		am_stop()
	}
	if gamemode != GameMode_t.commercial {
		// Chex Quest ends after 5 levels, rather than 8.
		if gameversion == GameVersion_t.exe_chex {
			if gamemap == 5 {
				gameaction = Gameaction_t.ga_victory
				return
			}
		} else {
			match gamemap {
				8 { // case comp body kind=BinaryOperator is_enum=false
					gameaction = Gameaction_t.ga_victory
					return
				}
				9 { // case comp body kind=ForStmt is_enum=false
					for i = 0; i < 4; i++ {
						players[i].didsecret = true
					}
				}
				else {}
			}
		}
	}
	//#if 0  Hmmm - why?
	if gamemap == 8 && gamemode != GameMode_t.commercial {
		// victory
		gameaction = Gameaction_t.ga_victory
		return
	}
	if gamemap == 9 && gamemode != GameMode_t.commercial {
		// exit secret level
		for i = 0; i < 4; i++ {
			players[i].didsecret = true
		}
	}
	//#endif
	wminfo.didsecret = players[consoleplayer].didsecret
	wminfo.epsd = gameepisode - 1
	wminfo.last = gamemap - 1
	// wminfo.next is 0 biased, unlike gamemap
	if gamemode == GameMode_t.commercial {
		if secretexit {
			match gamemap {
				15 { // case comp body kind=BinaryOperator is_enum=false
					wminfo.next = 30
				}
				31 { // case comp body kind=BinaryOperator is_enum=false
					wminfo.next = 31
				}
				else {}
			}
		} else {
			match gamemap {
				31, 32 {
					wminfo.next = 15
				}
				else {
					wminfo.next = gamemap
				}
			}
		}
	} else {
		if secretexit {
			wminfo.next = 8
		}
		// go to secret level
		else if gamemap == 9 {
			// returning from secret level
			match gameepisode {
				1 { // case comp body kind=BinaryOperator is_enum=false
					wminfo.next = 3
				}
				2 { // case comp body kind=BinaryOperator is_enum=false
					wminfo.next = 5
				}
				3 { // case comp body kind=BinaryOperator is_enum=false
					wminfo.next = 6
				}
				4 { // case comp body kind=BinaryOperator is_enum=false
					wminfo.next = 2
				}
				else {}
			}
		} else { // 3
			wminfo.next = gamemap
		}
		// go to next level
	}
	wminfo.maxkills = totalkills
	wminfo.maxitems = totalitems
	wminfo.maxsecret = totalsecret
	wminfo.maxfrags = 0
	// Set par time. Exceptions are added for purposes of
	// statcheck regression testing.
	if gamemode == GameMode_t.commercial {
		// map33 has no official time: initialize to zero
		if gamemap == 33 {
			wminfo.partime = 0
		} else {
			wminfo.partime = 35 * cpars[gamemap - 1]
		}
	}
	// Doom episode 4 doesn't have a par time, so this
	// overflows into the cpars array.
	else if gameepisode < 4 {
		wminfo.partime = 35 * pars[gameepisode][gamemap]
	} else {
		wminfo.partime = 35 * cpars[gamemap]
	}
	wminfo.pnum = consoleplayer
	for i = 0; i < 4; i++ {
		wminfo.plyr[i].in_ = playeringame[i]
		wminfo.plyr[i].skills = players[i].killcount
		wminfo.plyr[i].sitems = players[i].itemcount
		wminfo.plyr[i].ssecret = players[i].secretcount
		wminfo.plyr[i].stime = leveltime
		C.memcpy(wminfo.plyr[i].frags, players[i].frags, 16)
		// QTODO sizeof(wminfo.plyr[i].frags));
	}
	gamestate = Gamestate_t.gs_intermission
	viewactive = false
	automapactive = false
	stat_copy(&wminfo)
	wi_start(&wminfo)
}

//
// G_WorldDone
//
@[c: 'G_WorldDone']
fn g_world_done() {
	gameaction = Gameaction_t.ga_worlddone
	if secretexit {
		players[consoleplayer].didsecret = true
	}
	if gamemode == GameMode_t.commercial {
		match gamemap {
			15, 31 {
				if !secretexit {
				}
			}
			6, 11, 20, 30 {
				f_start_finale()
			}
			else {}
		}
	}
}

@[c: 'G_DoWorldDone']
fn g_do_world_done() {
	gamestate = Gamestate_t.gs_level
	gamemap = wminfo.next + 1
	g_do_load_level()
	gameaction = Gameaction_t.ga_nothing
	viewactive = true
}

//
// G_InitFromSavegame
// Can be called by the startup code or the menu task.
//
@[c: 'R_ExecuteSetViewSize']
fn r_execute_set_view_size()

@[c: 'G_LoadGame']
fn g_load_game(name &i8) {
	m_string_copy(savename, name, sizeof(savename))
	gameaction = Gameaction_t.ga_loadgame
}

@[c: 'G_DoLoadGame']
fn g_do_load_game() {
	savedleveltime := 0
	gameaction = Gameaction_t.ga_nothing
	save_stream = C.fopen(savename, c'rb')
	if save_stream == (unsafe { nil }) {
		i_error(c'Could not load savegame %s', savename)
	}
	savegame_error = false
	if !p_read_save_game_header() {
		C.fclose(save_stream)
		return
	}
	savedleveltime = leveltime
	// load a base level
	g_init_new(gameskill, gameepisode, gamemap)
	leveltime = savedleveltime
	// dearchive all the modifications
	p_un_archive_players()
	p_un_archive_world()
	p_un_archive_thinkers()
	p_un_archive_specials()
	if !p_read_save_game_eof() {
		i_error(c'Bad savegame')
	}
	C.fclose(save_stream)
	if setsizeneeded {
		r_execute_set_view_size()
	}
	// draw the pattern into the back screen
	r_fill_back_screen()
}

//
// G_SaveGame
// Called by the menu task.
// Description is a 24 byte text string
//
@[c: 'G_SaveGame']
fn g_save_game(slot int, description &i8) {
	savegameslot = slot
	m_string_copy(savedescription, description, sizeof(savedescription))
	sendsave = true
}

@[c: 'G_DoSaveGame']
fn g_do_save_game() {
	savegame_file := &i8(0)
	temp_savegame_file := &i8(0)
	recovery_savegame_file := &i8(0)
	recovery_savegame_file = (unsafe { nil })
	temp_savegame_file = p_temp_save_game_file()
	savegame_file = p_save_game_file(savegameslot)
	// Open the savegame file for writing.  We write to a temporary file
	// and then rename it at the end if it was successfully written.
	// This prevents an existing savegame from being overwritten by
	// a corrupted one, or if a savegame buffer overrun occurs.
	save_stream = C.fopen(temp_savegame_file, c'wb')
	if save_stream == (unsafe { nil }) {
		// Failed to save the game, so we're going to have to abort. But
		// to be nice, save to somewhere else before we call I_Error().
		recovery_savegame_file = m_temp_file(c'recovery.dsg')
		save_stream = C.fopen(recovery_savegame_file, c'wb')
		if save_stream == (unsafe { nil }) {
			i_error(c"Failed to open either '%s' or '%s' to write savegame.", temp_savegame_file,
				recovery_savegame_file)
		}
	}
	savegame_error = false
	p_write_save_game_header(savedescription)
	p_archive_players()
	p_archive_world()
	p_archive_thinkers()
	p_archive_specials()
	p_write_save_game_eof()
	// Enforce the same savegame size limit as in Vanilla Doom,
	// except if the vanilla_savegame_limit setting is turned off.
	if vanilla_savegame_limit && C.ftell(save_stream) > 180224 {
		i_error(c'Savegame buffer overrun')
	}
	// Finish up, close the savegame file.
	C.fclose(save_stream)
	if recovery_savegame_file != (unsafe { nil }) {
		// We failed to save to the normal location, but we wrote a
		// recovery file to the temp directory. Now we can bomb out
		// with an error.
		i_error(c"Failed to open savegame file '%s' for writing. But your game has been saved to '%s' for recovery.",
			temp_savegame_file, recovery_savegame_file)
	}
	// Now rename the temporary savegame file to the actual savegame
	// file, overwriting the old savegame if there was one there.
	C.remove(savegame_file)
	C.rename(temp_savegame_file, savegame_file)
	gameaction = Gameaction_t.ga_nothing
	m_string_copy(savedescription, c'', sizeof(savedescription))
	players[consoleplayer].message = deh_string(c'game saved.')
	// draw the pattern into the back screen
	r_fill_back_screen()
}

//
// G_InitNew
// Can be called by the startup code or the menu task,
// consoleplayer, displayplayer, playeringame[] should be set.
//
@[c: 'G_DeferedInitNew']
fn g_defered_init_new(skill Skill_t, episode int, map_ int) {
	d_skill = skill
	d_episode = episode
	d_map = map_
	gameaction = Gameaction_t.ga_newgame
}

@[c: 'G_DoNewGame']
fn g_do_new_game() {
	demoplayback = false
	netdemo = false
	netgame = false
	deathmatch = false
	playeringame[1] = 0
	playeringame[2] = playeringame[1]
	playeringame[3] = 0
	respawnparm = false
	fastparm = false
	nomonsters = false
	consoleplayer = 0
	g_init_new(d_skill, d_episode, d_map)
	gameaction = Gameaction_t.ga_nothing
}

@[c: 'G_InitNew']
fn g_init_new(skill Skill_t, episode int, map_ int) {
	skytexturename := &i8(0)
	i := 0
	if paused {
		paused = false
		s_resume_sound()
	}
	//
	//    // Note: This commented-out block of code was added at some point
	//    // between the DOS version(s) and the Doom source release. It isn't
	//    // found in disassemblies of the DOS version and causes IDCLEV and
	//    // the -warp command line parameter to behave differently.
	//    // This is left here for posterity.
	//
	//    // This was quite messy with SPECIAL and commented parts.
	//    // Supposedly hacks to make the latest edition work.
	//    // It might not work properly.
	//    if (episode < 1)
	//      episode = 1;
	//
	//    if ( gamemode == retail )
	//    {
	//      if (episode > 4)
	//	episode = 4;
	//    }
	//    else if ( gamemode == shareware )
	//    {
	//      if (episode > 1)
	//	   episode = 1;	// only start episode 1 on shareware
	//    }
	//    else
	//    {
	//      if (episode > 3)
	//	episode = 3;
	//    }
	//
	if skill > Skill_t.sk_nightmare {
		skill = Skill_t.sk_nightmare
	}
	if gameversion >= GameVersion_t.exe_ultimate {
		if episode == 0 {
			episode = 4
		}
	} else {
		if episode < 1 {
			episode = 1
		}
		if episode > 3 {
			episode = 3
		}
	}
	if episode > 1 && gamemode == GameMode_t.shareware {
		episode = 1
	}
	if map_ < 1 {
		map_ = 1
	}
	if map_ > 9 && gamemode != GameMode_t.commercial {
		map_ = 9
	}
	m_clear_random()
	if skill == Skill_t.sk_nightmare || respawnparm {
		respawnmonsters = true
	} else { // 3
		respawnmonsters = false
	}
	if fastparm || (skill == Skill_t.sk_nightmare && gameskill != Skill_t.sk_nightmare) {
		for i = Statenum_t.s_sarg_run_1; i <= Statenum_t.s_sarg_pain_2; i++ {
			states[i].tics >>= 1
		}
		mobjinfo[int(Mobjtype_t.mt_bruisershot)].speed = 20 * (1 << 16)
		mobjinfo[int(Mobjtype_t.mt_headshot)].speed = 20 * (1 << 16)
		mobjinfo[int(Mobjtype_t.mt_troopshot)].speed = 20 * (1 << 16)
	} else if skill != Skill_t.sk_nightmare && gameskill == Skill_t.sk_nightmare {
		for i = Statenum_t.s_sarg_run_1; i <= Statenum_t.s_sarg_pain_2; i++ {
			states[i].tics <<= 1
		}
		mobjinfo[int(Mobjtype_t.mt_bruisershot)].speed = 15 * (1 << 16)
		mobjinfo[int(Mobjtype_t.mt_headshot)].speed = 10 * (1 << 16)
		mobjinfo[int(Mobjtype_t.mt_troopshot)].speed = 10 * (1 << 16)
	}
	// force players to be initialized upon first level load
	for i = 0; i < 4; i++ {
		players[i].playerstate = Playerstate_t.pst_reborn
	}
	usergame = true
	// will be set false if a demo
	paused = false
	demoplayback = false
	automapactive = false
	viewactive = true
	gameepisode = episode
	gamemap = map_
	gameskill = skill
	viewactive = true
	// Set the sky to use.
	//
	// Note: This IS broken, but it is how Vanilla Doom behaves.
	// See http://doomwiki.org/wiki/Sky_never_changes_in_Doom_II.
	//
	// Because we set the sky here at the start of a game, not at the
	// start of a level, the sky texture never changes unless we
	// restore from a saved game.  This was fixed before the Doom
	// source release, but this IS the way Vanilla DOS Doom behaves.
	if gamemode == GameMode_t.commercial {
		skytexturename = deh_string(c'SKY3')
		skytexture = r_texture_num_for_name(skytexturename)
		if gamemap < 21 {
			skytexturename = deh_string(if gamemap < 12 { c'SKY1' } else { c'SKY2' })
			skytexture = r_texture_num_for_name(skytexturename)
		}
	} else {
		match gameepisode {
			1 { // case comp body kind=BinaryOperator is_enum=false
				skytexturename = c'SKY1'
			}
			2 { // case comp body kind=BinaryOperator is_enum=false
				skytexturename = c'SKY2'
			}
			3 { // case comp body kind=BinaryOperator is_enum=false
				skytexturename = c'SKY3'
			}
			4 { // case comp body kind=BinaryOperator is_enum=false
				// Special Edition sky
				skytexturename = c'SKY4'
			}
			else {}
		}
		skytexturename = deh_string(skytexturename)
		skytexture = r_texture_num_for_name(skytexturename)
	}
	g_do_load_level()
}

//
// DEMO RECORDING
//
@[c: 'G_ReadDemoTiccmd']
fn g_read_demo_ticcmd(cmd &Ticcmd_t) {
	if *demo_p == 128 {
		// end of demo data stream
		g_check_demo_status()
		return
	}
	cmd.forwardmove = (i8(*demo_p++))
	cmd.sidemove = (i8(*demo_p++))
	// If this is a longtics demo, read back in higher resolution
	if longtics {
		cmd.angleturn = *demo_p++
		cmd.angleturn |= (*demo_p++) << 8
	} else {
		cmd.angleturn = (u8(*demo_p++)) << 8
	}
	cmd.buttons = u8(*demo_p++)
}

// Increase the size of the demo buffer to allow unlimited demos
@[c: 'IncreaseDemoBuffer']
fn increase_demo_buffer() {
	current_length := 0
	new_demobuffer := &u8(0)
	new_demop := &u8(0)
	new_length := 0
	// Find the current size
	current_length = demoend - demobuffer
	// Generate a new buffer twice the size
	new_length = current_length * 2
	new_demobuffer = z_malloc(new_length, 1, 0)
	new_demop = new_demobuffer + (demo_p - demobuffer)
	// Copy over the old data
	C.memcpy(new_demobuffer, demobuffer, current_length)
	// Free the old buffer and point the demo pointers at the new buffer.
	z_free(demobuffer)
	demobuffer = new_demobuffer
	demo_p = new_demop
	demoend = demobuffer + new_length
}

@[c: 'G_WriteDemoTiccmd']
fn g_write_demo_ticcmd(cmd &Ticcmd_t) {
	demo_start := &u8(0)
	if gamekeydown[key_demo_quit] // press q to end demo recording
	  {
		g_check_demo_status()
	}
	demo_start = demo_p
	*demo_p = cmd.forwardmove
	demo_p++
	*demo_p = cmd.sidemove
	demo_p++
	// If this is a longtics demo, record in higher resolution
	if longtics {
		*demo_p = (cmd.angleturn & 255)
		demo_p++
		*demo_p = (cmd.angleturn >> 8) & 255
		demo_p++
	} else {
		*demo_p = cmd.angleturn >> 8
		demo_p++
	}
	*demo_p = cmd.buttons
	demo_p++
	// reset demo pointer back
	demo_p = demo_start
	if demo_p > demoend - 16 {
		if vanilla_demo_limit {
			// no more space
			g_check_demo_status()
			return
		} else {
			// Vanilla demo limit disabled: unlimited
			// demo lengths!
			increase_demo_buffer()
		}
	}
	g_read_demo_ticcmd(cmd)
	// make SURE it is exactly the same
}

//
// G_RecordDemo
//
@[c: 'G_RecordDemo']
fn g_record_demo(name &i8) {
	demoname_size := usize(0)
	i := 0
	maxsize := 0
	usergame = false
	demoname_size = C.strlen(name) + 5
	demoname = z_malloc(demoname_size, 1, (unsafe { nil }))
	m_snprintf(demoname, demoname_size, c'%s.lmp', name)
	maxsize = 131072
	//!
	// @arg <size>
	// @category demo
	// @vanilla
	//
	// Specify the demo buffer size (KiB)
	//
	i = m_check_parm_with_args(c'-maxdemo', 1)
	if i {
		maxsize = C.atoi(myargv[i + 1]) * 1024
	}
	demobuffer = z_malloc(maxsize, 1, (unsafe { nil }))
	demoend = demobuffer + maxsize
	demorecording = true
}

// Get the demo version code appropriate for the version set in gameversion.
@[c: 'G_VanillaVersionCode']
fn g_vanilla_version_code() int {
	match gameversion {
		.exe_doom_1_666 { // case comp body kind=ReturnStmt is_enum=true
			return 106
		}
		.exe_doom_1_7 { // case comp body kind=ReturnStmt is_enum=true
			return 107
		}
		.exe_doom_1_8 { // case comp body kind=ReturnStmt is_enum=true
			return 108
		}
		.exe_doom_1_9 { // case comp body kind=ReturnStmt is_enum=true
			return 109
		}
		else {
			// All other versions are variants on v1.9:
			return 109
		}
	}
}

@[c: 'G_BeginRecording']
fn g_begin_recording() {
	i := 0
	demo_p = demobuffer
	//!
	// @category demo
	//
	// Record a high resolution "Doom 1.91" demo.
	//
	longtics = d_non_vanilla_record(m_parm_exists(c'-longtics'), c'Doom 1.91 demo format')
	// If not recording a longtics demo, record in low res
	lowres_turn = !longtics
	if longtics {
		*demo_p = 111
		demo_p++
	} else if gameversion > GameVersion_t.exe_doom_1_2 {
		*demo_p = g_vanilla_version_code()
		demo_p++
	}
	*demo_p = gameskill
	demo_p++
	*demo_p = gameepisode
	demo_p++
	*demo_p = gamemap
	demo_p++
	if longtics || gameversion > GameVersion_t.exe_doom_1_2 {
		*demo_p = deathmatch
		demo_p++
		*demo_p = respawnparm
		demo_p++
		*demo_p = fastparm
		demo_p++
		*demo_p = nomonsters
		demo_p++
		*demo_p = consoleplayer
		demo_p++
	}
	for i = 0; i < 4; i++ {
		*demo_p = playeringame[i]
		demo_p++
	}
}

//
// G_PlayDemo
//
@[c: 'G_DeferedPlayDemo']
fn g_defered_play_demo(name &i8) {
	defdemoname = name
	gameaction = Gameaction_t.ga_playdemo
}

// Generate a string describing a demo version
@[c: 'DemoVersionDescription']
fn demo_version_description(version int) &i8 {
	resultbuf := [16]i8{}
	match version {
		104 { // case comp body kind=ReturnStmt is_enum=false
			return c'v1.4'
		}
		105 { // case comp body kind=ReturnStmt is_enum=false
			return c'v1.5'
		}
		106 { // case comp body kind=ReturnStmt is_enum=false
			return c'v1.6/v1.666'
		}
		107 { // case comp body kind=ReturnStmt is_enum=false
			return c'v1.7/v1.7a'
		}
		108 { // case comp body kind=ReturnStmt is_enum=false
			return c'v1.8'
		}
		109 { // case comp body kind=ReturnStmt is_enum=false
			return c'v1.9'
		}
		111 { // case comp body kind=ReturnStmt is_enum=false
			return c'v1.91 hack demo?'
		}
		else {}
	}
	// Unknown version.  Perhaps this is a pre-v1.4 IWAD?  If the version
	// byte is in the range 0-4 then it can be a v1.0-v1.2 demo.
	if version >= 0 && version <= 4 {
		return c'v1.0/v1.1/v1.2'
	} else {
		m_snprintf(resultbuf, sizeof(resultbuf), c'%i.%i (unknown)', version / 100, version % 100)
		return resultbuf
	}
}

@[c: 'G_DoPlayDemo']
fn g_do_play_demo() {
	skill := Skill_t{}
	i := 0
	lumpnum := 0
	episode := 0
	map_ := 0

	demoversion := 0
	olddemo := false
	lumpnum = w_get_num_for_name(defdemoname)
	gameaction = Gameaction_t.ga_nothing
	demobuffer = w_cache_lump_num(lumpnum, 1)
	demo_p = demobuffer
	demoversion = *demo_p++
	if demoversion >= 0 && demoversion <= 4 {
		olddemo = true
		demo_p--
	}
	longtics = false
	// Longtics demos use the modified format that is generated by cph's
	// hacked "v1.91" doom exe. This is a non-vanilla extension.
	if d_non_vanilla_playback(demoversion == 111, lumpnum, c'Doom 1.91 demo format') {
		longtics = true
	} else if demoversion != g_vanilla_version_code() && !(gameversion <= GameVersion_t.exe_doom_1_2
		&& olddemo) {
		message := c'Demo is from a different game version!(read %d, should be %d)*** You may need to upgrade your version of Doom to v1 ***    See: https://www.doomworld.com/classicdoom/info/patches.php    This appears to be %s.'
		i_error(message, demoversion, g_vanilla_version_code(), demo_version_description(demoversion))
	}
	skill = *demo_p++
	episode = *demo_p++
	map_ = *demo_p++
	if !olddemo {
		deathmatch = *demo_p++
		respawnparm = *demo_p++
		fastparm = *demo_p++
		nomonsters = *demo_p++
		consoleplayer = *demo_p++
	} else {
		deathmatch = 0
		respawnparm = 0
		fastparm = 0
		nomonsters = 0
		consoleplayer = 0
	}
	for i = 0; i < 4; i++ {
		playeringame[i] = *demo_p++
	}
	if playeringame[1] || m_check_parm(c'-solo-net') > 0 || m_check_parm(c'-netdemo') > 0 {
		netgame = true
		netdemo = true
	}
	// don't spend a lot of time in loadlevel
	precache = false
	g_init_new(skill, episode, map_)
	precache = true
	starttime = i_get_time()
	usergame = false
	demoplayback = true
}

//
// G_TimeDemo
//
@[c: 'G_TimeDemo']
fn g_time_demo(name &i8) {
	//!
	// @category video
	// @vanilla
	//
	// Disable rendering the screen entirely.
	//
	nodrawers = m_check_parm(c'-nodraw')
	timingdemo = true
	singletics = true
	defdemoname = name
	gameaction = Gameaction_t.ga_playdemo
}

//
//===================
//=
//= G_CheckDemoStatus
//=
//= Called after a death or level completion to allow demos to be cleaned up
//= Returns true if a new demo loop action will take place
//===================
//
@[c: 'G_CheckDemoStatus']
fn g_check_demo_status() bool {
	endtime := 0
	if timingdemo {
		fps := f32(0.0)
		realtics := 0
		endtime = i_get_time()
		realtics = endtime - starttime
		fps = (f32(gametic) * 35) / realtics
		// Prevent recursive calls
		timingdemo = false
		demoplayback = false
		i_error(c'timed %i gametics in %i realtics (%f fps)', gametic, realtics, fps)
	}
	if demoplayback {
		w_release_lump_name(defdemoname)
		demoplayback = false
		netdemo = false
		netgame = false
		deathmatch = false
		playeringame[1] = 0
		playeringame[2] = 0
		playeringame[3] = 0
		respawnparm = false
		fastparm = false
		nomonsters = false
		consoleplayer = 0
		if singledemo {
			i_quit()
		} else { // 3
			d_advance_demo()
		}
		return true
	}
	if demorecording {
		*demo_p = 128
		demo_p++
		m_write_file(demoname, demobuffer, demo_p - demobuffer)
		z_free(demobuffer)
		demorecording = false
		i_error(c'Demo %s recorded', demoname)
	}
	return false
}
