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
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
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
//
//
// Returns a number from 0 to 255,
// from a lookup table.
// As M_Random, but used only by the play simulation.
@[c: 'P_Random']
fn p_random() int

// Fix randoms for demos.
// Defined version of P_Random() - P_Random()
@[c: 'P_SubRandom']
fn p_sub_random() int

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
@[c: 'P_SetupPsprites']
fn p_setup_psprites(curplayer &Player_t)

@[c: 'P_MovePsprites']
fn p_move_psprites(curplayer &Player_t)

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

@[c: 'P_SetMobjState']
fn p_set_mobj_state(mobj &Mobj_t, state Statenum_t) bool

@[c: 'P_SpawnPlayerMissile']
fn p_spawn_player_missile(source &Mobj_t, type_ Mobjtype_t)

//
// P_ENEMY
//
@[c: 'P_NoiseAlert']
fn p_noise_alert(target &Mobj_t, emmiter &Mobj_t)

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
@[c: 'P_AimLineAttack']
fn p_aim_line_attack(t1 &Mobj_t, angle Angle_t, distance int) int

@[c: 'P_LineAttack']
fn p_line_attack(t1 &Mobj_t, angle Angle_t, distance int, slope int, damage int)

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
//	Weapon sprite animation, weapon objects.
//	Action functions for weapons.
//
// State.
// Data.
//
// P_SetPsprite
//
@[c: 'P_SetPsprite']
fn p_set_psprite(player &Player_t, position int, stnum Statenum_t) {
	psp := &Pspdef_t(0)
	state := &State_t(0)
	psp = &player.psprites[position]
	for {
		if !stnum {
			// object removed itself
			psp.state = (unsafe { nil })
			break
		}
		state = &states[stnum]
		psp.state = state
		psp.tics = state.tics
		// could be 0
		if state.misc1 {
			// coordinate set
			psp.sx = state.misc1 << 16
			psp.sy = state.misc2 << 16
		}
		// Call action routine.
		// Modified handling.
		if state.action.acp2 {
			state.action.acp2(player, psp)
			if !psp.state {
				break
			}
		}
		stnum = psp.state.nextstate
		// while()
		if !(!psp.tics) {
			break
		}
	}
	// an initial state of 0 could cycle through
}

//
// P_CalcSwing
//	
@[c: 'P_CalcSwing']
fn p_calc_swing(player &Player_t) {
	swing := 0
	angle := 0
	// OPTIMIZE: tablify this.
	// A LUT would allow for different modes,
	//  and add flexibility.
	swing = player.bob
	angle = (8192 / 70 * leveltime) & (8192 - 1)
	swingx = fixed_mul(swing, finesine[angle])
	angle = (8192 / 70 * leveltime + 8192 / 2) & (8192 - 1)
	swingy = -fixed_mul(swingx, finesine[angle])
}

//
// P_BringUpWeapon
// Starts bringing the pending weapon up
// from the bottom of the screen.
// Uses player
//
@[c: 'P_BringUpWeapon']
fn p_bring_up_weapon(player &Player_t) {
	newstate := Statenum_t{}
	if player.pendingweapon == Weapontype_t.wp_nochange {
		player.pendingweapon = player.readyweapon
	}
	if player.pendingweapon == Weapontype_t.wp_chainsaw {
		s_start_sound(player.mo, Sfxenum_t.sfx_sawup)
	}
	newstate = weaponinfo[player.pendingweapon].upstate
	player.pendingweapon = Weapontype_t.wp_nochange
	player.psprites[int(Psprnum_t.ps_weapon)].sy = 128 * (1 << 16)
	p_set_psprite(player, Psprnum_t.ps_weapon, newstate)
}

//
// P_CheckAmmo
// Returns true if there is enough ammo to shoot.
// If not, selects the next weapon to use.
//
@[c: 'P_CheckAmmo']
fn p_check_ammo(player &Player_t) bool {
	ammo := Ammotype_t{}
	count := 0
	ammo = weaponinfo[player.readyweapon].ammo
	// Minimal amount for one shot varies.
	if player.readyweapon == Weapontype_t.wp_bfg {
		count = deh_bfg_cells_per_shot
	} else if player.readyweapon == Weapontype_t.wp_supershotgun {
		count = 2
	}
	// Double barrel.
	else { // 3
		count = 1
	}
	// Regular.
	// Some do not need ammunition anyway.
	// Return if current ammunition sufficient.
	if ammo == Ammotype_t.am_noammo || player.ammo[ammo] >= count {
		return true
	}
	// Out of ammo, pick a weapon to change to.
	// Preferences are set here.
	for {
		if player.weaponowned[int(Weapontype_t.wp_plasma)] && player.ammo[int(Ammotype_t.am_cell)]
			&& gamemode != GameMode_t.shareware {
			player.pendingweapon = Weapontype_t.wp_plasma
		} else if player.weaponowned[int(Weapontype_t.wp_supershotgun)]
			&& player.ammo[int(Ammotype_t.am_shell)] > 2 && gamemode == GameMode_t.commercial {
			player.pendingweapon = Weapontype_t.wp_supershotgun
		} else if player.weaponowned[int(Weapontype_t.wp_chaingun)]
			&& player.ammo[int(Ammotype_t.am_clip)] {
			player.pendingweapon = Weapontype_t.wp_chaingun
		} else if player.weaponowned[int(Weapontype_t.wp_shotgun)]
			&& player.ammo[int(Ammotype_t.am_shell)] {
			player.pendingweapon = Weapontype_t.wp_shotgun
		} else if player.ammo[int(Ammotype_t.am_clip)] {
			player.pendingweapon = Weapontype_t.wp_pistol
		} else if player.weaponowned[int(Weapontype_t.wp_chainsaw)] {
			player.pendingweapon = Weapontype_t.wp_chainsaw
		} else if player.weaponowned[int(Weapontype_t.wp_missile)]
			&& player.ammo[int(Ammotype_t.am_misl)] {
			player.pendingweapon = Weapontype_t.wp_missile
		} else if player.weaponowned[int(Weapontype_t.wp_bfg)]
			&& player.ammo[int(Ammotype_t.am_cell)] > 40 && gamemode != GameMode_t.shareware {
			player.pendingweapon = Weapontype_t.wp_bfg
		} else {
			// If everything fails.
			player.pendingweapon = Weapontype_t.wp_fist
		}
		// while()
		if !(player.pendingweapon == Weapontype_t.wp_nochange) {
			break
		}
	}
	// Now set appropriate weapon overlay.
	p_set_psprite(player, Psprnum_t.ps_weapon, weaponinfo[player.readyweapon].downstate)
	return false
}

//
// P_FireWeapon.
//
@[c: 'P_FireWeapon']
fn p_fire_weapon(player &Player_t) {
	newstate := Statenum_t{}
	if !p_check_ammo(player) {
		return
	}
	p_set_mobj_state(player.mo, Statenum_t.s_play_atk_1)
	newstate = weaponinfo[player.readyweapon].atkstate
	p_set_psprite(player, Psprnum_t.ps_weapon, newstate)
	p_noise_alert(player.mo, player.mo)
}

//
// P_DropWeapon
// Player died, so put the weapon away.
//
@[c: 'P_DropWeapon']
fn p_drop_weapon(player &Player_t) {
	p_set_psprite(player, Psprnum_t.ps_weapon, weaponinfo[player.readyweapon].downstate)
}

//
// A_WeaponReady
// The player can fire the weapon
// or change to another weapon at this time.
// Follows after getting weapon up,
// or after previous attack/fire sequence.
//
@[c: 'A_WeaponReady']
fn a_weapon_ready(player &Player_t, psp &Pspdef_t) {
	newstate := Statenum_t{}
	angle := 0
	// get out of attack state
	if player.mo.state == &states[int(Statenum_t.s_play_atk_1)]
		|| player.mo.state == &states[int(Statenum_t.s_play_atk_2)] {
		p_set_mobj_state(player.mo, Statenum_t.s_play)
	}
	if player.readyweapon == Weapontype_t.wp_chainsaw && psp.state == &states[int(Statenum_t.s_saw)] {
		s_start_sound(player.mo, Sfxenum_t.sfx_sawidl)
	}
	// check for change
	//  if player is dead, put the weapon away
	if player.pendingweapon != Weapontype_t.wp_nochange || !player.health {
		// change weapon
		//  (pending weapon should allready be validated)
		newstate = weaponinfo[player.readyweapon].downstate
		p_set_psprite(player, Psprnum_t.ps_weapon, newstate)
		return
	}
	// check for fire
	//  the missile launcher and bfg do not auto fire
	if player.cmd.buttons & Buttoncode_t.bt_attack {
		if !player.attackdown || (player.readyweapon != Weapontype_t.wp_missile
			&& player.readyweapon != Weapontype_t.wp_bfg) {
			player.attackdown = true
			p_fire_weapon(player)
			return
		}
	} else { // 3
		player.attackdown = false
	}
	// bob the weapon based on movement speed
	angle = (128 * leveltime) & (8192 - 1)
	psp.sx = (1 << 16) + fixed_mul(player.bob, finecosine[angle])
	angle &= 8192 / 2 - 1
	psp.sy = 32 * (1 << 16) + fixed_mul(player.bob, finesine[angle])
}

//
// A_ReFire
// The player can re-fire the weapon
// without lowering it entirely.
//
@[c: 'A_ReFire']
fn a_re_fire(player &Player_t, psp &Pspdef_t) {
	// check for fire
	//  (if a weaponchange is pending, let it go through instead)
	if player.cmd.buttons & Buttoncode_t.bt_attack
		&& player.pendingweapon == Weapontype_t.wp_nochange && player.health {
		player.refire++
		p_fire_weapon(player)
	} else {
		player.refire = 0
		p_check_ammo(player)
	}
}

@[c: 'A_CheckReload']
fn a_check_reload(player &Player_t, psp &Pspdef_t) {
	p_check_ammo(player)
}

//
// A_Lower
// Lowers current weapon,
//  and changes weapon at bottom.
//
@[c: 'A_Lower']
fn a_lower(player &Player_t, psp &Pspdef_t) {
	psp.sy += (1 << 16) * 6
	// Is already down.
	if psp.sy < 128 * (1 << 16) {
		return
	}
	// Player is dead.
	if player.playerstate == Playerstate_t.pst_dead {
		psp.sy = 128 * (1 << 16)
		// don't bring weapon back up
		return
	}
	// The old weapon has been lowered off the screen,
	// so change the weapon and start raising it
	if !player.health {
		// Player is dead, so keep the weapon off screen.
		p_set_psprite(player, Psprnum_t.ps_weapon, Statenum_t.s_null)
		return
	}
	player.readyweapon = player.pendingweapon
	p_bring_up_weapon(player)
}

//
// A_Raise
//
@[c: 'A_Raise']
fn a_raise(player &Player_t, psp &Pspdef_t) {
	newstate := Statenum_t{}
	psp.sy -= (1 << 16) * 6
	if psp.sy > 32 * (1 << 16) {
		return
	}
	psp.sy = 32 * (1 << 16)
	// The weapon has been raised all the way,
	//  so change to the ready state.
	newstate = weaponinfo[player.readyweapon].readystate
	p_set_psprite(player, Psprnum_t.ps_weapon, newstate)
}

//
// A_GunFlash
//
@[c: 'A_GunFlash']
fn a_gun_flash(player &Player_t, psp &Pspdef_t) {
	p_set_mobj_state(player.mo, Statenum_t.s_play_atk_2)
	p_set_psprite(player, Psprnum_t.ps_flash, weaponinfo[player.readyweapon].flashstate)
}

//
// WEAPON ATTACKS
//
//
// A_Punch
//
@[c: 'A_Punch']
fn a_punch(player &Player_t, psp &Pspdef_t) {
	angle := u32(0)
	damage := 0
	slope := 0
	damage = (p_random() % 10 + 1) << 1
	if player.powers[int(Powertype_t.pw_strength)] {
		damage *= 10
	}
	angle = player.mo.angle
	angle += p_sub_random() << 18
	slope = p_aim_line_attack(player.mo, angle, (64 * (1 << 16)))
	p_line_attack(player.mo, angle, (64 * (1 << 16)), slope, damage)
	// turn to face target
	if linetarget {
		s_start_sound(player.mo, Sfxenum_t.sfx_punch)
		player.mo.angle = r_point_to_angle2(player.mo.x, player.mo.y, linetarget.x, linetarget.y)
	}
}

//
// A_Saw
//
@[c: 'A_Saw']
fn a_saw(player &Player_t, psp &Pspdef_t) {
	angle := u32(0)
	damage := 0
	slope := 0
	damage = 2 * (p_random() % 10 + 1)
	angle = player.mo.angle
	angle += p_sub_random() << 18
	// use meleerange + 1 se the puff doesn't skip the flash
	slope = p_aim_line_attack(player.mo, angle, (64 * (1 << 16)) + 1)
	p_line_attack(player.mo, angle, (64 * (1 << 16)) + 1, slope, damage)
	if !linetarget {
		s_start_sound(player.mo, Sfxenum_t.sfx_sawful)
		return
	}
	s_start_sound(player.mo, Sfxenum_t.sfx_sawhit)
	// turn to face target
	angle = r_point_to_angle2(player.mo.x, player.mo.y, linetarget.x, linetarget.y)
	if angle - player.mo.angle > 2147483648 {
		if int((angle - player.mo.angle)) < -1073741824 / 20 {
			player.mo.angle = angle + 1073741824 / 21
		} else { // 3
			player.mo.angle -= 1073741824 / 20
		}
	} else {
		if angle - player.mo.angle > 1073741824 / 20 {
			player.mo.angle = angle - 1073741824 / 21
		} else { // 3
			player.mo.angle += 1073741824 / 20
		}
	}
	player.mo.flags |= Mobjflag_t.mf_justattacked
}

// Doom does not check the bounds of the ammo array.  As a result,
// it is possible to use an ammo type > 4 that overflows into the
// maxammo array and affects that instead.  Through dehacked, for
// example, it is possible to make a weapon that decreases the max
// number of ammo for another weapon.  Emulate this.
@[c: 'DecreaseAmmo']
fn decrease_ammo(player &Player_t, ammonum int, amount int) {
	if ammonum < Ammotype_t.numammo {
		player.ammo[ammonum] -= amount
	} else {
		player.maxammo[ammonum - int(Ammotype_t.numammo)] -= amount
	}
}

//
// A_FireMissile
//
@[c: 'A_FireMissile']
fn a_fire_missile(player &Player_t, psp &Pspdef_t) {
	decrease_ammo(player, weaponinfo[player.readyweapon].ammo, 1)
	p_spawn_player_missile(player.mo, Mobjtype_t.mt_rocket)
}

//
// A_FireBFG
//
@[c: 'A_FireBFG']
fn a_fire_bfg(player &Player_t, psp &Pspdef_t) {
	decrease_ammo(player, weaponinfo[player.readyweapon].ammo, deh_bfg_cells_per_shot)
	p_spawn_player_missile(player.mo, Mobjtype_t.mt_bfg)
}

//
// A_FirePlasma
//
@[c: 'A_FirePlasma']
fn a_fire_plasma(player &Player_t, psp &Pspdef_t) {
	decrease_ammo(player, weaponinfo[player.readyweapon].ammo, 1)
	p_set_psprite(player, Psprnum_t.ps_flash, weaponinfo[player.readyweapon].flashstate +
		(p_random() & 1))
	p_spawn_player_missile(player.mo, Mobjtype_t.mt_plasma)
}

//
// P_BulletSlope
// Sets a slope so a near miss is at aproximately
// the height of the intended target
//
@[c: 'P_BulletSlope']
fn p_bullet_slope(mo &Mobj_t) {
	an := u32(0)
	// see which target is to be aimed at
	an = mo.angle
	bulletslope = p_aim_line_attack(mo, an, 16 * 64 * (1 << 16))
	if !linetarget {
		an += 1 << 26
		bulletslope = p_aim_line_attack(mo, an, 16 * 64 * (1 << 16))
		if !linetarget {
			an -= 2 << 26
			bulletslope = p_aim_line_attack(mo, an, 16 * 64 * (1 << 16))
		}
	}
}

//
// P_GunShot
//
@[c: 'P_GunShot']
fn p_gun_shot(mo &Mobj_t, accurate bool) {
	angle := u32(0)
	damage := 0
	damage = 5 * (p_random() % 3 + 1)
	angle = mo.angle
	if !accurate {
		angle += p_sub_random() << 18
	}
	p_line_attack(mo, angle, (32 * 64 * (1 << 16)), bulletslope, damage)
}

//
// A_FirePistol
//
@[c: 'A_FirePistol']
fn a_fire_pistol(player &Player_t, psp &Pspdef_t) {
	s_start_sound(player.mo, Sfxenum_t.sfx_pistol)
	p_set_mobj_state(player.mo, Statenum_t.s_play_atk_2)
	decrease_ammo(player, weaponinfo[player.readyweapon].ammo, 1)
	p_set_psprite(player, Psprnum_t.ps_flash, weaponinfo[player.readyweapon].flashstate)
	p_bullet_slope(player.mo)
	p_gun_shot(player.mo, !player.refire)
}

//
// A_FireShotgun
//
@[c: 'A_FireShotgun']
fn a_fire_shotgun(player &Player_t, psp &Pspdef_t) {
	i := 0
	s_start_sound(player.mo, Sfxenum_t.sfx_shotgn)
	p_set_mobj_state(player.mo, Statenum_t.s_play_atk_2)
	decrease_ammo(player, weaponinfo[player.readyweapon].ammo, 1)
	p_set_psprite(player, Psprnum_t.ps_flash, weaponinfo[player.readyweapon].flashstate)
	p_bullet_slope(player.mo)
	for i = 0; i < 7; i++ {
		p_gun_shot(player.mo, false)
	}
}

//
// A_FireShotgun2
//
@[c: 'A_FireShotgun2']
fn a_fire_shotgun2(player &Player_t, psp &Pspdef_t) {
	i := 0
	angle := u32(0)
	damage := 0
	s_start_sound(player.mo, Sfxenum_t.sfx_dshtgn)
	p_set_mobj_state(player.mo, Statenum_t.s_play_atk_2)
	decrease_ammo(player, weaponinfo[player.readyweapon].ammo, 2)
	p_set_psprite(player, Psprnum_t.ps_flash, weaponinfo[player.readyweapon].flashstate)
	p_bullet_slope(player.mo)
	for i = 0; i < 20; i++ {
		damage = 5 * (p_random() % 3 + 1)
		angle = player.mo.angle
		angle += p_sub_random() << 19
		p_line_attack(player.mo, angle, (32 * 64 * (1 << 16)), bulletslope + (p_sub_random() << 5),
			damage)
	}
}

//
// A_FireCGun
//
@[c: 'A_FireCGun']
fn a_fire_cg_un(player &Player_t, psp &Pspdef_t) {
	s_start_sound(player.mo, Sfxenum_t.sfx_pistol)
	if !player.ammo[weaponinfo[player.readyweapon].ammo] {
		return
	}
	p_set_mobj_state(player.mo, Statenum_t.s_play_atk_2)
	decrease_ammo(player, weaponinfo[player.readyweapon].ammo, 1)
	p_set_psprite(player, Psprnum_t.ps_flash, weaponinfo[player.readyweapon].flashstate + psp.state - &states[int(Statenum_t.s_chain_1)])
	p_bullet_slope(player.mo)
	p_gun_shot(player.mo, !player.refire)
}

//
// ?
//
@[c: 'A_Light0']
fn a_light0(player &Player_t, psp &Pspdef_t) {
	player.extralight = 0
}

@[c: 'A_Light1']
fn a_light1(player &Player_t, psp &Pspdef_t) {
	player.extralight = 1
}

@[c: 'A_Light2']
fn a_light2(player &Player_t, psp &Pspdef_t) {
	player.extralight = 2
}

//
// A_BFGSpray
// Spawn a BFG explosion on every monster in view
//
@[c: 'A_BFGSpray']
fn a_bfgs_pray(mo &Mobj_t) {
	i := 0
	j := 0
	damage := 0
	an := u32(0)
	// offset angles from its attack angle
	for i = 0; i < 40; i++ {
		an = mo.angle - 1073741824 / 2 + 1073741824 / 40 * i
		// mo->target is the originator (player)
		//  of the missile
		p_aim_line_attack(mo.target, an, 16 * 64 * (1 << 16))
		if !linetarget {
			continue
		}
		p_spawn_mobj(linetarget.x, linetarget.y, linetarget.z + (linetarget.height >> 2),
			Mobjtype_t.mt_extrabfg)
		damage = 0
		for j = 0; j < 15; j++ {
			damage += (p_random() & 7) + 1
		}
		p_damage_mobj(linetarget, mo.target, mo.target, damage)
	}
}

//
// A_BFGsound
//
@[c: 'A_BFGsound']
fn a_bfg_sound(player &Player_t, psp &Pspdef_t) {
	s_start_sound(player.mo, Sfxenum_t.sfx_bfg)
}

//
// P_SetupPsprites
// Called at start of level for each player.
//
@[c: 'P_SetupPsprites']
fn p_setup_psprites(player &Player_t) {
	i := 0
	// remove all psprites
	for i = 0; i < Psprnum_t.numpsprites; i++ {
		player.psprites[i].state = (unsafe { nil })
	}
	// spawn the gun
	player.pendingweapon = player.readyweapon
	p_bring_up_weapon(player)
}

//
// P_MovePsprites
// Called every tic by player thinking routine.
//
@[c: 'P_MovePsprites']
fn p_move_psprites(player &Player_t) {
	i := 0
	psp := &Pspdef_t(0)
	state := &State_t(0)
	psp = &player.psprites[0]
	for i = 0; i < Psprnum_t.numpsprites; i++ {
		// a null state means not active
		state = psp.state
		if state {
			// drop tic count and possibly change state
			// a -1 tic count never changes
			if psp.tics != -1 {
				psp.tics--
				if !psp.tics {
					p_set_psprite(player, i, psp.state.nextstate)
				}
			}
		}
		psp++
	}
	player.psprites[int(Psprnum_t.ps_flash)].sx = player.psprites[int(Psprnum_t.ps_weapon)].sx
	player.psprites[int(Psprnum_t.ps_flash)].sy = player.psprites[int(Psprnum_t.ps_weapon)].sy
}
