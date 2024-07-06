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
// Needed to store the number of the dummy sky flat.
// Used for rendering,
//  as well as tracking projectiles etc.
// skipping global dup "skyflatnum"
// Netgame stuff (buffers and pointers, i.e. indices).
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
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
//  Nil.
//
//
// MISC
//
// Returns the position of the given parameter
// in the arg list (0 if not found).
// Same as M_CheckParm, but checks that num_args arguments are available
// following the specified argument.
@[c: 'M_CheckParmWithArgs']
fn m_check_parm_with_args(check &i8, num_args int) int

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
//      Miscellaneous.
//
@[c: 'M_StrToInt']
fn m_str_to_int(str &i8, result &int) bool

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
@[c: 'R_FlatNumForName']
fn r_flat_num_for_name(name &i8) int

// Called by P_Ticker for switches and animations,
// returns the texture number for the texture name.
@[c: 'R_TextureNumForName']
fn r_texture_num_for_name(name &i8) int

@[c: 'R_CheckTextureNumForName']
fn r_check_texture_num_for_name(name &i8) int

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
@[c: 'P_AddThinker']
fn p_add_thinker(thinker &Thinker_t)

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
//      Define values for map objects
// at game start
@[c: 'P_InitPicAnims']
fn p_init_pic_anims()

// at map load
@[c: 'P_SpawnSpecials']
fn p_spawn_specials()

// every tic
@[c: 'P_UpdateSpecials']
fn p_update_specials()

// when needed
@[c: 'P_ShootSpecialLine']
fn p_shoot_special_line(thing &Mobj_t, line &Line_t)

@[c: 'P_CrossSpecialLine']
fn p_cross_special_line(linenum int, side int, thing &Mobj_t)

@[c: 'P_PlayerInSpecialSector']
fn p_player_in_special_sector(player &Player_t)

@[c: 'twoSided']
fn two_sided(sector int, line int) int

@[c: 'getSector']
fn get_sector(current_sector int, line int, side int) &Sector_t

@[c: 'getSide']
fn get_side(current_sector int, line int, side int) &Side_t

@[c: 'P_FindLowestFloorSurrounding']
fn p_find_lowest_floor_surrounding(sec &Sector_t) int

@[c: 'P_FindHighestFloorSurrounding']
fn p_find_highest_floor_surrounding(sec &Sector_t) int

@[c: 'P_FindNextHighestFloor']
fn p_find_next_highest_floor(sec &Sector_t, currentheight int) int

@[c: 'P_FindLowestCeilingSurrounding']
fn p_find_lowest_ceiling_surrounding(sec &Sector_t) int

@[c: 'P_FindHighestCeilingSurrounding']
fn p_find_highest_ceiling_surrounding(sec &Sector_t) int

@[c: 'P_FindSectorFromLineTag']
fn p_find_sector_from_line_tag(line &Line_t, start int) int

@[c: 'P_FindMinSurroundingLight']
fn p_find_min_surrounding_light(sector &Sector_t, max int) int

@[c: 'getNextSector']
fn get_next_sector(line &Line_t, sec &Sector_t) &Sector_t

//
// SPECIAL
//
@[c: 'EV_DoDonut']
fn ev_do_donut(line &Line_t) int

//
// P_LIGHTS
//
@[c: 'P_SpawnFireFlicker']
fn p_spawn_fire_flicker(sector &Sector_t)

@[c: 'P_SpawnLightFlash']
fn p_spawn_light_flash(sector &Sector_t)

@[c: 'P_SpawnStrobeFlash']
fn p_spawn_strobe_flash(sector &Sector_t, fast_or_slow int, in_sync int)

@[c: 'EV_StartLightStrobing']
fn ev_start_light_strobing(line &Line_t)

@[c: 'EV_TurnTagLightsOff']
fn ev_turn_tag_lights_off(line &Line_t)

@[c: 'EV_LightTurnOn']
fn ev_light_turn_on(line &Line_t, bright int)

@[c: 'P_SpawnGlowingLight']
fn p_spawn_glowing_light(sector &Sector_t)

//
// P_SWITCH
//
// max # of wall switches in a level
// 4 players, 4 buttons each at once, max.
// 1 second, in ticks.
// skipping global dup "buttonlist"
@[c: 'P_ChangeSwitchTexture']
fn p_change_switch_texture(line &Line_t, use_again int)

//
// P_PLATS
//
@[c: 'EV_DoPlat']
fn ev_do_plat(line &Line_t, type_ Plattype_e, amount int) int

@[c: 'EV_StopPlat']
fn ev_stop_plat(line &Line_t)

//
// P_DOORS
//
@[c: 'EV_DoDoor']
fn ev_do_door(line &Line_t, type_ Vldoor_e) int

@[c: 'P_SpawnDoorCloseIn30']
fn p_spawn_door_close_in30(sec &Sector_t)

@[c: 'P_SpawnDoorRaiseIn5Mins']
fn p_spawn_door_raise_in5_mins(sec &Sector_t, secnum int)

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
@[c: 'EV_DoCeiling']
fn ev_do_ceiling(line &Line_t, type_ Ceiling_e) int

@[c: 'EV_CeilingCrushStop']
fn ev_ceiling_crush_stop(line &Line_t) int

//
// P_FLOOR
//
@[c: 'EV_BuildStairs']
fn ev_build_stairs(line &Line_t, type_ Stair_e) int

@[c: 'EV_DoFloor']
fn ev_do_floor(line &Line_t, floortype Floor_e) int

@[c: 'T_MoveFloor']
fn t_move_floor(floor &Floormove_t)

//
// P_TELEPT
//
@[c: 'EV_Teleport']
fn ev_teleport(line &Line_t, side int, thing &Mobj_t) int

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
@[c: 'G_ExitLevel']
fn g_exit_level()

@[c: 'G_SecretExitLevel']
fn g_secret_exit_level()

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
//	Implements special effects:
//	Texture animation, height or lighting changes
//	 according to adjacent sectors, respective
//	 utility functions, etc.
//	Line Tag handling. Line and Sector triggers.
//
// State.
// Data.
//
// Animating textures and planes
// There is another animplane_t used in wi_stuff, unrelated.
//
struct Animplane_t {
	istexture bool
	picnum    int
	basepic   int
	numpics   int
	speed     int
}

//
//      source animation definition
//
struct Animdef_t {
	istexture int
	// if false, it is a flat
	endname   [9]i8
	startname [9]i8
	speed     int
}

//
// P_InitPicAnims
//
// Floor/ceiling animation sequences,
//  defined by first and last frame,
//  i.e. the flat (64x64 tile) name to
//  be used.
// The full animation sequence is given
//  using all the flats between the start
//  and end entry, in the order found in
//  the WAD file.
//
//
//      Animating line specials
//
@[c: 'P_InitPicAnims']
fn p_init_pic_anims() {
	i := 0
	//	Init animation
	lastanim = animplanes
	for i = 0; animdefs[i].istexture != -1; i++ {
		startname := &i8(0)
		endname := &i8(0)

		startname = deh_string(animdefs[i].startname)
		endname = deh_string(animdefs[i].endname)
		if animdefs[i].istexture {
			// different episode ?
			if r_check_texture_num_for_name(startname) == -1 {
				continue
			}
			lastanim.picnum = r_texture_num_for_name(endname)
			lastanim.basepic = r_texture_num_for_name(startname)
		} else {
			if w_check_num_for_name(startname) == -1 {
				continue
			}
			lastanim.picnum = r_flat_num_for_name(endname)
			lastanim.basepic = r_flat_num_for_name(startname)
		}
		lastanim.istexture = animdefs[i].istexture
		lastanim.numpics = lastanim.picnum - lastanim.basepic + 1
		if lastanim.numpics < 2 {
			i_error(c'P_InitPicAnims: bad cycle from %s to %s', startname, endname)
		}
		lastanim.speed = animdefs[i].speed
		lastanim++
	}
}

//
// UTILITIES
//
//
// getSide()
// Will return a side_t*
//  given the number of the current sector,
//  the line number, and the side (0/1) that you want.
//
@[c: 'getSide']
fn get_side(current_sector int, line int, side int) &Side_t {
	return &sides[(sectors[current_sector].lines[line]).sidenum[side]]
}

//
// getSector()
// Will return a sector_t*
//  given the number of the current sector,
//  the line number and the side (0/1) that you want.
//
@[c: 'getSector']
fn get_sector(current_sector int, line int, side int) &Sector_t {
	return sides[(sectors[current_sector].lines[line]).sidenum[side]].sector
}

//
// twoSided()
// Given the sector number and the line number,
//  it will tell you whether the line is two-sided or not.
//
@[c: 'twoSided']
fn two_sided(sector int, line int) int {
	return (sectors[sector].lines[line]).flags & 4
}

//
// getNextSector()
// Return sector_t * of sector next to current.
// NULL if not two-sided line
//
@[c: 'getNextSector']
fn get_next_sector(line &Line_t, sec &Sector_t) &Sector_t {
	if !(line.flags & 4) {
		return unsafe { nil }
	}
	if line.frontsector == sec {
		return line.backsector
	}
	return line.frontsector
}

//
// P_FindLowestFloorSurrounding()
// FIND LOWEST FLOOR HEIGHT IN SURROUNDING SECTORS
//
@[c: 'P_FindLowestFloorSurrounding']
fn p_find_lowest_floor_surrounding(sec &Sector_t) int {
	i := 0
	check := &Line_t(0)
	other := &Sector_t(0)
	floor := sec.floorheight
	for i = 0; i < sec.linecount; i++ {
		check = sec.lines[i]
		other = get_next_sector(check, sec)
		if !other {
			continue
		}
		if other.floorheight < floor {
			floor = other.floorheight
		}
	}
	return floor
}

//
// P_FindHighestFloorSurrounding()
// FIND HIGHEST FLOOR HEIGHT IN SURROUNDING SECTORS
//
@[c: 'P_FindHighestFloorSurrounding']
fn p_find_highest_floor_surrounding(sec &Sector_t) int {
	i := 0
	check := &Line_t(0)
	other := &Sector_t(0)
	floor := -500 * (1 << 16)
	for i = 0; i < sec.linecount; i++ {
		check = sec.lines[i]
		other = get_next_sector(check, sec)
		if !other {
			continue
		}
		if other.floorheight > floor {
			floor = other.floorheight
		}
	}
	return floor
}

//
// P_FindNextHighestFloor
// FIND NEXT HIGHEST FLOOR IN SURROUNDING SECTORS
// Note: this should be doable w/o a fixed array.
// Thanks to entryway for the Vanilla overflow emulation.
// 20 adjoining sectors max!
@[c: 'P_FindNextHighestFloor']
fn p_find_next_highest_floor(sec &Sector_t, currentheight int) int {
	i := 0
	h := 0
	min := 0
	check := &Line_t(0)
	other := &Sector_t(0)
	height := currentheight
	heightlist := [22]int{}
	for i = 0; i < sec.linecount; i++ {
		check = sec.lines[i]
		other = get_next_sector(check, sec)
		if !other {
			continue
		}
		if other.floorheight > height {
			// Emulation of memory (stack) overflow
			if h == 20 + 1 {
				height = other.floorheight
			} else if h == 20 + 2 {
				// Fatal overflow: game crashes at 22 sectors
				i_error(c'Sector with more than 22 adjoining sectors. Vanilla will crash here')
			}
			heightlist[h++] = other.floorheight
		}
	}
	// Find lowest height in list
	if !h {
		return currentheight
	}
	min = heightlist[0]
	// Range checking?
	for i = 1; i < h; i++ {
		if heightlist[i] < min {
			min = heightlist[i]
		}
	}
	return min
}

//
// FIND LOWEST CEILING IN THE SURROUNDING SECTORS
//
@[c: 'P_FindLowestCeilingSurrounding']
fn p_find_lowest_ceiling_surrounding(sec &Sector_t) int {
	i := 0
	check := &Line_t(0)
	other := &Sector_t(0)
	height := 2147483647
	for i = 0; i < sec.linecount; i++ {
		check = sec.lines[i]
		other = get_next_sector(check, sec)
		if !other {
			continue
		}
		if other.ceilingheight < height {
			height = other.ceilingheight
		}
	}
	return height
}

//
// FIND HIGHEST CEILING IN THE SURROUNDING SECTORS
//
@[c: 'P_FindHighestCeilingSurrounding']
fn p_find_highest_ceiling_surrounding(sec &Sector_t) int {
	i := 0
	check := &Line_t(0)
	other := &Sector_t(0)
	height := 0
	for i = 0; i < sec.linecount; i++ {
		check = sec.lines[i]
		other = get_next_sector(check, sec)
		if !other {
			continue
		}
		if other.ceilingheight > height {
			height = other.ceilingheight
		}
	}
	return height
}

//
// RETURN NEXT SECTOR # THAT LINE TAG REFERS TO
//
@[c: 'P_FindSectorFromLineTag']
fn p_find_sector_from_line_tag(line &Line_t, start int) int {
	i := 0
	for i = start + 1; i < numsectors; i++ {
		if sectors[i].tag == line.tag {
			return i
		}
	}
	return -1
}

//
// Find minimum light from an adjacent sector
//
@[c: 'P_FindMinSurroundingLight']
fn p_find_min_surrounding_light(sector &Sector_t, max int) int {
	i := 0
	min := 0
	line := &Line_t(0)
	check := &Sector_t(0)
	min = max
	for i = 0; i < sector.linecount; i++ {
		line = sector.lines[i]
		check = get_next_sector(line, sector)
		if !check {
			continue
		}
		if check.lightlevel < min {
			min = check.lightlevel
		}
	}
	return min
}

//
// EVENTS
// Events are operations triggered by using, crossing,
// or shooting special lines, or by timed thinkers.
//
//
// P_CrossSpecialLine - TRIGGER
// Called every time a thing origin is about
//  to cross a line with a non 0 special.
//
@[c: 'P_CrossSpecialLine']
fn p_cross_special_line(linenum int, side int, thing &Mobj_t) {
	line := &Line_t(0)
	ok := 0
	line = &lines[linenum]
	if gameversion <= GameVersion_t.exe_doom_1_2 {
		if line.special > 98 && line.special != 104 {
			return
		}
	} else {
		//	Triggers that other things can activate
		if !thing.player {
			// Things that should NOT trigger specials...
			match thing.type_ {
				.mt_rocket, .mt_plasma, .mt_bfg, .mt_troopshot, .mt_headshot, .mt_bruisershot {
					return
				}
				else {}
			}
		}
	}
	if !thing.player {
		ok = 0
		match line.special {
			39, 97, 125, 126, 4, 10, 88 {
				// PLAT DOWN-WAIT-UP-STAY RETRIGGER
				ok = 1
			}
			else {}
		}
		if !ok {
			return
		}
	}
	// Note: could use some const's here.
	match line.special {
		// TRIGGERS.
		// All from here to RETRIGGERS.
		2 { // case comp body kind=CallExpr is_enum=true
			// Open Door
			ev_do_door(line, Vldoor_e.vld_open)
			line.special = 0
		}
		3 { // case comp body kind=CallExpr is_enum=true
			// Close Door
			ev_do_door(line, Vldoor_e.vld_close)
			line.special = 0
		}
		4 { // case comp body kind=CallExpr is_enum=true
			// Raise Door
			ev_do_door(line, Vldoor_e.vld_normal)
			line.special = 0
		}
		5 { // case comp body kind=CallExpr is_enum=true
			// Raise Floor
			ev_do_floor(line, Floor_e.raise_floor)
			line.special = 0
		}
		6 { // case comp body kind=CallExpr is_enum=true
			// Fast Ceiling Crush & Raise
			ev_do_ceiling(line, Ceiling_e.fast_crush_and_raise)
			line.special = 0
		}
		8 { // case comp body kind=CallExpr is_enum=true
			// Build Stairs
			ev_build_stairs(line, Stair_e.build8)
			line.special = 0
		}
		10 { // case comp body kind=CallExpr is_enum=true
			// PlatDownWaitUp
			ev_do_plat(line, Plattype_e.down_wait_up_stay, 0)
			line.special = 0
		}
		12 { // case comp body kind=CallExpr is_enum=true
			// Light Turn On - brightest near
			ev_light_turn_on(line, 0)
			line.special = 0
		}
		13 { // case comp body kind=CallExpr is_enum=true
			// Light Turn On 255
			ev_light_turn_on(line, 255)
			line.special = 0
		}
		16 { // case comp body kind=CallExpr is_enum=true
			// Close Door 30
			ev_do_door(line, Vldoor_e.vld_close30_then_open)
			line.special = 0
		}
		17 { // case comp body kind=CallExpr is_enum=true
			// Start Light Strobing
			ev_start_light_strobing(line)
			line.special = 0
		}
		19 { // case comp body kind=CallExpr is_enum=true
			// Lower Floor
			ev_do_floor(line, Floor_e.lower_floor)
			line.special = 0
		}
		22 { // case comp body kind=CallExpr is_enum=true
			// Raise floor to nearest height and change texture
			ev_do_plat(line, Plattype_e.raise_to_nearest_and_change, 0)
			line.special = 0
		}
		25 { // case comp body kind=CallExpr is_enum=true
			// Ceiling Crush and Raise
			ev_do_ceiling(line, Ceiling_e.crush_and_raise)
			line.special = 0
		}
		30 { // case comp body kind=CallExpr is_enum=true
			// Raise floor to shortest texture height
			//  on either side of lines.
			ev_do_floor(line, Floor_e.raise_to_texture)
			line.special = 0
		}
		35 { // case comp body kind=CallExpr is_enum=true
			// Lights Very Dark
			ev_light_turn_on(line, 35)
			line.special = 0
		}
		36 { // case comp body kind=CallExpr is_enum=true
			// Lower Floor (TURBO)
			ev_do_floor(line, Floor_e.turbo_lower)
			line.special = 0
		}
		37 { // case comp body kind=CallExpr is_enum=true
			// LowerAndChange
			ev_do_floor(line, Floor_e.lower_and_change)
			line.special = 0
		}
		38 { // case comp body kind=CallExpr is_enum=true
			// Lower Floor To Lowest
			ev_do_floor(line, Floor_e.lower_floor_to_lowest)
			line.special = 0
		}
		39 { // case comp body kind=CallExpr is_enum=true
			// TELEPORT!
			ev_teleport(line, side, thing)
			line.special = 0
		}
		40 { // case comp body kind=CallExpr is_enum=true
			// RaiseCeilingLowerFloor
			ev_do_ceiling(line, Ceiling_e.raise_to_highest)
			ev_do_floor(line, Floor_e.lower_floor_to_lowest)
			line.special = 0
		}
		44 { // case comp body kind=CallExpr is_enum=true
			// Ceiling Crush
			ev_do_ceiling(line, Ceiling_e.lower_and_crush)
			line.special = 0
		}
		52 { // case comp body kind=CallExpr is_enum=true
			// EXIT!
			g_exit_level()
		}
		53 { // case comp body kind=CallExpr is_enum=true
			// Perpetual Platform Raise
			ev_do_plat(line, Plattype_e.perpetual_raise, 0)
			line.special = 0
		}
		54 { // case comp body kind=CallExpr is_enum=true
			// Platform Stop
			ev_stop_plat(line)
			line.special = 0
		}
		56 { // case comp body kind=CallExpr is_enum=true
			// Raise Floor Crush
			ev_do_floor(line, Floor_e.raise_floor_crush)
			line.special = 0
		}
		57 { // case comp body kind=CallExpr is_enum=true
			// Ceiling Crush Stop
			ev_ceiling_crush_stop(line)
			line.special = 0
		}
		58 { // case comp body kind=CallExpr is_enum=true
			// Raise Floor 24
			ev_do_floor(line, Floor_e.raise_floor24)
			line.special = 0
		}
		59 { // case comp body kind=CallExpr is_enum=true
			// Raise Floor 24 And Change
			ev_do_floor(line, Floor_e.raise_floor24_and_change)
			line.special = 0
		}
		104 { // case comp body kind=CallExpr is_enum=true
			// Turn lights off in sector(tag)
			ev_turn_tag_lights_off(line)
			line.special = 0
		}
		108 { // case comp body kind=CallExpr is_enum=true
			// Blazing Door Raise (faster than TURBO!)
			ev_do_door(line, Vldoor_e.vld_blaze_raise)
			line.special = 0
		}
		109 { // case comp body kind=CallExpr is_enum=true
			// Blazing Door Open (faster than TURBO!)
			ev_do_door(line, Vldoor_e.vld_blaze_open)
			line.special = 0
		}
		100 { // case comp body kind=CallExpr is_enum=true
			// Build Stairs Turbo 16
			ev_build_stairs(line, Stair_e.turbo16)
			line.special = 0
		}
		110 { // case comp body kind=CallExpr is_enum=true
			// Blazing Door Close (faster than TURBO!)
			ev_do_door(line, Vldoor_e.vld_blaze_close)
			line.special = 0
		}
		119 { // case comp body kind=CallExpr is_enum=true
			// Raise floor to nearest surr. floor
			ev_do_floor(line, Floor_e.raise_floor_to_nearest)
			line.special = 0
		}
		121 { // case comp body kind=CallExpr is_enum=true
			// Blazing PlatDownWaitUpStay
			ev_do_plat(line, Plattype_e.blaze_dwus, 0)
			line.special = 0
		}
		124 { // case comp body kind=CallExpr is_enum=true
			// Secret EXIT
			g_secret_exit_level()
		}
		125 { // case comp body kind=IfStmt is_enum=true
			// TELEPORT MonsterONLY
			if !thing.player {
				ev_teleport(line, side, thing)
				line.special = 0
			}
		}
		130 { // case comp body kind=CallExpr is_enum=true
			// Raise Floor Turbo
			ev_do_floor(line, Floor_e.raise_floor_turbo)
			line.special = 0
		}
		141 { // case comp body kind=CallExpr is_enum=true
			// Silent Ceiling Crush & Raise
			ev_do_ceiling(line, Ceiling_e.silent_crush_and_raise)
			line.special = 0

			// RETRIGGERS.  All from here till end.
		}
		72 { // case comp body kind=CallExpr is_enum=true
			// Ceiling Crush
			ev_do_ceiling(line, Ceiling_e.lower_and_crush)
		}
		73 { // case comp body kind=CallExpr is_enum=true
			// Ceiling Crush and Raise
			ev_do_ceiling(line, Ceiling_e.crush_and_raise)
		}
		74 { // case comp body kind=CallExpr is_enum=true
			// Ceiling Crush Stop
			ev_ceiling_crush_stop(line)
		}
		75 { // case comp body kind=CallExpr is_enum=true
			// Close Door
			ev_do_door(line, Vldoor_e.vld_close)
		}
		76 { // case comp body kind=CallExpr is_enum=true
			// Close Door 30
			ev_do_door(line, Vldoor_e.vld_close30_then_open)
		}
		77 { // case comp body kind=CallExpr is_enum=true
			// Fast Ceiling Crush & Raise
			ev_do_ceiling(line, Ceiling_e.fast_crush_and_raise)
		}
		79 { // case comp body kind=CallExpr is_enum=true
			// Lights Very Dark
			ev_light_turn_on(line, 35)
		}
		80 { // case comp body kind=CallExpr is_enum=true
			// Light Turn On - brightest near
			ev_light_turn_on(line, 0)
		}
		81 { // case comp body kind=CallExpr is_enum=true
			// Light Turn On 255
			ev_light_turn_on(line, 255)
		}
		82 { // case comp body kind=CallExpr is_enum=true
			// Lower Floor To Lowest
			ev_do_floor(line, Floor_e.lower_floor_to_lowest)
		}
		83 { // case comp body kind=CallExpr is_enum=true
			// Lower Floor
			ev_do_floor(line, Floor_e.lower_floor)
		}
		84 { // case comp body kind=CallExpr is_enum=true
			// LowerAndChange
			ev_do_floor(line, Floor_e.lower_and_change)
		}
		86 { // case comp body kind=CallExpr is_enum=true
			// Open Door
			ev_do_door(line, Vldoor_e.vld_open)
		}
		87 { // case comp body kind=CallExpr is_enum=true
			// Perpetual Platform Raise
			ev_do_plat(line, Plattype_e.perpetual_raise, 0)
		}
		88 { // case comp body kind=CallExpr is_enum=true
			// PlatDownWaitUp
			ev_do_plat(line, Plattype_e.down_wait_up_stay, 0)
		}
		89 { // case comp body kind=CallExpr is_enum=true
			// Platform Stop
			ev_stop_plat(line)
		}
		90 { // case comp body kind=CallExpr is_enum=true
			// Raise Door
			ev_do_door(line, Vldoor_e.vld_normal)
		}
		91 { // case comp body kind=CallExpr is_enum=true
			// Raise Floor
			ev_do_floor(line, Floor_e.raise_floor)
		}
		92 { // case comp body kind=CallExpr is_enum=true
			// Raise Floor 24
			ev_do_floor(line, Floor_e.raise_floor24)
		}
		93 { // case comp body kind=CallExpr is_enum=true
			// Raise Floor 24 And Change
			ev_do_floor(line, Floor_e.raise_floor24_and_change)
		}
		94 { // case comp body kind=CallExpr is_enum=true
			// Raise Floor Crush
			ev_do_floor(line, Floor_e.raise_floor_crush)
		}
		95 { // case comp body kind=CallExpr is_enum=true
			// Raise floor to nearest height
			// and change texture.
			ev_do_plat(line, Plattype_e.raise_to_nearest_and_change, 0)
		}
		96 { // case comp body kind=CallExpr is_enum=true
			// Raise floor to shortest texture height
			// on either side of lines.
			ev_do_floor(line, Floor_e.raise_to_texture)
		}
		97 { // case comp body kind=CallExpr is_enum=true
			// TELEPORT!
			ev_teleport(line, side, thing)
		}
		98 { // case comp body kind=CallExpr is_enum=true
			// Lower Floor (TURBO)
			ev_do_floor(line, Floor_e.turbo_lower)
		}
		105 { // case comp body kind=CallExpr is_enum=true
			// Blazing Door Raise (faster than TURBO!)
			ev_do_door(line, Vldoor_e.vld_blaze_raise)
		}
		106 { // case comp body kind=CallExpr is_enum=true
			// Blazing Door Open (faster than TURBO!)
			ev_do_door(line, Vldoor_e.vld_blaze_open)
		}
		107 { // case comp body kind=CallExpr is_enum=true
			// Blazing Door Close (faster than TURBO!)
			ev_do_door(line, Vldoor_e.vld_blaze_close)
		}
		120 { // case comp body kind=CallExpr is_enum=true
			// Blazing PlatDownWaitUpStay.
			ev_do_plat(line, Plattype_e.blaze_dwus, 0)
		}
		126 { // case comp body kind=IfStmt is_enum=true
			// TELEPORT MonsterONLY.
			if !thing.player {
				ev_teleport(line, side, thing)
			}
		}
		128 { // case comp body kind=CallExpr is_enum=true
			// Raise To Nearest Floor
			ev_do_floor(line, Floor_e.raise_floor_to_nearest)
		}
		129 { // case comp body kind=CallExpr is_enum=true
			// Raise Floor Turbo
			ev_do_floor(line, Floor_e.raise_floor_turbo)
		}
		else {}
	}
}

//
// P_ShootSpecialLine - IMPACT SPECIALS
// Called when a thing shoots a special line.
//
@[c: 'P_ShootSpecialLine']
fn p_shoot_special_line(thing &Mobj_t, line &Line_t) {
	ok := 0
	//	Impacts that other things can activate.
	if !thing.player {
		ok = 0
		match line.special {
			46 { // case comp body kind=BinaryOperator is_enum=true
				// OPEN DOOR IMPACT
				ok = 1
			}
			else {}
		}
		if !ok {
			return
		}
	}
	match line.special {
		24 { // case comp body kind=CallExpr is_enum=true
			// RAISE FLOOR
			ev_do_floor(line, Floor_e.raise_floor)
			p_change_switch_texture(line, 0)
		}
		46 { // case comp body kind=CallExpr is_enum=true
			// OPEN DOOR
			ev_do_door(line, Vldoor_e.vld_open)
			p_change_switch_texture(line, 1)
		}
		47 { // case comp body kind=CallExpr is_enum=true
			// RAISE FLOOR NEAR AND CHANGE
			ev_do_plat(line, Plattype_e.raise_to_nearest_and_change, 0)
			p_change_switch_texture(line, 0)
		}
		else {}
	}
}

//
// P_PlayerInSpecialSector
// Called every tic frame
//  that the player origin is in a special sector
//
@[c: 'P_PlayerInSpecialSector']
fn p_player_in_special_sector(player &Player_t) {
	sector := &Sector_t(0)
	sector = player.mo.subsector.sector
	// Falling, not all the way down yet?
	if player.mo.z != sector.floorheight {
		return
	}
	// Has hitten ground.
	match sector.special {
		5 { // case comp body kind=IfStmt is_enum=true
			// HELLSLIME DAMAGE
			if !player.powers[int(Powertype_t.pw_ironfeet)] {
				if !(leveltime & 31) {
					p_damage_mobj(player.mo, (unsafe { nil }), (unsafe { nil }), 10)
				}
			}
		}
		7 { // case comp body kind=IfStmt is_enum=true
			// NUKAGE DAMAGE
			if !player.powers[int(Powertype_t.pw_ironfeet)] {
				if !(leveltime & 31) {
					p_damage_mobj(player.mo, (unsafe { nil }), (unsafe { nil }), 5)
				}
			}
		}
		16, 4 {
			// STROBE HURT
			if !player.powers[int(Powertype_t.pw_ironfeet)] || p_random() < 5 {
				if !(leveltime & 31) {
					p_damage_mobj(player.mo, (unsafe { nil }), (unsafe { nil }), 20)
				}
			}
		}
		9 { // case comp body kind=UnaryOperator is_enum=true
			// SECRET SECTOR
			player.secretcount++
			sector.special = 0
		}
		11 { // case comp body kind=CompoundAssignOperator is_enum=true
			// EXIT SUPER DAMAGE! (for E1M8 finale)
			player.cheats &= ~Cheat_t.cf_godmode
			if !(leveltime & 31) {
				p_damage_mobj(player.mo, (unsafe { nil }), (unsafe { nil }), 20)
			}
			if player.health <= 10 {
				g_exit_level()
			}
		}
		else {
			C.printf(c'P_PlayerInSpecialSector: unknown special %i\n', sector.special)
		}
	}
	0
}

//
// P_UpdateSpecials
// Animate planes, scroll walls, etc.
//
@[c: 'P_UpdateSpecials']
fn p_update_specials() {
	anim := &Animplane_t(0)
	pic := 0
	i := 0
	line := &Line_t(0)
	//	LEVEL TIMER
	if levelTimer == true {
		levelTimeCount--
		if !levelTimeCount {
			g_exit_level()
		}
	}
	//	ANIMATE FLATS AND TEXTURES GLOBALLY
	for anim = animplanes; anim < lastanim; anim++ {
		for i = anim.basepic; i < anim.basepic + anim.numpics; i++ {
			pic = anim.basepic + ((leveltime / anim.speed + i) % anim.numpics)
			if anim.istexture {
				texturetranslation[i] = pic
			} else { // 3
				flattranslation[i] = pic
			}
		}
	}
	//	ANIMATE LINE SPECIALS
	for i = 0; i < numlinespecials; i++ {
		line = linespeciallist[i]
		match line.special {
			48 { // case comp body kind=CompoundAssignOperator is_enum=true
				// EFFECT FIRSTCOL SCROLL +
				sides[line.sidenum[0]].textureoffset += (1 << 16)
			}
			else {}
		}
	}
	//	DO BUTTONS
	for i = 0; i < 16; i++ {
		if buttonlist[i].btimer {
			buttonlist[i].btimer--
			if !buttonlist[i].btimer {
				match buttonlist[i].where {
					.top { // case comp body kind=BinaryOperator is_enum=true
						sides[buttonlist[i].line.sidenum[0]].toptexture = buttonlist[i].btexture
					}
					.middle { // case comp body kind=BinaryOperator is_enum=true
						sides[buttonlist[i].line.sidenum[0]].midtexture = buttonlist[i].btexture
					}
					.bottom { // case comp body kind=BinaryOperator is_enum=true
						sides[buttonlist[i].line.sidenum[0]].bottomtexture = buttonlist[i].btexture
					}
					else {}
				}
				s_start_sound(&buttonlist[i].soundorg, Sfxenum_t.sfx_swtchn)
				C.memset(&buttonlist[i], 0, sizeof(Button_t))
			}
		}
	}
}

//
// Donut overrun emulation
//
// Derived from the code from PrBoom+.  Thanks go to Andrey Budko (entryway)
// as usual :-)
//
@[c: 'DonutOverrun']
fn donut_overrun(s3_floorheight &int, s3_floorpic &i16, line &Line_t, pillar_sector &Sector_t) {
	first := 1
	tmp_s3_floorheight := 0
	tmp_s3_floorpic := 0
	// XTODO
	// extern int numflats;
	if first {
		p := 0
		// This is the first time we have had an overrun.
		first = 0
		// Default values
		tmp_s3_floorheight = 0
		tmp_s3_floorpic = 22
		//!
		// @category compat
		// @arg <x> <y>
		//
		// Use the specified magic values when emulating behavior caused
		// by memory overruns from improperly constructed donuts.
		// In Vanilla Doom this can differ depending on the operating
		// system.  The default (if this option is not specified) is to
		// emulate the behavior when running under Windows 98.
		p = m_check_parm_with_args(c'-donut', 2)
		if p > 0 {
			// Dump of needed memory: (fixed_t)0000:0000 and (short)0000:0008
			//
			// C:\>debug
			// -d 0:0
			//
			// DOS 6.22:
			// 0000:0000    (57 92 19 00) F4 06 70 00-(16 00)
			// DOS 7.1:
			// 0000:0000    (9E 0F C9 00) 65 04 70 00-(16 00)
			// Win98:
			// 0000:0000    (00 00 00 00) 65 04 70 00-(16 00)
			// DOSBox under XP:
			// 0000:0000    (00 00 00 F1) ?? ?? ?? 00-(07 00)
			m_str_to_int(myargv[p + 1], &tmp_s3_floorheight)
			m_str_to_int(myargv[p + 2], &tmp_s3_floorpic)
			if tmp_s3_floorpic >= numflats {
				C.fprintf(C.stderr, c'DonutOverrun: The second parameter for "-donut" switch should be greater than 0 and less than number of flats (%d). Using default value (%d) instead. \n',
					numflats, 22)
				tmp_s3_floorpic = 22
			}
		}
	}
	//
	//    fprintf(stderr,
	//            "Linedef: %d; Sector: %d; "
	//            "New floor height: %d; New floor pic: %d\n",
	//            line->iLineID, pillar_sector->iSectorID,
	//            tmp_s3_floorheight >> 16, tmp_s3_floorpic);
	//
	*s3_floorheight = int(tmp_s3_floorheight)
	*s3_floorpic = i16(tmp_s3_floorpic)
}

//
// Special Stuff that can not be categorized
//
@[c: 'EV_DoDonut']
fn ev_do_donut(line &Line_t) int {
	s1 := &Sector_t(0)
	s2 := &Sector_t(0)
	s3 := &Sector_t(0)
	secnum := 0
	rtn := 0
	i := 0
	floor := &Floormove_t(0)
	s3_floorheight := 0
	s3_floorpic := i16(0)
	secnum = -1
	rtn = 0
	secnum = p_find_sector_from_line_tag(line, secnum)
	for secnum >= 0 {
		s1 = &sectors[secnum]
		// ALREADY MOVING?  IF SO, KEEP GOING...
		if s1.specialdata {
			continue
		}
		rtn = 1
		s2 = get_next_sector(s1.lines[0], s1)
		// Vanilla Doom does not check if the linedef is one sided.  The
		// game does not crash, but reads invalid memory and causes the
		// sector floor to move "down" to some unknown height.
		// DOSbox prints a warning about an invalid memory access.
		//
		// I'm not sure exactly what invalid memory is being read.  This
		// isn't something that should be done, anyway.
		// Just print a warning and return.
		if s2 == (unsafe { nil }) {
			C.fprintf(C.stderr, c'EV_DoDonut: linedef had no second sidedef! Unexpected behavior may occur in Vanilla Doom. \n')
			break
		}
		for i = 0; i < s2.linecount; i++ {
			s3 = s2.lines[i].backsector
			if s3 == s1 {
				continue
			}
			if s3 == (unsafe { nil }) {
				// e6y
				// s3 is NULL, so
				// s3->floorheight is an int at 0000:0000
				// s3->floorpic is a short at 0000:0008
				// Trying to emulate
				C.fprintf(C.stderr, c'EV_DoDonut: WARNING: emulating buffer overrun due to NULL back sector. Unexpected behavior may occur in Vanilla Doom.\n')
				donut_overrun(&s3_floorheight, &s3_floorpic, line, s1)
			} else {
				s3_floorheight = s3.floorheight
				s3_floorpic = s3.floorpic
			}
			//	Spawn rising slime
			floor = z_malloc(sizeof(*floor), 6, 0)
			p_add_thinker(&floor.thinker)
			s2.specialdata = floor
			floor.thinker.function.acp1 = Actionf_p1(t_move_floor)
			floor.type_ = Floor_e.donut_raise
			floor.crush = false
			floor.direction = 1
			floor.sector = s2
			floor.speed = (1 << 16) / 2
			floor.texture = s3_floorpic
			floor.newspecial = 0
			floor.floordestheight = s3_floorheight
			//	Spawn lowering donut-hole
			floor = z_malloc(sizeof(*floor), 6, 0)
			p_add_thinker(&floor.thinker)
			s1.specialdata = floor
			floor.thinker.function.acp1 = Actionf_p1(t_move_floor)
			floor.type_ = Floor_e.lower_floor
			floor.crush = false
			floor.direction = -1
			floor.sector = s1
			floor.speed = (1 << 16) / 2
			floor.floordestheight = s3_floorheight
			break
		}
		secnum = p_find_sector_from_line_tag(line, secnum)
	}
	return rtn
}

//
// SPECIAL SPAWNING
//
//
// P_SpawnSpecials
// After the map has been loaded, scan for specials
//  that spawn thinkers
//
@[c: 'NumScrollers']
fn num_scrollers() u32 {
	i := u32(0)
	scrollers := 0

	for i = 0; i < numlines; i++ {
		if 48 == lines[i].special {
			scrollers++
		}
	}
	return scrollers
}

// Parses command line parameters.
@[c: 'P_SpawnSpecials']
fn p_spawn_specials() {
	sector := &Sector_t(0)
	i := 0
	// See if -TIMER was specified.
	if timelimit > 0 && deathmatch {
		levelTimer = true
		levelTimeCount = timelimit * 60 * 35
	} else {
		levelTimer = false
	}
	//	Init special SECTORs.
	sector = sectors
	for i = 0; i < numsectors; i++ {
		if !sector.special {
			continue
		}
		match sector.special {
			1 { // case comp body kind=CallExpr is_enum=true
				// FLICKERING LIGHTS
				p_spawn_light_flash(sector)
			}
			2 { // case comp body kind=CallExpr is_enum=true
				// STROBE FAST
				p_spawn_strobe_flash(sector, 15, 0)
			}
			3 { // case comp body kind=CallExpr is_enum=true
				// STROBE SLOW
				p_spawn_strobe_flash(sector, 35, 0)
			}
			4 { // case comp body kind=CallExpr is_enum=true
				// STROBE FAST/DEATH SLIME
				p_spawn_strobe_flash(sector, 15, 0)
				sector.special = 4
			}
			8 { // case comp body kind=CallExpr is_enum=true
				// GLOWING LIGHT
				p_spawn_glowing_light(sector)
			}
			9 { // case comp body kind=UnaryOperator is_enum=true
				// SECRET SECTOR
				totalsecret++
			}
			10 { // case comp body kind=CallExpr is_enum=true
				// DOOR CLOSE IN 30 SECONDS
				p_spawn_door_close_in30(sector)
			}
			12 { // case comp body kind=CallExpr is_enum=true
				// SYNC STROBE SLOW
				p_spawn_strobe_flash(sector, 35, 1)
			}
			13 { // case comp body kind=CallExpr is_enum=true
				// SYNC STROBE FAST
				p_spawn_strobe_flash(sector, 15, 1)
			}
			14 { // case comp body kind=CallExpr is_enum=true
				// DOOR RAISE IN 5 MINUTES
				p_spawn_door_raise_in5_mins(sector, i)
			}
			17 { // case comp body kind=CallExpr is_enum=true
				p_spawn_fire_flicker(sector)
			}
			else {}
		}
		sector++
	}
	//	Init line EFFECTs
	numlinespecials = 0
	for i = 0; i < numlines; i++ {
		match lines[i].special {
			48 { // case comp body kind=IfStmt is_enum=true
				if numlinespecials >= 64 {
					i_error(c'Too many scrolling wall linedefs (%d)! (Vanilla limit is 64)',
						num_scrollers())
				}
				// EFFECT FIRSTCOL SCROLL+
				linespeciallist[numlinespecials] = &lines[i]
				numlinespecials++
			}
			else {}
		}
	}
	//	Init other misc stuff
	for i = 0; i < 30; i++ {
		activeceilings[i] = (unsafe { nil })
	}
	for i = 0; i < 30; i++ {
		activeplats[i] = (unsafe { nil })
	}
	for i = 0; i < 16; i++ {
		C.memset(&buttonlist[i], 0, sizeof(Button_t))
	}
	// UNUSED: no horizonal sliders.

	//	P_InitSlidingDoorFrames();
}
