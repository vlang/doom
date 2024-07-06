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
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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


// bbox coordinates
// Bounding box functions.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
@[c: 'P_AproxDistance']
fn p_aprox_distance(dx int, dy int) int

@[c: 'P_PointOnLineSide']
fn p_point_on_line_side(x int, y int, line &Line_t) int

@[c: 'P_PointOnDivlineSide']
fn p_point_on_divline_side(x int, y int, line &Divline_t) int

@[c: 'P_MakeDivline']
fn p_make_divline(li &Line_t, dl &Divline_t)

@[c: 'P_InterceptVector']
fn p_intercept_vector(v2 &Divline_t, v1 &Divline_t) int

@[c: 'P_BoxOnLineSide']
fn p_box_on_line_side(tmbox &int, ld &Line_t) int

@[c: 'P_LineOpening']
fn p_line_opening(linedef &Line_t)

@[c: 'P_BlockLinesIterator']
fn p_block_lines_iterator(x int, y int, func fn (&Line_t) bool) bool

@[c: 'P_BlockThingsIterator']
fn p_block_things_iterator(x int, y int, func fn (&Mobj_t) bool) bool

@[c: 'P_PathTraverse']
fn p_path_traverse(x1 int, y1 int, x2 int, y2 int, flags int, trav fn (&Intercept_t) bool) bool

@[c: 'P_UnsetThingPosition']
fn p_unset_thing_position(thing &Mobj_t)

@[c: 'P_SetThingPosition']
fn p_set_thing_position(thing &Mobj_t)

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
// Copyright(C) 2005, 2006 Andrey Budko
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Movement/collision utility functions,
//	as used by function in p_map.c.
//	BLOCKMAP Iterator functions,
//	and some PIT_* functions to use for iteration.
//
// State.
//
// P_AproxDistance
// Gives an estimation of distance (not exact)
//
@[c: 'P_AproxDistance']
fn p_aprox_distance(dx int, dy int) int {
	dx = C.abs(dx)
	dy = C.abs(dy)
	if dx < dy {
		return dx + dy - (dx >> 1)
	}
	return dx + dy - (dy >> 1)
}

//
// P_PointOnLineSide
// Returns 0 or 1
//
@[c: 'P_PointOnLineSide']
fn p_point_on_line_side(x int, y int, line &Line_t) int {
	dx := 0
	dy := 0
	left := 0
	right := 0
	if !line.dx {
		if x <= line.v1.x {
			return line.dy > 0
		}
		return line.dy < 0
	}
	if !line.dy {
		if y <= line.v1.y {
			return line.dx < 0
		}
		return line.dx > 0
	}
	dx = (x - line.v1.x)
	dy = (y - line.v1.y)
	left = fixed_mul(line.dy >> 16, dx)
	right = fixed_mul(dy, line.dx >> 16)
	if right < left {
		return 0
	}
	// front side
	return 1
	// back side
}

//
// P_BoxOnLineSide
// Considers the line to be infinite
// Returns side 0 or 1, -1 if box crosses the line.
//
@[c: 'P_BoxOnLineSide']
fn p_box_on_line_side(tmbox &int, ld &Line_t) int {
	p1 := 0
	p2 := 0
	match ld.slopetype {
		.st_horizontal { // case comp body kind=BinaryOperator is_enum=true
			p1 = tmbox[int(boxtop)] > ld.v1.y
			p2 = tmbox[int(boxbottom)] > ld.v1.y
			if ld.dx < 0 {
				p1 ^= 1
				p2 ^= 1
			}
		}
		.st_vertical { // case comp body kind=BinaryOperator is_enum=true
			p1 = tmbox[int(boxright)] < ld.v1.x
			p2 = tmbox[int(boxleft)] < ld.v1.x
			if ld.dy < 0 {
				p1 ^= 1
				p2 ^= 1
			}
		}
		.st_positive { // case comp body kind=BinaryOperator is_enum=true
			p1 = p_point_on_line_side(tmbox[int(boxleft)], tmbox[int(boxtop)], ld)
			p2 = p_point_on_line_side(tmbox[int(boxright)], tmbox[int(boxbottom)], ld)
		}
		.st_negative { // case comp body kind=BinaryOperator is_enum=true
			p1 = p_point_on_line_side(tmbox[int(boxright)], tmbox[int(boxtop)], ld)
			p2 = p_point_on_line_side(tmbox[int(boxleft)], tmbox[int(boxbottom)], ld)
		}
		else {}
	}
	if p1 == p2 {
		return p1
	}
	return -1
}

//
// P_PointOnDivlineSide
// Returns 0 or 1.
//
@[c: 'P_PointOnDivlineSide']
fn p_point_on_divline_side(x int, y int, line &Divline_t) int {
	dx := 0
	dy := 0
	left := 0
	right := 0
	if !line.dx {
		if x <= line.x {
			return line.dy > 0
		}
		return line.dy < 0
	}
	if !line.dy {
		if y <= line.y {
			return line.dx < 0
		}
		return line.dx > 0
	}
	dx = (x - line.x)
	dy = (y - line.y)
	// try to quickly decide by looking at sign bits
	if (line.dy ^ line.dx ^ dx ^ dy) & 2147483648 {
		if (line.dy ^ dx) & 2147483648 {
			return 1
		}
		// (left is negative)
		return 0
	}
	left = fixed_mul(line.dy >> 8, dx >> 8)
	right = fixed_mul(dy >> 8, line.dx >> 8)
	if right < left {
		return 0
	}
	// front side
	return 1
	// back side
}

//
// P_MakeDivline
//
@[c: 'P_MakeDivline']
fn p_make_divline(li &Line_t, dl &Divline_t) {
	dl.x = li.v1.x
	dl.y = li.v1.y
	dl.dx = li.dx
	dl.dy = li.dy
}

//
// P_InterceptVector
// Returns the fractional intercept point
// along the first divline.
// This is only called by the addthings
// and addlines traversers.
//
@[c: 'P_InterceptVector']
fn p_intercept_vector(v2 &Divline_t, v1 &Divline_t) int {
	frac := 0
	num := 0
	den := 0
	den = fixed_mul(v1.dy >> 8, v2.dx) - fixed_mul(v1.dx >> 8, v2.dy)
	if den == 0 {
		return 0
	}
	//	I_Error ("P_InterceptVector: parallel");
	num = fixed_mul((v1.x - v2.x) >> 8, v1.dy) + fixed_mul((v2.y - v1.y) >> 8, v1.dx)
	frac = fixed_div(num, den)
	return frac
	// UNUSED, float debug.

	// parallel
}

//
// P_LineOpening
// Sets opentop and openbottom to the window
// through a two sided line.
// OPTIMIZE: keep this precalculated
//
@[c: 'P_LineOpening']
fn p_line_opening(linedef &Line_t) {
	front := &Sector_t(0)
	back := &Sector_t(0)
	if linedef.sidenum[1] == -1 {
		// single sided line
		openrange = 0
		return
	}
	front = linedef.frontsector
	back = linedef.backsector
	if front.ceilingheight < back.ceilingheight {
		opentop = front.ceilingheight
	} else { // 3
		opentop = back.ceilingheight
	}
	if front.floorheight > back.floorheight {
		openbottom = front.floorheight
		lowfloor = back.floorheight
	} else {
		openbottom = back.floorheight
		lowfloor = front.floorheight
	}
	openrange = opentop - openbottom
}

//
// THING POSITION SETTING
//
//
// P_UnsetThingPosition
// Unlinks a thing from block map and sectors.
// On each position change, BLOCKMAP and other
// lookups maintaining lists ot things inside
// these structures need to be updated.
//
@[c: 'P_UnsetThingPosition']
fn p_unset_thing_position(thing &Mobj_t) {
	blockx := 0
	blocky := 0
	if !(thing.flags & Mobjflag_t.mf_nosector) {
		// inert things don't need to be in blockmap?
		// unlink from subsector
		if thing.snext {
			thing.snext.sprev = thing.sprev
		}
		if thing.sprev {
			thing.sprev.snext = thing.snext
		} else { // 3
			thing.subsector.sector.thinglist = thing.snext
		}
	}
	if !(thing.flags & Mobjflag_t.mf_noblockmap) {
		// inert things don't need to be in blockmap
		// unlink from block map
		if thing.bnext {
			thing.bnext.bprev = thing.bprev
		}
		if thing.bprev {
			thing.bprev.bnext = thing.bnext
		} else {
			blockx = (thing.x - bmaporgx) >> (16 + 7)
			blocky = (thing.y - bmaporgy) >> (16 + 7)
			if blockx >= 0 && blockx < bmapwidth && blocky >= 0 && blocky < bmapheight {
				blocklinks[blocky * bmapwidth + blockx] = thing.bnext
			}
		}
	}
}

//
// P_SetThingPosition
// Links a thing into both a block and a subsector
// based on it's x y.
// Sets thing->subsector properly
//
@[c: 'P_SetThingPosition']
fn p_set_thing_position(thing &Mobj_t) {
	ss := &Subsector_t(0)
	sec := &Sector_t(0)
	blockx := 0
	blocky := 0
	link := &&Mobj_t(0)
	// link into subsector
	ss = r_point_in_subsector(thing.x, thing.y)
	thing.subsector = ss
	if !(thing.flags & Mobjflag_t.mf_nosector) {
		// invisible things don't go into the sector links
		sec = ss.sector
		thing.sprev = (unsafe { nil })
		thing.snext = sec.thinglist
		if sec.thinglist {
			sec.thinglist.sprev = thing
		}
		sec.thinglist = thing
	}
	// link into blockmap
	if !(thing.flags & Mobjflag_t.mf_noblockmap) {
		// inert things don't need to be in blockmap		
		blockx = (thing.x - bmaporgx) >> (16 + 7)
		blocky = (thing.y - bmaporgy) >> (16 + 7)
		if blockx >= 0 && blockx < bmapwidth && blocky >= 0 && blocky < bmapheight {
			link = &blocklinks[blocky * bmapwidth + blockx]
			thing.bprev = (unsafe { nil })
			thing.bnext = *link
			if *link {
				(*link).bprev = thing
			}
			*link = thing
		} else {
			// thing is off the map
			thing.bnext = (unsafe { nil })
			thing.bprev = thing.bnext
		}
	}
}

//
// BLOCK MAP ITERATORS
// For each line/thing in the given mapblock,
// call the passed PIT_* function.
// If the function returns false,
// exit with false without checking anything else.
//
//
// P_BlockLinesIterator
// The validcount flags are used to avoid checking lines
// that are marked in multiple mapblocks,
// so increment validcount before the first call
// to P_BlockLinesIterator, then make one or more calls
// to it.
//
@[c: 'P_BlockLinesIterator']
fn p_block_lines_iterator(x int, y int, func fn (&Line_t) bool) bool {
	offset := 0
	list := &i16(0)
	ld := &Line_t(0)
	if x < 0 || y < 0 || x >= bmapwidth || y >= bmapheight {
		return true
	}
	offset = y * bmapwidth + x
	offset = *(blockmap + offset)
	for list = blockmaplump + offset; *list != -1; list++ {
		ld = &lines[*list]
		if ld.validcount == validcount {
			continue
		}
		// line has already been checked
		ld.validcount = validcount
		if !func(ld) {
			return false
		}
	}
	return true
	// everything was checked
}

//
// P_BlockThingsIterator
//
@[c: 'P_BlockThingsIterator']
fn p_block_things_iterator(x int, y int, func fn (&Mobj_t) bool) bool {
	mobj := &Mobj_t(0)
	if x < 0 || y < 0 || x >= bmapwidth || y >= bmapheight {
		return true
	}
	for mobj = blocklinks[y * bmapwidth + x]; mobj; mobj = mobj.bnext {
		if !func(mobj) {
			return false
		}
	}
	return true
}

//
// INTERCEPT ROUTINES
//
@[c: 'InterceptsOverrun']
fn intercepts_overrun(num_intercepts int, intercept &Intercept_t)

//
// PIT_AddLineIntercepts.
// Looks for lines in the given block
// that intercept the given trace
// to add to the intercepts list.
//
// A line is crossed if its endpoints
// are on opposite sides of the trace.
// Returns true if earlyout and a solid line hit.
//
@[c: 'PIT_AddLineIntercepts']
fn pit_add_line_intercepts(ld &Line_t) bool {
	s1 := 0
	s2 := 0
	frac := 0
	dl := Divline_t{}
	// avoid precision problems with two routines
	if trace.dx > (1 << 16) * 16 || trace.dy > (1 << 16) * 16 || trace.dx < -(1 << 16) * 16
		|| trace.dy < -(1 << 16) * 16 {
		s1 = p_point_on_divline_side(ld.v1.x, ld.v1.y, &trace)
		s2 = p_point_on_divline_side(ld.v2.x, ld.v2.y, &trace)
	} else {
		s1 = p_point_on_line_side(trace.x, trace.y, ld)
		s2 = p_point_on_line_side(trace.x + trace.dx, trace.y + trace.dy, ld)
	}
	if s1 == s2 {
		return true
	}
	// line isn't crossed
	// hit the line
	p_make_divline(ld, &dl)
	frac = p_intercept_vector(&trace, &dl)
	if frac < 0 {
		return true
	}
	// behind source
	// try to early out the check
	if earlyout && frac < (1 << 16) && !ld.backsector {
		return false
		// stop checking
	}
	intercept_p.frac = frac
	intercept_p.isaline = true
	intercept_p.d.line = ld
	intercepts_overrun(intercept_p - intercepts, intercept_p)
	intercept_p++
	return true
	// continue
}

//
// PIT_AddThingIntercepts
//
@[c: 'PIT_AddThingIntercepts']
fn pit_add_thing_intercepts(thing &Mobj_t) bool {
	x1 := 0
	y1 := 0
	x2 := 0
	y2 := 0
	s1 := 0
	s2 := 0
	tracepositive := false
	dl := Divline_t{}
	frac := 0
	tracepositive = (trace.dx ^ trace.dy) > 0
	// check a corner to corner crossection for hit
	if tracepositive {
		x1 = thing.x - thing.radius
		y1 = thing.y + thing.radius
		x2 = thing.x + thing.radius
		y2 = thing.y - thing.radius
	} else {
		x1 = thing.x - thing.radius
		y1 = thing.y - thing.radius
		x2 = thing.x + thing.radius
		y2 = thing.y + thing.radius
	}
	s1 = p_point_on_divline_side(x1, y1, &trace)
	s2 = p_point_on_divline_side(x2, y2, &trace)
	if s1 == s2 {
		return true
	}
	// line isn't crossed
	dl.x = x1
	dl.y = y1
	dl.dx = x2 - x1
	dl.dy = y2 - y1
	frac = p_intercept_vector(&trace, &dl)
	if frac < 0 {
		return true
	}
	// behind source
	intercept_p.frac = frac
	intercept_p.isaline = false
	intercept_p.d.thing = thing
	intercepts_overrun(intercept_p - intercepts, intercept_p)
	intercept_p++
	return true
	// keep going
}

//
// P_TraverseIntercepts
// Returns true if the traverser function returns true
// for all lines.
//
@[c: 'P_TraverseIntercepts']
fn p_traverse_intercepts(func Traverser_t, maxfrac int) bool {
	count := 0
	dist := 0
	scan := &Intercept_t(0)
	in_ := &Intercept_t(0)
	count = intercept_p - intercepts
	in_ = 0
	// shut up compiler warning
	for count-- {
		dist = 2147483647
		for scan = intercepts; scan < intercept_p; scan++ {
			if scan.frac < dist {
				dist = scan.frac
				in_ = scan
			}
		}
		if dist > maxfrac {
			return true
		}
		// checked everything in range		
		// UNUSED
		// don't check these yet, there may be others inserted
		if !func(in_) {
			return false
		}
		// don't bother going farther
		in_.frac = 2147483647
	}
	return true
	// everything was traversed
}

// skipping global dup "bulletslope"
// Intercepts Overrun emulation, from PrBoom-plus.
// Thanks to Andrey Budko (entryway) for researching this and his
// implementation of Intercepts Overrun emulation in PrBoom-plus
// which this is based on.
struct Intercepts_overrun_t {
	len         int
	addr        voidptr
	int16_array bool
}

// Intercepts memory table.  This is where various variables are located
// in memory in Vanilla Doom.  When the intercepts table overflows, we
// need to write to them.
//
// Almost all of the values to overwrite are 32-bit integers, except for
// playerstarts, which is effectively an array of 16-bit integers and
// must be treated differently.
// Overwrite a specific memory location with a value.
@[c: 'InterceptsMemoryOverrun']
fn intercepts_memory_overrun(location int, value int) {
	i := 0
	offset := 0

	index := 0
	addr := &voidptr(0)
	i = 0
	offset = 0
	// Search down the array until we find the right entry
	for intercepts_overrun[i].len != 0 {
		if offset + intercepts_overrun[i].len > location {
			addr = intercepts_overrun[i].addr
			// Write the value to the memory location.
			// 16-bit and 32-bit values are written differently.
			if addr != (unsafe { nil }) {
				if intercepts_overrun[i].int16_array {
					index = (location - offset) / 2
					(&i16(addr))[index] = value & 65535
					(&i16(addr))[index + 1] = (value >> 16) & 65535
				} else {
					index = (location - offset) / 4
					(&int(addr))[index] = value
				}
			}
			break
		}
		offset += intercepts_overrun[i].len
		i++$
	}
}

// Emulate overruns of the intercepts[] array.
@[c: 'InterceptsOverrun']
fn intercepts_overrun(num_intercepts int, intercept &Intercept_t) {
	location := 0
	if num_intercepts <= 128 {
		// No overrun
		return
	}
	location = (num_intercepts - 128 - 1) * 12
	// Overwrite memory that is overwritten in Vanilla Doom, using
	// the values from the intercept structure.
	//
	// Note: the ->d.{thing,line} member should really have its
	// address translated into the correct address value for
	// Vanilla Doom.
	intercepts_memory_overrun(location, intercept.frac)
	intercepts_memory_overrun(location + 4, intercept.isaline)
	intercepts_memory_overrun(location + 8, int((C.intptr_t(intercept.d.thing))))
}

//
// P_PathTraverse
// Traces a line from x1,y1 to x2,y2,
// calling the traverser function for each.
// Returns true if the traverser function returns true
// for all lines.
//
@[c: 'P_PathTraverse']
fn p_path_traverse(x1 int, y1 int, x2 int, y2 int, flags int, trav fn (&Intercept_t) bool) bool {
	xt1 := 0
	yt1 := 0
	xt2 := 0
	yt2 := 0
	xstep := 0
	ystep := 0
	partial := 0
	xintercept := 0
	yintercept := 0
	mapx := 0
	mapy := 0
	mapxstep := 0
	mapystep := 0
	count := 0
	earlyout = (flags & 4) != 0
	validcount++
	intercept_p = intercepts
	if ((x1 - bmaporgx) & ((128 * (1 << 16)) - 1)) == 0 {
		x1 += (1 << 16)
	}
	// don't side exactly on a line
	if ((y1 - bmaporgy) & ((128 * (1 << 16)) - 1)) == 0 {
		y1 += (1 << 16)
	}
	// don't side exactly on a line
	trace.x = x1
	trace.y = y1
	trace.dx = x2 - x1
	trace.dy = y2 - y1
	x1 -= bmaporgx
	y1 -= bmaporgy
	xt1 = x1 >> (16 + 7)
	yt1 = y1 >> (16 + 7)
	x2 -= bmaporgx
	y2 -= bmaporgy
	xt2 = x2 >> (16 + 7)
	yt2 = y2 >> (16 + 7)
	if xt2 > xt1 {
		mapxstep = 1
		partial = (1 << 16) - ((x1 >> ((16 + 7) - 16)) & ((1 << 16) - 1))
		ystep = fixed_div(y2 - y1, C.abs(x2 - x1))
	} else if xt2 < xt1 {
		mapxstep = -1
		partial = (x1 >> ((16 + 7) - 16)) & ((1 << 16) - 1)
		ystep = fixed_div(y2 - y1, C.abs(x2 - x1))
	} else {
		mapxstep = 0
		partial = (1 << 16)
		ystep = 256 * (1 << 16)
	}
	yintercept = (y1 >> ((16 + 7) - 16)) + fixed_mul(partial, ystep)
	if yt2 > yt1 {
		mapystep = 1
		partial = (1 << 16) - ((y1 >> ((16 + 7) - 16)) & ((1 << 16) - 1))
		xstep = fixed_div(x2 - x1, C.abs(y2 - y1))
	} else if yt2 < yt1 {
		mapystep = -1
		partial = (y1 >> ((16 + 7) - 16)) & ((1 << 16) - 1)
		xstep = fixed_div(x2 - x1, C.abs(y2 - y1))
	} else {
		mapystep = 0
		partial = (1 << 16)
		xstep = 256 * (1 << 16)
	}
	xintercept = (x1 >> ((16 + 7) - 16)) + fixed_mul(partial, xstep)
	// Step through map blocks.
	// Count is present to prevent a round off error
	// from skipping the break.
	mapx = xt1
	mapy = yt1
	for count = 0; count < 64; count++ {
		if flags & 1 {
			if !p_block_lines_iterator(mapx, mapy, pit_add_line_intercepts) {
				return false
			}
			// early out
		}
		if flags & 2 {
			if !p_block_things_iterator(mapx, mapy, pit_add_thing_intercepts) {
				return false
			}
			// early out
		}
		if mapx == xt2 && mapy == yt2 {
			break
		}
		if (yintercept >> 16) == mapy {
			yintercept += ystep
			mapx += mapxstep
		} else if (xintercept >> 16) == mapx {
			xintercept += xstep
			mapy += mapystep
		}
	}
	// go through the sorted list
	return p_traverse_intercepts(trav, (1 << 16))
}
