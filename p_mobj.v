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
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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

@[c: 'P_RemoveThinker']
fn p_remove_thinker(thinker &Thinker_t)

//
// P_PSPR
//
@[c: 'P_SetupPsprites']
fn p_setup_psprites(curplayer &Player_t)

//
// P_USER
//
//
// P_MOBJ
//
// Time interval for item respawning.
@[c: 'P_RespawnSpecials']
fn p_respawn_specials()

@[c: 'P_SpawnMobj']
fn p_spawn_mobj(x int, y int, z int, type_ Mobjtype_t) &Mobj_t

@[c: 'P_RemoveMobj']
fn p_remove_mobj(th &Mobj_t)

@[c: 'P_SubstNullMobj']
fn p_subst_null_mobj(th &Mobj_t) &Mobj_t

@[c: 'P_SetMobjState']
fn p_set_mobj_state(mobj &Mobj_t, state Statenum_t) bool

@[c: 'P_MobjThinker']
fn p_mobj_thinker(mobj &Mobj_t)

@[c: 'P_SpawnPuff']
fn p_spawn_puff(x int, y int, z int)

@[c: 'P_SpawnBlood']
fn p_spawn_blood(x int, y int, z int, damage int)

@[c: 'P_SpawnMissile']
fn p_spawn_missile(source &Mobj_t, dest &Mobj_t, type_ Mobjtype_t) &Mobj_t

@[c: 'P_SpawnPlayerMissile']
fn p_spawn_player_missile(source &Mobj_t, type_ Mobjtype_t)

//
// P_ENEMY
//
//
// P_MAPUTL
//
// Extended MAXINTERCEPTS, to allow for intercepts overrun emulation.
@[c: 'P_AproxDistance']
fn p_aprox_distance(dx int, dy int) int

@[c: 'P_UnsetThingPosition']
fn p_unset_thing_position(thing &Mobj_t)

@[c: 'P_SetThingPosition']
fn p_set_thing_position(thing &Mobj_t)

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
@[c: 'P_CheckPosition']
fn p_check_position(thing &Mobj_t, x int, y int) bool

@[c: 'P_TryMove']
fn p_try_move(thing &Mobj_t, x int, y int) bool

@[c: 'P_SlideMove']
fn p_slide_move(mo &Mobj_t)

// who got hit (or NULL)
@[c: 'P_AimLineAttack']
fn p_aim_line_attack(t1 &Mobj_t, angle Angle_t, distance int) int

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
// Called by main loop.
// Called by main loop.
// Called when the console player is spawned on each level.
@[c: 'ST_Start']
fn st_start()

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
@[c: 'HU_Start']
fn hu_start()

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
@[c: 'S_StopSound']
fn s_stop_sound(origin &Mobj_t)

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
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Moving object handling. Spawn functions.
//
@[c: 'G_PlayerReborn']
fn g_player_reborn(player int)

@[c: 'P_SpawnMapThing']
fn p_spawn_map_thing(mthing &Mapthing_t)

//
// P_SetMobjState
// Returns true if the mobj is still present.
//
// Use a heuristic approach to detect infinite state cycles: Count the number
// of times the loop in P_SetMobjState() executes and exit with an error once
// an arbitrary very large limit is reached.
@[c: 'P_SetMobjState']
fn p_set_mobj_state(mobj &Mobj_t, state Statenum_t) bool {
	st := &State_t(0)
	cycle_counter := 0
	for {
		if state == Statenum_t.s_null {
			mobj.state = &State_t(Statenum_t.s_null)
			p_remove_mobj(mobj)
			return false
		}
		st = &states[state]
		mobj.state = st
		mobj.tics = st.tics
		mobj.sprite = st.sprite
		mobj.frame = st.frame
		// Modified handling.
		// Call action functions when the state is set
		if st.action.acp1 {
			st.action.acp1(mobj)
		}
		state = st.nextstate
		if cycle_counter++ > 1000000 {
			i_error(c'P_SetMobjState: Infinite state cycle detected!')
		}
		// while()
		if !(!mobj.tics) {
			break
		}
	}
	return true
}

//
// P_ExplodeMissile
//
@[c: 'P_ExplodeMissile']
fn p_explode_missile(mo &Mobj_t) {
	mo.momx = 0
	mo.momy = mo.momx
	mo.momz = 0
	p_set_mobj_state(mo, mobjinfo[mo.type_].deathstate)
	mo.tics -= p_random() & 3
	if mo.tics < 1 {
		mo.tics = 1
	}
	mo.flags &= ~Mobjflag_t.mf_missile
	if mo.info.deathsound {
		s_start_sound(mo, mo.info.deathsound)
	}
}

//
// P_XYMovement
//
@[c: 'P_XYMovement']
fn p_xym_ovement(mo &Mobj_t) {
	ptryx := 0
	ptryy := 0
	player := &Player_t(0)
	xmove := 0
	ymove := 0
	if !mo.momx && !mo.momy {
		if mo.flags & Mobjflag_t.mf_skullfly {
			// the skull slammed into something
			mo.flags &= ~Mobjflag_t.mf_skullfly
			mo.momx = 0
			mo.momy = mo.momx
			mo.momz = 0
			p_set_mobj_state(mo, mo.info.spawnstate)
		}
		return
	}
	player = mo.player
	if mo.momx > (30 * (1 << 16)) {
		mo.momx = (30 * (1 << 16))
	} else if mo.momx < -(30 * (1 << 16)) {
		mo.momx = -(30 * (1 << 16))
	}
	if mo.momy > (30 * (1 << 16)) {
		mo.momy = (30 * (1 << 16))
	} else if mo.momy < -(30 * (1 << 16)) {
		mo.momy = -(30 * (1 << 16))
	}
	xmove = mo.momx
	ymove = mo.momy
	for {
		if xmove > (30 * (1 << 16)) / 2 || ymove > (30 * (1 << 16)) / 2 {
			ptryx = mo.x + xmove / 2
			ptryy = mo.y + ymove / 2
			xmove >>= 1
			ymove >>= 1
		} else {
			ptryx = mo.x + xmove
			ptryy = mo.y + ymove
			xmove = 0
			ymove = xmove
		}
		if !p_try_move(mo, ptryx, ptryy) {
			// blocked move
			if mo.player {
				// try to slide along it
				p_slide_move(mo)
			} else if mo.flags & Mobjflag_t.mf_missile {
				// explode a missile
				if ceilingline && ceilingline.backsector
					&& ceilingline.backsector.ceilingpic == skyflatnum {
					// Hack to prevent missiles exploding
					// against the sky.
					// Does not handle sky floors.
					p_remove_mobj(mo)
					return
				}
				p_explode_missile(mo)
			} else { // 3
				mo.momx = 0
				mo.momy = mo.momx
			}
		}
		// while()
		if !(xmove || ymove) {
			break
		}
	}
	// slow down
	if player && player.cheats & Cheat_t.cf_nomomentum {
		// debug option for no sliding at all
		mo.momx = 0
		mo.momy = mo.momx
		return
	}
	if mo.flags & (Mobjflag_t.mf_missile | Mobjflag_t.mf_skullfly) {
		return
	}
	// no friction for missiles ever
	if mo.z > mo.floorz {
		return
	}
	// no friction when airborne
	if mo.flags & Mobjflag_t.mf_corpse {
		// do not stop sliding
		//  if halfway off a step with some momentum
		if mo.momx > (1 << 16) / 4 || mo.momx < -(1 << 16) / 4 || mo.momy > (1 << 16) / 4
			|| mo.momy < -(1 << 16) / 4 {
			if mo.floorz != mo.subsector.sector.floorheight {
				return
			}
		}
	}
	if mo.momx > -4096 && mo.momx < 4096 && mo.momy > -4096 && mo.momy < 4096
		&& (!player || (player.cmd.forwardmove == 0 && player.cmd.sidemove == 0)) {
		// if in a walking frame, stop moving
		if player && u32(((player.mo.state - states) - Statenum_t.s_play_run_1)) < 4 {
			p_set_mobj_state(player.mo, Statenum_t.s_play)
		}
		mo.momx = 0
		mo.momy = 0
	} else {
		mo.momx = fixed_mul(mo.momx, 59392)
		mo.momy = fixed_mul(mo.momy, 59392)
	}
}

//
// P_ZMovement
//
@[c: 'P_ZMovement']
fn p_zm_ovement(mo &Mobj_t) {
	dist := 0
	delta := 0
	// check for smooth step up
	if mo.player && mo.z < mo.floorz {
		mo.player.viewheight -= mo.floorz - mo.z
		mo.player.deltaviewheight = ((41 * (1 << 16)) - mo.player.viewheight) >> 3
	}
	// adjust height
	mo.z += mo.momz
	if mo.flags & Mobjflag_t.mf_float && mo.target {
		// float down towards target if too close
		if !(mo.flags & Mobjflag_t.mf_skullfly) && !(mo.flags & Mobjflag_t.mf_infloat) {
			dist = p_aprox_distance(mo.x - mo.target.x, mo.y - mo.target.y)
			delta = (mo.target.z + (mo.height >> 1)) - mo.z
			if delta < 0 && dist < -(delta * 3) {
				mo.z -= ((1 << 16) * 4)
			} else if delta > 0 && dist < (delta * 3) {
				mo.z += ((1 << 16) * 4)
			}
		}
	}
	// clip movement
	if mo.z <= mo.floorz {
		// hit the floor
		// Note (id):
		//  somebody left this after the setting momz to 0,
		//  kinda useless there.
		//
		// cph - This was the a bug in the linuxdoom-1.10 source which
		//  caused it not to sync Doom 2 v1.9 demos. Someone
		//  added the above comment and moved up the following code. So
		//  demos would desync in close lost soul fights.
		// Note that this only applies to original Doom 1 or Doom2 demos - not
		//  Final Doom and Ultimate Doom.  So we test demo_compatibility *and*
		//  gamemission. (Note we assume that Doom1 is always Ult Doom, which
		//  seems to hold for most published demos.)
		//
		//  fraggle - cph got the logic here slightly wrong.  There are three
		//  versions of Doom 1.9:
		//
		//  * The version used in registered doom 1.9 + doom2 - no bounce
		//  * The version used in ultimate doom - has bounce
		//  * The version used in final doom - has bounce
		//
		// So we need to check that this is either retail or commercial
		// (but not doom2)
		correct_lost_soul_bounce := gameversion >= GameVersion_t.exe_ultimate
		if correct_lost_soul_bounce && mo.flags & Mobjflag_t.mf_skullfly {
			// the skull slammed into something
			mo.momz = -mo.momz
		}
		if mo.momz < 0 {
			if mo.player && mo.momz < -(1 << 16) * 8 {
				// Squat down.
				// Decrease viewheight for a moment
				// after hitting the ground (hard),
				// and utter appropriate sound.
				mo.player.deltaviewheight = mo.momz >> 3
				s_start_sound(mo, Sfxenum_t.sfx_oof)
			}
			mo.momz = 0
		}
		mo.z = mo.floorz
		// cph 2001/05/26 -
		// See lost soul bouncing comment above. We need this here for bug
		// compatibility with original Doom2 v1.9 - if a soul is charging and
		// hit by a raising floor this incorrectly reverses its Y momentum.
		//
		if !correct_lost_soul_bounce && mo.flags & Mobjflag_t.mf_skullfly {
			mo.momz = -mo.momz
		}
		if mo.flags & Mobjflag_t.mf_missile && !(mo.flags & Mobjflag_t.mf_noclip) {
			p_explode_missile(mo)
			return
		}
	} else if !(mo.flags & Mobjflag_t.mf_nogravity) {
		if mo.momz == 0 {
			mo.momz = -(1 << 16) * 2
		} else { // 3
			mo.momz -= (1 << 16)
		}
	}
	if mo.z + mo.height > mo.ceilingz {
		// hit the ceiling
		if mo.momz > 0 {
			mo.momz = 0
		}
		{
			mo.z = mo.ceilingz - mo.height
		}
		if mo.flags & Mobjflag_t.mf_skullfly {
			// the skull slammed into something
			mo.momz = -mo.momz
		}
		if mo.flags & Mobjflag_t.mf_missile && !(mo.flags & Mobjflag_t.mf_noclip) {
			p_explode_missile(mo)
			return
		}
	}
}

//
// P_NightmareRespawn
//
@[c: 'P_NightmareRespawn']
fn p_nightmare_respawn(mobj &Mobj_t) {
	x := 0
	y := 0
	z := 0
	ss := &Subsector_t(0)
	mo := &Mobj_t(0)
	mthing := &Mapthing_t(0)
	x = mobj.spawnpoint.x << 16
	y = mobj.spawnpoint.y << 16
	// somthing is occupying it's position?
	if !p_check_position(mobj, x, y) {
		return
	}
	// no respwan
	// spawn a teleport fog at old spot
	// because of removal of the body?
	mo = p_spawn_mobj(mobj.x, mobj.y, mobj.subsector.sector.floorheight, Mobjtype_t.mt_tfog)
	// initiate teleport sound
	s_start_sound(mo, Sfxenum_t.sfx_telept)
	// spawn a teleport fog at the new spot
	ss = r_point_in_subsector(x, y)
	mo = p_spawn_mobj(x, y, ss.sector.floorheight, Mobjtype_t.mt_tfog)
	s_start_sound(mo, Sfxenum_t.sfx_telept)
	// spawn the new monster
	mthing = &mobj.spawnpoint
	// spawn it
	if mobj.info.flags & Mobjflag_t.mf_spawnceiling {
		z = 2147483647
	} else { // 3
		z = (-2147483647 - 1)
	}
	// inherit attributes from deceased one
	mo = p_spawn_mobj(x, y, z, mobj.type_)
	mo.spawnpoint = mobj.spawnpoint
	mo.angle = 536870912 * (mthing.angle / 45)
	if mthing.options & 8 {
		mo.flags |= Mobjflag_t.mf_ambush
	}
	mo.reactiontime = 18
	// remove the old monster,
	p_remove_mobj(mobj)
}

//
// P_MobjThinker
//
@[c: 'P_MobjThinker']
fn p_mobj_thinker(mobj &Mobj_t) {
	// momentum movement
	if mobj.momx || mobj.momy || mobj.flags & Mobjflag_t.mf_skullfly {
		p_xym_ovement(mobj)
		// FIXME: decent NOP/NULL/Nil function pointer please.
		if mobj.thinker.function.acv == Actionf_v((-1)) {
			return
		}
		// mobj was removed
	}
	if mobj.z != mobj.floorz || mobj.momz {
		p_zm_ovement(mobj)
		// FIXME: decent NOP/NULL/Nil function pointer please.
		if mobj.thinker.function.acv == Actionf_v((-1)) {
			return
		}
		// mobj was removed
	}
	// cycle through states,
	// calling action functions at transitions
	if mobj.tics != -1 {
		mobj.tics--
		// you can cycle through multiple states in a tic
		if !mobj.tics {
			if !p_set_mobj_state(mobj, mobj.state.nextstate) {
				return
			}
		}
		// freed itself
	} else {
		// check for nightmare respawn
		if !(mobj.flags & Mobjflag_t.mf_countkill) {
			return
		}
		if !respawnmonsters {
			return
		}
		mobj.movecount++
		if mobj.movecount < 12 * 35 {
			return
		}
		if leveltime & 31 {
			return
		}
		if p_random() > 4 {
			return
		}
		p_nightmare_respawn(mobj)
	}
}

//
// P_SpawnMobj
//
@[c: 'P_SpawnMobj']
fn p_spawn_mobj(x int, y int, z int, type_ Mobjtype_t) &Mobj_t {
	mobj := &Mobj_t(0)
	st := &State_t(0)
	info := &Mobjinfo_t(0)
	mobj = z_malloc(sizeof(*mobj), 5, (unsafe { nil }))
	C.memset(mobj, 0, sizeof(*mobj))
	info = &mobjinfo[type_]
	mobj.type_ = type_
	mobj.info = info
	mobj.x = x
	mobj.y = y
	mobj.radius = info.radius
	mobj.height = info.height
	mobj.flags = info.flags
	mobj.health = info.spawnhealth
	if gameskill != Skill_t.sk_nightmare {
		mobj.reactiontime = info.reactiontime
	}
	mobj.lastlook = p_random() % 4
	// do not set the state with P_SetMobjState,
	// because action routines can not be called yet
	st = &states[info.spawnstate]
	mobj.state = st
	mobj.tics = st.tics
	mobj.sprite = st.sprite
	mobj.frame = st.frame
	// set subsector and/or block links
	p_set_thing_position(mobj)
	mobj.floorz = mobj.subsector.sector.floorheight
	mobj.ceilingz = mobj.subsector.sector.ceilingheight
	if z == (-2147483647 - 1) {
		mobj.z = mobj.floorz
	} else if z == 2147483647 {
		mobj.z = mobj.ceilingz - mobj.info.height
	} else { // 3
		mobj.z = z
	}
	mobj.thinker.function.acp1 = Actionf_p1(p_mobj_thinker)
	p_add_thinker(&mobj.thinker)
	return mobj
}

//
// P_RemoveMobj
//
@[c: 'P_RemoveMobj']
fn p_remove_mobj(mobj &Mobj_t) {
	if mobj.flags & Mobjflag_t.mf_special && !(mobj.flags & Mobjflag_t.mf_dropped)
		&& mobj.type_ != Mobjtype_t.mt_inv && mobj.type_ != Mobjtype_t.mt_ins {
		itemrespawnque[iquehead] = mobj.spawnpoint
		itemrespawntime[iquehead] = leveltime
		iquehead = (iquehead + 1) & (128 - 1)
		// lose one off the end?
		if iquehead == iquetail {
			iquetail = (iquetail + 1) & (128 - 1)
		}
	}
	// unlink from sector and block lists
	p_unset_thing_position(mobj)
	// stop any playing sound
	s_stop_sound(mobj)
	// free block
	p_remove_thinker(&Thinker_t(mobj))
}

//
// P_RespawnSpecials
//
@[c: 'P_RespawnSpecials']
fn p_respawn_specials() {
	x := 0
	y := 0
	z := 0
	ss := &Subsector_t(0)
	mo := &Mobj_t(0)
	mthing := &Mapthing_t(0)
	i := 0
	// only respawn items in deathmatch
	if deathmatch != 2 {
		return
	}
	//
	// nothing left to respawn?
	if iquehead == iquetail {
		return
	}
	// wait at least 30 seconds
	if leveltime - itemrespawntime[iquetail] < 30 * 35 {
		return
	}
	mthing = &itemrespawnque[iquetail]
	x = mthing.x << 16
	y = mthing.y << 16
	// spawn a teleport fog at the new spot
	ss = r_point_in_subsector(x, y)
	mo = p_spawn_mobj(x, y, ss.sector.floorheight, Mobjtype_t.mt_ifog)
	s_start_sound(mo, Sfxenum_t.sfx_itmbk)
	// find which type to spawn
	for i = 0; i < Mobjtype_t.nummobjtypes; i++ {
		if mthing.type_ == mobjinfo[i].doomednum {
			break
		}
	}
	if i >= Mobjtype_t.nummobjtypes {
		i_error(c'P_RespawnSpecials: Failed to find mobj type with doomednum %d when respawning thing. This would cause a buffer overrun in vanilla Doom',
			mthing.type_)
	}
	// spawn it
	if mobjinfo[i].flags & Mobjflag_t.mf_spawnceiling {
		z = 2147483647
	} else { // 3
		z = (-2147483647 - 1)
	}
	mo = p_spawn_mobj(x, y, z, i)
	mo.spawnpoint = *mthing
	mo.angle = 536870912 * (mthing.angle / 45)
	// pull it from the que
	iquetail = (iquetail + 1) & (128 - 1)
}

//
// P_SpawnPlayer
// Called when a player is spawned on the level.
// Most of the player structure stays unchanged
//  between levels.
//
@[c: 'P_SpawnPlayer']
fn p_spawn_player(mthing &Mapthing_t) {
	p := &Player_t(0)
	x := 0
	y := 0
	z := 0
	mobj := &Mobj_t(0)
	i := 0
	if mthing.type_ == 0 {
		return
	}
	// not playing?
	if !playeringame[mthing.type_ - 1] {
		return
	}
	p = &players[mthing.type_ - 1]
	if p.playerstate == Playerstate_t.pst_reborn {
		g_player_reborn(mthing.type_ - 1)
	}
	x = mthing.x << 16
	y = mthing.y << 16
	z = (-2147483647 - 1)
	mobj = p_spawn_mobj(x, y, z, Mobjtype_t.mt_player)
	// set color translations for player sprites
	if mthing.type_ > 1 {
		mobj.flags |= (mthing.type_ - 1) << Mobjflag_t.mf_transshift
	}
	mobj.angle = 536870912 * (mthing.angle / 45)
	mobj.player = p
	mobj.health = p.health
	p.mo = mobj
	p.playerstate = Playerstate_t.pst_live
	p.refire = 0
	p.message = (unsafe { nil })
	p.damagecount = 0
	p.bonuscount = 0
	p.extralight = 0
	p.fixedcolormap = 0
	p.viewheight = (41 * (1 << 16))
	// setup gun psprite
	p_setup_psprites(p)
	// give all cards in death match mode
	if deathmatch {
		for i = 0; i < Card_t.numcards; i++ {
			p.cards[i] = true
		}
	}
	if mthing.type_ - 1 == consoleplayer {
		// wake up the status bar
		st_start()
		// wake up the heads up text
		hu_start()
	}
}

//
// P_SpawnMapThing
// The fields of the mapthing should
// already be in host byte order.
//
@[c: 'P_SpawnMapThing']
fn p_spawn_map_thing(mthing &Mapthing_t) {
	i := 0
	bit := 0
	mobj := &Mobj_t(0)
	x := 0
	y := 0
	z := 0
	// count deathmatch start positions
	if mthing.type_ == 11 {
		//
		//		 XTODO overflow
		//	if (deathmatch_p < &deathmatchstarts[10])
		//		
		if 1 {
			C.memcpy(deathmatch_p, mthing, sizeof(*mthing))
			deathmatch_p++
		}
		return
	}
	if mthing.type_ <= 0 {
		// Thing type 0 is actually "player -1 start".
		// For some reason, Vanilla Doom accepts/ignores this.
		return
	}
	// check for players specially
	if mthing.type_ <= 4 {
		// save spots for respawning in network games
		playerstarts[mthing.type_ - 1] = *mthing
		playerstartsingame[mthing.type_ - 1] = true
		if !deathmatch {
			p_spawn_player(mthing)
		}
		return
	}
	// check for apropriate skill level
	if !netgame && mthing.options & 16 {
		return
	}
	if gameskill == Skill_t.sk_baby {
		bit = 1
	} else if gameskill == Skill_t.sk_nightmare {
		bit = 4
	} else { // 3
		bit = 1 << (gameskill - 1)
	}
	if !(mthing.options & bit) {
		return
	}
	// find which type to spawn
	for i = 0; i < Mobjtype_t.nummobjtypes; i++ {
		if mthing.type_ == mobjinfo[i].doomednum {
			break
		}
	}
	if i == Mobjtype_t.nummobjtypes {
		i_error(c'P_SpawnMapThing: Unknown type %i at (%i, %i)', mthing.type_, mthing.x,
			mthing.y)
	}
	// don't spawn keycards and players in deathmatch
	if deathmatch && mobjinfo[i].flags & Mobjflag_t.mf_notdmatch {
		return
	}
	// don't spawn any monsters if -nomonsters
	if nomonsters && (i == Mobjtype_t.mt_skull || mobjinfo[i].flags & Mobjflag_t.mf_countkill) {
		return
	}
	// spawn it
	x = mthing.x << 16
	y = mthing.y << 16
	if mobjinfo[i].flags & Mobjflag_t.mf_spawnceiling {
		z = 2147483647
	} else { // 3
		z = (-2147483647 - 1)
	}
	mobj = p_spawn_mobj(x, y, z, i)
	mobj.spawnpoint = *mthing
	if mobj.tics > 0 {
		mobj.tics = 1 + (p_random() % mobj.tics)
	}
	if mobj.flags & Mobjflag_t.mf_countkill {
		totalkills++
	}
	if mobj.flags & Mobjflag_t.mf_countitem {
		totalitems++
	}
	mobj.angle = 536870912 * (mthing.angle / 45)
	if mthing.options & 8 {
		mobj.flags |= Mobjflag_t.mf_ambush
	}
}

//
// GAME SPAWN FUNCTIONS
//
//
// P_SpawnPuff
//
@[c: 'P_SpawnPuff']
fn p_spawn_puff(x int, y int, z int) {
	th := &Mobj_t(0)
	z += (p_sub_random() << 10)
	th = p_spawn_mobj(x, y, z, Mobjtype_t.mt_puff)
	th.momz = (1 << 16)
	th.tics -= p_random() & 3
	if th.tics < 1 {
		th.tics = 1
	}
	// don't make punches spark on the wall
	if attackrange == (64 * (1 << 16)) {
		p_set_mobj_state(th, Statenum_t.s_puff_3)
	}
}

//
// P_SpawnBlood
//
@[c: 'P_SpawnBlood']
fn p_spawn_blood(x int, y int, z int, damage int) {
	th := &Mobj_t(0)
	z += (p_sub_random() << 10)
	th = p_spawn_mobj(x, y, z, Mobjtype_t.mt_blood)
	th.momz = (1 << 16) * 2
	th.tics -= p_random() & 3
	if th.tics < 1 {
		th.tics = 1
	}
	if damage <= 12 && damage >= 9 {
		p_set_mobj_state(th, Statenum_t.s_blood_2)
	} else if damage < 9 {
		p_set_mobj_state(th, Statenum_t.s_blood_3)
	}
}

//
// P_CheckMissileSpawn
// Moves the missile forward a bit
//  and possibly explodes it right there.
//
@[c: 'P_CheckMissileSpawn']
fn p_check_missile_spawn(th &Mobj_t) {
	th.tics -= p_random() & 3
	if th.tics < 1 {
		th.tics = 1
	}
	// move a little forward so an angle can
	// be computed if it immediately explodes
	th.x += (th.momx >> 1)
	th.y += (th.momy >> 1)
	th.z += (th.momz >> 1)
	if !p_try_move(th, th.x, th.y) {
		p_explode_missile(th)
	}
}

// Certain functions assume that a mobj_t pointer is non-NULL,
// causing a crash in some situations where it is NULL.  Vanilla
// Doom did not crash because of the lack of proper memory
// protection. This function substitutes NULL pointers for
// pointers to a dummy mobj, to avoid a crash.
@[c: 'P_SubstNullMobj']
fn p_subst_null_mobj(mobj &Mobj_t) &Mobj_t {
	if mobj == (unsafe { nil }) {
		dummy_mobj := Mobj_t{}
		dummy_mobj.x = 0
		dummy_mobj.y = 0
		dummy_mobj.z = 0
		dummy_mobj.flags = 0
		mobj = &dummy_mobj
	}
	return mobj
}

//
// P_SpawnMissile
//
@[c: 'P_SpawnMissile']
fn p_spawn_missile(source &Mobj_t, dest &Mobj_t, type_ Mobjtype_t) &Mobj_t {
	th := &Mobj_t(0)
	an := u32(0)
	dist := 0
	th = p_spawn_mobj(source.x, source.y, source.z + 4 * 8 * (1 << 16), type_)
	if th.info.seesound {
		s_start_sound(th, th.info.seesound)
	}
	th.target = source
	// where it came from
	an = r_point_to_angle2(source.x, source.y, dest.x, dest.y)
	// fuzzy player
	if dest.flags & Mobjflag_t.mf_shadow {
		an += p_sub_random() << 20
	}
	th.angle = an
	an >>= 19
	th.momx = fixed_mul(th.info.speed, finecosine[an])
	th.momy = fixed_mul(th.info.speed, finesine[an])
	dist = p_aprox_distance(dest.x - source.x, dest.y - source.y)
	dist = dist / th.info.speed
	if dist < 1 {
		dist = 1
	}
	th.momz = (dest.z - source.z) / dist
	p_check_missile_spawn(th)
	return th
}

//
// P_SpawnPlayerMissile
// Tries to aim at a nearby monster
//
@[c: 'P_SpawnPlayerMissile']
fn p_spawn_player_missile(source &Mobj_t, type_ Mobjtype_t) {
	th := &Mobj_t(0)
	an := u32(0)
	x := 0
	y := 0
	z := 0
	slope := 0
	// see which target is to be aimed at
	an = source.angle
	slope = p_aim_line_attack(source, an, 16 * 64 * (1 << 16))
	if !linetarget {
		an += 1 << 26
		slope = p_aim_line_attack(source, an, 16 * 64 * (1 << 16))
		if !linetarget {
			an -= 2 << 26
			slope = p_aim_line_attack(source, an, 16 * 64 * (1 << 16))
		}
		if !linetarget {
			an = source.angle
			slope = 0
		}
	}
	x = source.x
	y = source.y
	z = source.z + 4 * 8 * (1 << 16)
	th = p_spawn_mobj(x, y, z, type_)
	if th.info.seesound {
		s_start_sound(th, th.info.seesound)
	}
	th.target = source
	th.angle = an
	th.momx = fixed_mul(th.info.speed, finecosine[an >> 19])
	th.momy = fixed_mul(th.info.speed, finesine[an >> 19])
	th.momz = fixed_mul(th.info.speed, slope)
	p_check_missile_spawn(th)
}
