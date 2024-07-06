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

@[c: 'P_SubstNullMobj']
fn p_subst_null_mobj(th &Mobj_t) &Mobj_t

@[c: 'P_SetMobjState']
fn p_set_mobj_state(mobj &Mobj_t, state Statenum_t) bool

@[c: 'P_MobjThinker']
fn p_mobj_thinker(mobj &Mobj_t)

@[c: 'P_SpawnPuff']
fn p_spawn_puff(x int, y int, z int)

@[c: 'P_SpawnMissile']
fn p_spawn_missile(source &Mobj_t, dest &Mobj_t, type_ Mobjtype_t) &Mobj_t

//
// P_ENEMY
//
@[c: 'P_NoiseAlert']
fn p_noise_alert(target &Mobj_t, emmiter &Mobj_t)

//
// P_MAPUTL
//
// Extended MAXINTERCEPTS, to allow for intercepts overrun emulation.
@[c: 'P_AproxDistance']
fn p_aprox_distance(dx int, dy int) int

@[c: 'P_LineOpening']
fn p_line_opening(linedef &Line_t)

@[c: 'P_BlockThingsIterator']
fn p_block_things_iterator(x int, y int, func fn (&Mobj_t) bool) bool

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
@[c: 'P_CheckPosition']
fn p_check_position(thing &Mobj_t, x int, y int) bool

@[c: 'P_TryMove']
fn p_try_move(thing &Mobj_t, x int, y int) bool

@[c: 'P_TeleportMove']
fn p_teleport_move(thing &Mobj_t, x int, y int) bool

@[c: 'P_CheckSight']
fn p_check_sight(t1 &Mobj_t, t2 &Mobj_t) bool

// skipping global dup "linetarget"
// who got hit (or NULL)
@[c: 'P_AimLineAttack']
fn p_aim_line_attack(t1 &Mobj_t, angle Angle_t, distance int) int

@[c: 'P_LineAttack']
fn p_line_attack(t1 &Mobj_t, angle Angle_t, distance int, slope int, damage int)

@[c: 'P_RadiusAttack']
fn p_radius_attack(spot &Mobj_t, source &Mobj_t, damage int)

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
@[c: 'P_UseSpecialLine']
fn p_use_special_line(thing &Mobj_t, line &Line_t, side int) bool

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
@[c: 'EV_DoDoor']
fn ev_do_door(line &Line_t, type_ Vldoor_e) int

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
@[c: 'EV_DoFloor']
fn ev_do_floor(line &Line_t, floortype Floor_e) int

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
//	Enemy thinking, AI.
//	Action Pointer Functions
//	that are associated with states/frames.
//
// State.
// Data.
enum Dirtype_t {
	di_east
	di_northeast
	di_north
	di_northwest
	di_west
	di_southwest
	di_south
	di_southeast
	di_nodir
	numdirs
}

//
// P_NewChaseDir related LUT.
//
@[c: 'A_Fall']
fn a_fall(actor &Mobj_t)

//
// ENEMY THINKING
// Enemies are allways spawned
// with targetplayer = -1, threshold = 0
// Most monsters are spawned unaware of all players,
// but some can be made preaware
//
//
// Called by P_NoiseAlert.
// Recursively traverse adjacent sectors,
// sound blocking lines cut off traversal.
//
@[c: 'P_RecursiveSound']
fn p_recursive_sound(sec &Sector_t, soundblocks int) {
	i := 0
	check := &Line_t(0)
	other := &Sector_t(0)
	if 1 {
		return
	}
	// if (false)
	// return;
	// wake up all monsters in this sector
	if sec.validcount == validcount && sec.soundtraversed <= soundblocks + 1 {
		return
	}
	sec.validcount = validcount
	sec.soundtraversed = soundblocks + 1
	sec.soundtarget = soundtarget
	for i = 0; i < sec.linecount; i++ {
		check = sec.lines[i]
		if !(check.flags & 4) {
			continue
		}
		p_line_opening(check)
		if openrange <= 0 {
			continue
		}
		// closed door
		if sides[check.sidenum[0]].sector == sec {
			other = sides[check.sidenum[1]].sector
		} else { // 3
			other = sides[check.sidenum[0]].sector
		}
		if check.flags & 64 {
			if !soundblocks {
				p_recursive_sound(other, 1)
			}
		} else { // 3
			p_recursive_sound(other, soundblocks)
		}
	}
}

//
// P_NoiseAlert
// If a monster yells at a player,
// it will alert other monsters to the player.
//
@[c: 'P_NoiseAlert']
fn p_noise_alert(target &Mobj_t, emmiter &Mobj_t) {
	soundtarget = target
	validcount++
	p_recursive_sound(emmiter.subsector.sector, 0)
}

//
// P_CheckMeleeRange
//
@[c: 'P_CheckMeleeRange']
fn p_check_melee_range(actor &Mobj_t) bool {
	pl := &Mobj_t(0)
	dist := 0
	range := 0
	if !actor.target {
		return false
	}
	pl = actor.target
	dist = p_aprox_distance(pl.x - actor.x, pl.y - actor.y)
	if gameversion <= GameVersion_t.exe_doom_1_2 {
		range = (64 * (1 << 16))
	} else { // 3
		range = (64 * (1 << 16)) - 20 * (1 << 16) + pl.info.radius
	}
	if dist >= range {
		return false
	}
	if !p_check_sight(actor, actor.target) {
		return false
	}
	return true
}

//
// P_CheckMissileRange
//
@[c: 'P_CheckMissileRange']
fn p_check_missile_range(actor &Mobj_t) bool {
	dist := 0
	if !p_check_sight(actor, actor.target) {
		return false
	}
	if actor.flags & Mobjflag_t.mf_justhit {
		// the target just hit the enemy,
		// so fight back!
		actor.flags &= ~Mobjflag_t.mf_justhit
		return true
	}
	if actor.reactiontime {
		return false
	}
	// do not attack yet
	// OPTIMIZE: get this from a global checksight
	dist = p_aprox_distance(actor.x - actor.target.x, actor.y - actor.target.y) - 64 * (1 << 16)
	if !actor.info.meleestate {
		dist -= 128 * (1 << 16)
	}
	// no melee attack, so fire more
	dist >>= 16
	if actor.type_ == Mobjtype_t.mt_vile {
		if dist > 14 * 64 {
			return false
		}
		// too far away
	}
	if actor.type_ == Mobjtype_t.mt_undead {
		if dist < 196 {
			return false
		}
		// close for fist attack
		dist >>= 1
	}
	if actor.type_ == Mobjtype_t.mt_cyborg || actor.type_ == Mobjtype_t.mt_spider
		|| actor.type_ == Mobjtype_t.mt_skull {
		dist >>= 1
	}
	if dist > 200 {
		dist = 200
	}
	if actor.type_ == Mobjtype_t.mt_cyborg && dist > 160 {
		dist = 160
	}
	if p_random() < dist {
		return false
	}
	return true
}

//
// P_Move
// Move in the current direction,
// returns false if the move is blocked.
//
@[c: 'P_Move']
fn p_move(actor &Mobj_t) bool {
	tryx := 0
	tryy := 0
	ld := &Line_t(0)
	// warning: 'catch', 'throw', and 'try'
	// are all C++ reserved words
	try_ok := false
	good := false
	if actor.movedir == Dirtype_t.di_nodir {
		return false
	}
	if u32(actor.movedir) >= 8 {
		i_error(c'Weird actor->movedir!')
	}
	tryx = actor.x + actor.info.speed * xspeed[actor.movedir]
	tryy = actor.y + actor.info.speed * yspeed[actor.movedir]
	try_ok = p_try_move(actor, tryx, tryy)
	if !try_ok {
		// open any specials
		if actor.flags & Mobjflag_t.mf_float && floatok {
			// must adjust height
			if actor.z < tmfloorz {
				actor.z += ((1 << 16) * 4)
			} else { // 3
				actor.z -= ((1 << 16) * 4)
			}
			actor.flags |= Mobjflag_t.mf_infloat
			return true
		}
		if !numspechit {
			return false
		}
		actor.movedir = Dirtype_t.di_nodir
		good = false
		for numspechit-- {
			ld = spechit[numspechit]
			// if the special is not a door
			// that can be opened,
			// return false
			if p_use_special_line(actor, ld, 0) {
				good = true
			}
		}
		return good
	} else {
		actor.flags &= ~Mobjflag_t.mf_infloat
	}
	if !(actor.flags & Mobjflag_t.mf_float) {
		actor.z = actor.floorz
	}
	return true
}

//
// TryWalk
// Attempts to move actor on
// in its current (ob->moveangle) direction.
// If blocked by either a wall or an actor
// returns FALSE
// If move is either clear or blocked only by a door,
// returns TRUE and sets...
// If a door is in the way,
// an OpenDoor call is made to start it opening.
//
@[c: 'P_TryWalk']
fn p_try_walk(actor &Mobj_t) bool {
	if !p_move(actor) {
		return false
	}
	actor.movecount = p_random() & 15
	return true
}

@[c: 'P_NewChaseDir']
fn p_new_chase_dir(actor &Mobj_t) {
	deltax := 0
	deltay := 0
	d := [3]Dirtype_t{}
	tdir := 0
	olddir := u32(0)
	turnaround := u32(0)
	if !actor.target {
		i_error(c'P_NewChaseDir: called with no target')
	}
	olddir = actor.movedir
	turnaround = opposite[olddir]
	deltax = actor.target.x - actor.x
	deltay = actor.target.y - actor.y
	if deltax > 10 * (1 << 16) {
		d[1] = Dirtype_t.di_east
	} else if deltax < -10 * (1 << 16) {
		d[1] = Dirtype_t.di_west
	} else { // 3
		d[1] = Dirtype_t.di_nodir
	}
	if deltay < -10 * (1 << 16) {
		d[2] = Dirtype_t.di_south
	} else if deltay > 10 * (1 << 16) {
		d[2] = Dirtype_t.di_north
	} else { // 3
		d[2] = Dirtype_t.di_nodir
	}
	// try direct route
	if d[1] != Dirtype_t.di_nodir && d[2] != Dirtype_t.di_nodir {
		actor.movedir = diags[((deltay < 0) << 1) + (deltax > 0)]
		if actor.movedir != int(turnaround) && p_try_walk(actor) {
			return
		}
	}
	// try other directions
	if p_random() > 200 || C.abs(deltay) > C.abs(deltax) {
		tdir = d[1]
		d[1] = d[2]
		d[2] = tdir
	}
	if d[1] == turnaround {
		d[1] = Dirtype_t.di_nodir
	}
	if d[2] == turnaround {
		d[2] = Dirtype_t.di_nodir
	}
	if d[1] != Dirtype_t.di_nodir {
		actor.movedir = d[1]
		if p_try_walk(actor) {
			// either moved forward or attacked
			return
		}
	}
	if d[2] != Dirtype_t.di_nodir {
		actor.movedir = d[2]
		if p_try_walk(actor) {
			return
		}
	}
	// there is no direct path to the player,
	// so pick another direction.
	if olddir != Dirtype_t.di_nodir {
		actor.movedir = olddir
		if p_try_walk(actor) {
			return
		}
	}
	// randomly determine direction of search
	if p_random() & 1 {
		for tdir = Dirtype_t.di_east; tdir <= Dirtype_t.di_southeast; tdir++ {
			if tdir != int(turnaround) {
				actor.movedir = tdir
				if p_try_walk(actor) {
					return
				}
			}
		}
	} else {
		for tdir = Dirtype_t.di_southeast; tdir != (Dirtype_t.di_east - 1); tdir-- {
			if tdir != int(turnaround) {
				actor.movedir = tdir
				if p_try_walk(actor) {
					return
				}
			}
		}
	}
	if turnaround != Dirtype_t.di_nodir {
		actor.movedir = turnaround
		if p_try_walk(actor) {
			return
		}
	}
	actor.movedir = Dirtype_t.di_nodir
	// can not move
}

//
// P_LookForPlayers
// If allaround is false, only look 180 degrees in front.
// Returns true if a player is targeted.
//
@[c: 'P_LookForPlayers']
fn p_look_for_players(actor &Mobj_t, allaround bool) bool {
	c := 0
	stop := 0
	player := &Player_t(0)
	an := u32(0)
	dist := 0
	c = 0
	stop = (actor.lastlook - 1) & 3
	for ; true; actor.lastlook = (actor.lastlook + 1) & 3 {
		if !playeringame[actor.lastlook] {
			continue
		}
		if c++ == 2 || actor.lastlook == stop {
			// done looking
			return false
		}
		player = &players[actor.lastlook]
		if player.health <= 0 {
			continue
		}
		// dead
		if !p_check_sight(actor, player.mo) {
			continue
		}
		// out of sight
		if !allaround {
			an = r_point_to_angle2(actor.x, actor.y, player.mo.x, player.mo.y) - actor.angle
			if an > 1073741824 && an < 3221225472 {
				dist = p_aprox_distance(player.mo.x - actor.x, player.mo.y - actor.y)
				// if real close, react anyway
				if dist > (64 * (1 << 16)) {
					continue
				}
				// behind back
			}
		}
		actor.target = player.mo
		return true
	}
	return false
}

//
// A_KeenDie
// DOOM II special, map 32.
// Uses special tag 666.
//
@[c: 'A_KeenDie']
fn a_keen_die(mo &Mobj_t) {
	th := &Thinker_t(0)
	mo2 := &Mobj_t(0)
	junk := Line_t{}
	a_fall(mo)
	// scan the remaining thinkers
	// to see if all Keens are dead
	for th = thinkercap.next; th != &thinkercap; th = th.next {
		if th.function.acp1 != Actionf_p1(p_mobj_thinker) {
			continue
		}
		mo2 = &Mobj_t(th)
		if mo2 != mo && mo2.type_ == mo.type_ && mo2.health > 0 {
			// other Keen not dead
			return
		}
	}
	junk.tag = 666
	ev_do_door(&junk, Vldoor_e.vld_open)
}

//
// ACTION ROUTINES
//
//
// A_Look
// Stay in state until a player is sighted.
//
@[c: 'A_Look']
fn a_look(actor &Mobj_t) {
	// printf("A_Look size=%d => %d \n", sizeof(actor), sizeof(mobj_t));
	////printf("sizeof thinker: %d \n", sizeof(actor->thinker));
	// printf("sizeof floorz: %d \n", sizeof(actor->floorz));
	targ := &Mobj_t(0)
	actor.threshold = 0
	// any shot will wake up
	targ = actor.subsector.sector.soundtarget
	if targ && targ.flags & Mobjflag_t.mf_shootable {
		actor.target = targ
		if actor.flags & Mobjflag_t.mf_ambush {
			if p_check_sight(actor, actor.target) {
				unsafe {
					goto seeyou
				} // id: 0xba4028
			}
		} else { // 3
			unsafe {
				goto seeyou
			} // id: 0xba4028
		}
	}
	if !p_look_for_players(actor, false) {
		return
	}
	// go into chase state
	// RRRREG seeyou id=0xba4028
	seeyou:
	if actor.info.seesound {
		sound := 0
		x := int(Sfxenum_t.sfx_posit1)
		match Sfxenum_t(actor.info.seesound) {
			.sfx_posit1, .sfx_posit2, .sfx_posit3 {
				sound = x + p_random() % 3
			}
			.sfx_bgsit1, .sfx_bgsit2 {
				sound = x + p_random() % 2
			}
			else {
				sound = actor.info.seesound
			}
		}
		if actor.type_ == Mobjtype_t.mt_spider || actor.type_ == Mobjtype_t.mt_cyborg {
			// full volume
			s_start_sound((unsafe { nil }), sound)
		} else { // 3
			s_start_sound(actor, sound)
		}
	}
	p_set_mobj_state(actor, actor.info.seestate)
}

//
// A_Chase
// Actor has a melee attack,
// so it tries to close as fast as possible
//
@[c: 'A_Chase']
fn a_chase(actor &Mobj_t) {
	delta := 0
	if actor.reactiontime {
		actor.reactiontime--
	}
	// modify target threshold
	if actor.threshold {
		if gameversion > GameVersion_t.exe_doom_1_2 && (!actor.target || actor.target.health <= 0) {
			actor.threshold = 0
		} else { // 3
			actor.threshold--
		}
	}
	// turn towards movement direction if not there yet
	if actor.movedir < 8 {
		actor.angle &= (7 << 29)
		delta = actor.angle - (actor.movedir << 29)
		if delta > 0 {
			actor.angle -= 1073741824 / 2
		} else if delta < 0 {
			actor.angle += 1073741824 / 2
		}
	}
	if !actor.target || !(actor.target.flags & Mobjflag_t.mf_shootable) {
		// look for a new target
		if p_look_for_players(actor, true) {
			return
		}
		// got a new target
		p_set_mobj_state(actor, actor.info.spawnstate)
		return
	}
	// do not attack twice in a row
	if actor.flags & Mobjflag_t.mf_justattacked {
		actor.flags &= ~Mobjflag_t.mf_justattacked
		if gameskill != Skill_t.sk_nightmare && !fastparm {
			p_new_chase_dir(actor)
		}
		return
	}
	// check for melee attack
	if actor.info.meleestate && p_check_melee_range(actor) {
		if actor.info.attacksound {
			s_start_sound(actor, actor.info.attacksound)
		}
		p_set_mobj_state(actor, actor.info.meleestate)
		return
	}
	// check for missile attack
	if actor.info.missilestate {
		if gameskill < Skill_t.sk_nightmare && !fastparm && actor.movecount {
			unsafe {
				goto nomissile
			} // id: 0xba9430
		}
		if !p_check_missile_range(actor) {
			unsafe {
				goto nomissile
			} // id: 0xba9430
		}
		p_set_mobj_state(actor, actor.info.missilestate)
		actor.flags |= Mobjflag_t.mf_justattacked
		return
	}
	// ?
	// RRRREG nomissile id=0xba9430
	nomissile:
	// possibly choose another target
	if netgame && !actor.threshold && !p_check_sight(actor, actor.target) {
		if p_look_for_players(actor, true) {
			return
		}
		// got a new target
	}
	// chase towards player
	if actor.movecount--$ < 0 || !p_move(actor) {
		p_new_chase_dir(actor)
	}
	// make active sound
	if actor.info.activesound && p_random() < 3 {
		s_start_sound(actor, actor.info.activesound)
	}
}

//
// A_FaceTarget
//
@[c: 'A_FaceTarget']
fn a_face_target(actor &Mobj_t) {
	if !actor.target {
		return
	}
	actor.flags &= ~Mobjflag_t.mf_ambush
	actor.angle = r_point_to_angle2(actor.x, actor.y, actor.target.x, actor.target.y)
	if actor.target.flags & Mobjflag_t.mf_shadow {
		actor.angle += p_sub_random() << 21
	}
}

//
// A_PosAttack
//
@[c: 'A_PosAttack']
fn a_pos_attack(actor &Mobj_t) {
	angle := 0
	damage := 0
	slope := 0
	if !actor.target {
		return
	}
	a_face_target(actor)
	angle = actor.angle
	slope = p_aim_line_attack(actor, angle, (32 * 64 * (1 << 16)))
	s_start_sound(actor, Sfxenum_t.sfx_pistol)
	angle += p_sub_random() << 20
	damage = ((p_random() % 5) + 1) * 3
	p_line_attack(actor, angle, (32 * 64 * (1 << 16)), slope, damage)
}

@[c: 'A_SPosAttack']
fn a_sp_os_attack(actor &Mobj_t) {
	i := 0
	angle := 0
	bangle := 0
	damage := 0
	slope := 0
	if !actor.target {
		return
	}
	s_start_sound(actor, Sfxenum_t.sfx_shotgn)
	a_face_target(actor)
	bangle = actor.angle
	slope = p_aim_line_attack(actor, bangle, (32 * 64 * (1 << 16)))
	for i = 0; i < 3; i++ {
		angle = bangle + (p_sub_random() << 20)
		damage = ((p_random() % 5) + 1) * 3
		p_line_attack(actor, angle, (32 * 64 * (1 << 16)), slope, damage)
	}
}

@[c: 'A_CPosAttack']
fn a_cp_os_attack(actor &Mobj_t) {
	angle := 0
	bangle := 0
	damage := 0
	slope := 0
	if !actor.target {
		return
	}
	s_start_sound(actor, Sfxenum_t.sfx_shotgn)
	a_face_target(actor)
	bangle = actor.angle
	slope = p_aim_line_attack(actor, bangle, (32 * 64 * (1 << 16)))
	angle = bangle + (p_sub_random() << 20)
	damage = ((p_random() % 5) + 1) * 3
	p_line_attack(actor, angle, (32 * 64 * (1 << 16)), slope, damage)
}

@[c: 'A_CPosRefire']
fn a_cp_os_refire(actor &Mobj_t) {
	// keep firing unless target got out of sight
	a_face_target(actor)
	if p_random() < 40 {
		return
	}
	if !actor.target || actor.target.health <= 0 || !p_check_sight(actor, actor.target) {
		p_set_mobj_state(actor, actor.info.seestate)
	}
}

@[c: 'A_SpidRefire']
fn a_spid_refire(actor &Mobj_t) {
	// keep firing unless target got out of sight
	a_face_target(actor)
	if p_random() < 10 {
		return
	}
	if !actor.target || actor.target.health <= 0 || !p_check_sight(actor, actor.target) {
		p_set_mobj_state(actor, actor.info.seestate)
	}
}

@[c: 'A_BspiAttack']
fn a_bspi_attack(actor &Mobj_t) {
	if !actor.target {
		return
	}
	a_face_target(actor)
	// launch a missile
	p_spawn_missile(actor, actor.target, Mobjtype_t.mt_arachplaz)
}

//
// A_TroopAttack
//
@[c: 'A_TroopAttack']
fn a_troop_attack(actor &Mobj_t) {
	damage := 0
	if !actor.target {
		return
	}
	a_face_target(actor)
	if p_check_melee_range(actor) {
		s_start_sound(actor, Sfxenum_t.sfx_claw)
		damage = (p_random() % 8 + 1) * 3
		p_damage_mobj(actor.target, actor, actor, damage)
		return
	}
	// launch a missile
	p_spawn_missile(actor, actor.target, Mobjtype_t.mt_troopshot)
}

@[c: 'A_SargAttack']
fn a_sarg_attack(actor &Mobj_t) {
	damage := 0
	if !actor.target {
		return
	}
	a_face_target(actor)
	if gameversion > GameVersion_t.exe_doom_1_2 {
		if !p_check_melee_range(actor) {
			return
		}
	}
	damage = ((p_random() % 10) + 1) * 4
	if gameversion <= GameVersion_t.exe_doom_1_2 {
		p_line_attack(actor, actor.angle, (64 * (1 << 16)), 0, damage)
	} else { // 3
		p_damage_mobj(actor.target, actor, actor, damage)
	}
}

@[c: 'A_HeadAttack']
fn a_head_attack(actor &Mobj_t) {
	damage := 0
	if !actor.target {
		return
	}
	a_face_target(actor)
	if p_check_melee_range(actor) {
		damage = (p_random() % 6 + 1) * 10
		p_damage_mobj(actor.target, actor, actor, damage)
		return
	}
	// launch a missile
	p_spawn_missile(actor, actor.target, Mobjtype_t.mt_headshot)
}

@[c: 'A_CyberAttack']
fn a_cyber_attack(actor &Mobj_t) {
	if !actor.target {
		return
	}
	a_face_target(actor)
	p_spawn_missile(actor, actor.target, Mobjtype_t.mt_rocket)
}

@[c: 'A_BruisAttack']
fn a_bruis_attack(actor &Mobj_t) {
	damage := 0
	if !actor.target {
		return
	}
	if p_check_melee_range(actor) {
		s_start_sound(actor, Sfxenum_t.sfx_claw)
		damage = (p_random() % 8 + 1) * 10
		p_damage_mobj(actor.target, actor, actor, damage)
		return
	}
	// launch a missile
	p_spawn_missile(actor, actor.target, Mobjtype_t.mt_bruisershot)
}

//
// A_SkelMissile
//
@[c: 'A_SkelMissile']
fn a_skel_missile(actor &Mobj_t) {
	mo := &Mobj_t(0)
	if !actor.target {
		return
	}
	a_face_target(actor)
	actor.z += 16 * (1 << 16)
	// so missile spawns higher
	mo = p_spawn_missile(actor, actor.target, Mobjtype_t.mt_tracer)
	actor.z -= 16 * (1 << 16)
	// back to normal
	mo.x += mo.momx
	mo.y += mo.momy
	mo.tracer = actor.target
}

@[c: 'A_Tracer']
fn a_tracer(actor &Mobj_t) {
	exact := u32(0)
	dist := 0
	slope := 0
	dest := &Mobj_t(0)
	th := &Mobj_t(0)
	if gametic & 3 {
		return
	}
	// spawn a puff of smoke behind the rocket		
	p_spawn_puff(actor.x, actor.y, actor.z)
	th = p_spawn_mobj(actor.x - actor.momx, actor.y - actor.momy, actor.z, Mobjtype_t.mt_smoke)
	th.momz = (1 << 16)
	th.tics -= p_random() & 3
	if th.tics < 1 {
		th.tics = 1
	}
	// adjust direction
	dest = actor.tracer
	if !dest || dest.health <= 0 {
		return
	}
	// change angle	
	exact = r_point_to_angle2(actor.x, actor.y, dest.x, dest.y)
	if exact != actor.angle {
		if exact - actor.angle > 2147483648 {
			actor.angle -= TRACEANGLE
			if exact - actor.angle < 2147483648 {
				actor.angle = exact
			}
		} else {
			actor.angle += TRACEANGLE
			if exact - actor.angle > 2147483648 {
				actor.angle = exact
			}
		}
	}
	exact = actor.angle >> 19
	actor.momx = fixed_mul(actor.info.speed, finecosine[exact])
	actor.momy = fixed_mul(actor.info.speed, finesine[exact])
	// change slope
	dist = p_aprox_distance(dest.x - actor.x, dest.y - actor.y)
	dist = dist / actor.info.speed
	if dist < 1 {
		dist = 1
	}
	slope = (dest.z + 40 * (1 << 16) - actor.z) / dist
	if slope < actor.momz {
		actor.momz -= (1 << 16) / 8
	} else { // 3
		actor.momz += (1 << 16) / 8
	}
}

@[c: 'A_SkelWhoosh']
fn a_skel_whoosh(actor &Mobj_t) {
	if !actor.target {
		return
	}
	a_face_target(actor)
	s_start_sound(actor, Sfxenum_t.sfx_skeswg)
}

@[c: 'A_SkelFist']
fn a_skel_fist(actor &Mobj_t) {
	damage := 0
	if !actor.target {
		return
	}
	a_face_target(actor)
	if p_check_melee_range(actor) {
		damage = ((p_random() % 10) + 1) * 6
		s_start_sound(actor, Sfxenum_t.sfx_skepch)
		p_damage_mobj(actor.target, actor, actor, damage)
	}
}

//
// PIT_VileCheck
// Detect a corpse that could be raised.
//
@[c: 'PIT_VileCheck']
fn pit_vile_check(thing &Mobj_t) bool {
	maxdist := 0
	check := false
	if !(thing.flags & Mobjflag_t.mf_corpse) {
		return true
	}
	// not a monster
	if thing.tics != -1 {
		return true
	}
	// not lying still yet
	if thing.info.raisestate == Statenum_t.s_null {
		return true
	}
	// monster doesn't have a raise state
	maxdist = thing.info.radius + mobjinfo[int(Mobjtype_t.mt_vile)].radius
	if C.abs(thing.x - viletryx) > maxdist || C.abs(thing.y - viletryy) > maxdist {
		return true
	}
	// not actually touching
	corpsehit = thing
	corpsehit.momx = 0
	corpsehit.momy = 0
	corpsehit.height <<= 2
	check = p_check_position(corpsehit, corpsehit.x, corpsehit.y)
	corpsehit.height >>= 2
	if !check {
		return true
	}
	// doesn't fit here
	return false
	// got one, so stop checking
}

//
// A_VileChase
// Check for ressurecting a body
//
@[c: 'A_VileChase']
fn a_vile_chase(actor &Mobj_t) {
	xl := 0
	xh := 0
	yl := 0
	yh := 0
	bx := 0
	by := 0
	info := &Mobjinfo_t(0)
	temp := &Mobj_t(0)
	if actor.movedir != Dirtype_t.di_nodir {
		// check for corpses to raise
		viletryx = actor.x + actor.info.speed * xspeed[actor.movedir]
		viletryy = actor.y + actor.info.speed * yspeed[actor.movedir]
		xl = (viletryx - bmaporgx - 32 * (1 << 16) * 2) >> (16 + 7)
		xh = (viletryx - bmaporgx + 32 * (1 << 16) * 2) >> (16 + 7)
		yl = (viletryy - bmaporgy - 32 * (1 << 16) * 2) >> (16 + 7)
		yh = (viletryy - bmaporgy + 32 * (1 << 16) * 2) >> (16 + 7)
		vileobj = actor
		for bx = xl; bx <= xh; bx++ {
			for by = yl; by <= yh; by++ {
				// Call PIT_VileCheck to check
				// whether object is a corpse
				// that canbe raised.
				if !p_block_things_iterator(bx, by, pit_vile_check) {
					// got one!
					temp = actor.target
					actor.target = corpsehit
					a_face_target(actor)
					actor.target = temp
					p_set_mobj_state(actor, Statenum_t.s_vile_heal_1)
					s_start_sound(corpsehit, Sfxenum_t.sfx_slop)
					info = corpsehit.info
					p_set_mobj_state(corpsehit, info.raisestate)
					corpsehit.height <<= 2
					corpsehit.flags = info.flags
					corpsehit.health = info.spawnhealth
					corpsehit.target = (unsafe { nil })
					return
				}
			}
		}
	}
	// Return to normal attack.
	a_chase(actor)
}

//
// A_VileStart
//
@[c: 'A_VileStart']
fn a_vile_start(actor &Mobj_t) {
	s_start_sound(actor, Sfxenum_t.sfx_vilatk)
}

//
// A_Fire
// Keep fire in front of player unless out of sight
//
@[c: 'A_Fire']
fn a_fire(actor &Mobj_t)

@[c: 'A_StartFire']
fn a_start_fire(actor &Mobj_t) {
	s_start_sound(actor, Sfxenum_t.sfx_flamst)
	a_fire(actor)
}

@[c: 'A_FireCrackle']
fn a_fire_crackle(actor &Mobj_t) {
	s_start_sound(actor, Sfxenum_t.sfx_flame)
	a_fire(actor)
}

@[c: 'A_Fire']
fn a_fire(actor &Mobj_t) {
	dest := &Mobj_t(0)
	target := &Mobj_t(0)
	an := u32(0)
	dest = actor.tracer
	if !dest {
		return
	}
	target = p_subst_null_mobj(actor.target)
	// don't move it if the vile lost sight
	if !p_check_sight(target, dest) {
		return
	}
	an = dest.angle >> 19
	p_unset_thing_position(actor)
	actor.x = dest.x + fixed_mul(24 * (1 << 16), finecosine[an])
	actor.y = dest.y + fixed_mul(24 * (1 << 16), finesine[an])
	actor.z = dest.z
	p_set_thing_position(actor)
}

//
// A_VileTarget
// Spawn the hellfire
//
@[c: 'A_VileTarget']
fn a_vile_target(actor &Mobj_t) {
	fog := &Mobj_t(0)
	if !actor.target {
		return
	}
	a_face_target(actor)
	fog = p_spawn_mobj(actor.target.x, actor.target.x, actor.target.z, Mobjtype_t.mt_fire)
	actor.tracer = fog
	fog.target = actor
	fog.tracer = actor.target
	a_fire(fog)
}

//
// A_VileAttack
//
@[c: 'A_VileAttack']
fn a_vile_attack(actor &Mobj_t) {
	fire := &Mobj_t(0)
	an := 0
	if !actor.target {
		return
	}
	a_face_target(actor)
	if !p_check_sight(actor, actor.target) {
		return
	}
	s_start_sound(actor, Sfxenum_t.sfx_barexp)
	p_damage_mobj(actor.target, actor, actor, 20)
	actor.target.momz = 1000 * (1 << 16) / actor.target.info.mass
	an = actor.angle >> 19
	fire = actor.tracer
	if !fire {
		return
	}
	// move the fire between the vile and the player
	fire.x = actor.target.x - fixed_mul(24 * (1 << 16), finecosine[an])
	fire.y = actor.target.y - fixed_mul(24 * (1 << 16), finesine[an])
	p_radius_attack(fire, actor, 70)
}

//
// Mancubus attack,
// firing three missiles (bruisers)
// in three different directions?
// Doesn't look like it.
//
@[c: 'A_FatRaise']
fn a_fat_raise(actor &Mobj_t) {
	a_face_target(actor)
	s_start_sound(actor, Sfxenum_t.sfx_manatk)
}

@[c: 'A_FatAttack1']
fn a_fat_attack1(actor &Mobj_t) {
	mo := &Mobj_t(0)
	target := &Mobj_t(0)
	an := 0
	a_face_target(actor)
	// Change direction  to ...
	actor.angle += (1073741824 / 8)
	target = p_subst_null_mobj(actor.target)
	p_spawn_missile(actor, target, Mobjtype_t.mt_fatshot)
	mo = p_spawn_missile(actor, target, Mobjtype_t.mt_fatshot)
	mo.angle += (1073741824 / 8)
	an = mo.angle >> 19
	mo.momx = fixed_mul(mo.info.speed, finecosine[an])
	mo.momy = fixed_mul(mo.info.speed, finesine[an])
}

@[c: 'A_FatAttack2']
fn a_fat_attack2(actor &Mobj_t) {
	mo := &Mobj_t(0)
	target := &Mobj_t(0)
	an := 0
	a_face_target(actor)
	// Now here choose opposite deviation.
	actor.angle -= (1073741824 / 8)
	target = p_subst_null_mobj(actor.target)
	p_spawn_missile(actor, target, Mobjtype_t.mt_fatshot)
	mo = p_spawn_missile(actor, target, Mobjtype_t.mt_fatshot)
	mo.angle -= (1073741824 / 8) * 2
	an = mo.angle >> 19
	mo.momx = fixed_mul(mo.info.speed, finecosine[an])
	mo.momy = fixed_mul(mo.info.speed, finesine[an])
}

@[c: 'A_FatAttack3']
fn a_fat_attack3(actor &Mobj_t) {
	mo := &Mobj_t(0)
	target := &Mobj_t(0)
	an := 0
	a_face_target(actor)
	target = p_subst_null_mobj(actor.target)
	mo = p_spawn_missile(actor, target, Mobjtype_t.mt_fatshot)
	mo.angle -= (1073741824 / 8) / 2
	an = mo.angle >> 19
	mo.momx = fixed_mul(mo.info.speed, finecosine[an])
	mo.momy = fixed_mul(mo.info.speed, finesine[an])
	mo = p_spawn_missile(actor, target, Mobjtype_t.mt_fatshot)
	mo.angle += (1073741824 / 8) / 2
	an = mo.angle >> 19
	mo.momx = fixed_mul(mo.info.speed, finecosine[an])
	mo.momy = fixed_mul(mo.info.speed, finesine[an])
}

//
// SkullAttack
// Fly at the player like a missile.
//
@[c: 'A_SkullAttack']
fn a_skull_attack(actor &Mobj_t) {
	dest := &Mobj_t(0)
	an := u32(0)
	dist := 0
	if !actor.target {
		return
	}
	dest = actor.target
	actor.flags |= Mobjflag_t.mf_skullfly
	s_start_sound(actor, actor.info.attacksound)
	a_face_target(actor)
	an = actor.angle >> 19
	actor.momx = fixed_mul((20 * (1 << 16)), finecosine[an])
	actor.momy = fixed_mul((20 * (1 << 16)), finesine[an])
	dist = p_aprox_distance(dest.x - actor.x, dest.y - actor.y)
	dist = dist / (20 * (1 << 16))
	if dist < 1 {
		dist = 1
	}
	actor.momz = (dest.z + (dest.height >> 1) - actor.z) / dist
}

//
// A_PainShootSkull
// Spawn a lost soul and launch it at the target
//
@[c: 'A_PainShootSkull']
fn a_pain_shoot_skull(actor &Mobj_t, angle Angle_t) {
	x := 0
	y := 0
	z := 0
	newmobj := &Mobj_t(0)
	an := u32(0)
	prestep := 0
	count := 0
	currentthinker := &Thinker_t(0)
	// count total number of skull currently on the level
	count = 0
	currentthinker = thinkercap.next
	for currentthinker != &thinkercap {
		if currentthinker.function.acp1 == Actionf_p1(p_mobj_thinker)
			&& (&Mobj_t(currentthinker)).type_ == Mobjtype_t.mt_skull {
			count++
		}
		currentthinker = currentthinker.next
	}
	// if there are allready 20 skulls on the level,
	// don't spit another one
	if count > 20 {
		return
	}
	// okay, there's playe for another one
	an = angle >> 19
	prestep = 4 * (1 << 16) + 3 * (actor.info.radius +
		mobjinfo[int(Mobjtype_t.mt_skull)].radius) / 2
	x = actor.x + fixed_mul(prestep, finecosine[an])
	y = actor.y + fixed_mul(prestep, finesine[an])
	z = actor.z + 8 * (1 << 16)
	newmobj = p_spawn_mobj(x, y, z, Mobjtype_t.mt_skull)
	// Check for movements.
	if !p_try_move(newmobj, newmobj.x, newmobj.y) {
		// kill it immediately
		p_damage_mobj(newmobj, actor, actor, 10000)
		return
	}
	newmobj.target = actor.target
	a_skull_attack(newmobj)
}

//
// A_PainAttack
// Spawn a lost soul and launch it at the target
//
@[c: 'A_PainAttack']
fn a_pain_attack(actor &Mobj_t) {
	if !actor.target {
		return
	}
	a_face_target(actor)
	a_pain_shoot_skull(actor, actor.angle)
}

@[c: 'A_PainDie']
fn a_pain_die(actor &Mobj_t) {
	a_fall(actor)
	a_pain_shoot_skull(actor, actor.angle + 1073741824)
	a_pain_shoot_skull(actor, actor.angle + 2147483648)
	a_pain_shoot_skull(actor, actor.angle + 3221225472)
}

@[c: 'A_Scream']
fn a_scream(actor &Mobj_t) {
	sound := 0
	if actor.info.deathsound == 0 {
		return
	}
	x := Sfxenum_t.sfx_podth1
	match Sfxenum_t(actor.info.deathsound) {
		.sfx_podth1, .sfx_podth2, .sfx_podth3 {
			sound = x + p_random() % 3
		}
		.sfx_bgdth1, .sfx_bgdth2 {
			sound = x + p_random() % 2
		}
		else {
			sound = actor.info.deathsound
		}
	}
	// Check for bosses.
	if actor.type_ == Mobjtype_t.mt_spider || actor.type_ == Mobjtype_t.mt_cyborg {
		// full volume
		s_start_sound((unsafe { nil }), sound)
	} else { // 3
		s_start_sound(actor, sound)
	}
}

@[c: 'A_XScream']
fn a_xs_cream(actor &Mobj_t) {
	s_start_sound(actor, Sfxenum_t.sfx_slop)
}

@[c: 'A_Pain']
fn a_pain(actor &Mobj_t) {
	if actor.info.painsound {
		s_start_sound(actor, actor.info.painsound)
	}
}

@[c: 'A_Fall']
fn a_fall(actor &Mobj_t) {
	// actor is on ground, it can be walked over
	actor.flags &= ~Mobjflag_t.mf_solid
	// So change this if corpse objects

	// are meant to be obstacles.
}

//
// A_Explode
//
@[c: 'A_Explode']
fn a_explode(thingy &Mobj_t) {
	p_radius_attack(thingy, thingy.target, 128)
}

// Check whether the death of the specified monster type is allowed
// to trigger the end of episode special action.
//
// This behavior changed in v1.9, the most notable effect of which
// was to break uac_dead.wad
@[c: 'CheckBossEnd']
fn check_boss_end(motype Mobjtype_t) bool {
	if gameversion < GameVersion_t.exe_ultimate {
		if gamemap != 8 {
			return false
		}
		// Baron death on later episodes is nothing special.
		if motype == Mobjtype_t.mt_bruiser && gameepisode != 1 {
			return false
		}
		return true
	} else {
		// New logic that appeared in Ultimate Doom.
		// Looks like the logic was overhauled while adding in the
		// episode 4 support.  Now bosses only trigger on their
		// specific episode.
		match gameepisode {
			1 { // case comp body kind=ReturnStmt is_enum=false
				return gamemap == 8 && motype == Mobjtype_t.mt_bruiser
			}
			2 { // case comp body kind=ReturnStmt is_enum=false
				return gamemap == 8 && motype == Mobjtype_t.mt_cyborg
			}
			3 { // case comp body kind=ReturnStmt is_enum=false
				return gamemap == 8 && motype == Mobjtype_t.mt_spider
			}
			4 { // case comp body kind=ReturnStmt is_enum=false
				return (gamemap == 6 && motype == Mobjtype_t.mt_cyborg)
					|| (gamemap == 8 && motype == Mobjtype_t.mt_spider)
			}
			else {
				return gamemap == 8
			}
		}
	}
}

//
// A_BossDeath
// Possibly trigger special effects
// if on first boss level
//
@[c: 'A_BossDeath']
fn a_boss_death(mo &Mobj_t) {
	th := &Thinker_t(0)
	mo2 := &Mobj_t(0)
	junk := Line_t{}
	i := 0
	if gamemode == GameMode_t.commercial {
		if gamemap != 7 {
			return
		}
		if mo.type_ != Mobjtype_t.mt_fatso && mo.type_ != Mobjtype_t.mt_baby {
			return
		}
	} else {
		if !check_boss_end(mo.type_) {
			return
		}
	}
	// make sure there is a player alive for victory
	for i = 0; i < 4; i++ {
		if playeringame[i] && players[i].health > 0 {
			break
		}
	}
	if i == 4 {
		return
	}
	// no one left alive, so do not end game
	// scan the remaining thinkers to see
	// if all bosses are dead
	for th = thinkercap.next; th != &thinkercap; th = th.next {
		if th.function.acp1 != Actionf_p1(p_mobj_thinker) {
			continue
		}
		mo2 = &Mobj_t(th)
		if mo2 != mo && mo2.type_ == mo.type_ && mo2.health > 0 {
			// other boss not dead
			return
		}
	}
	// victory!
	if gamemode == GameMode_t.commercial {
		if gamemap == 7 {
			if mo.type_ == Mobjtype_t.mt_fatso {
				junk.tag = 666
				ev_do_floor(&junk, Floor_e.lower_floor_to_lowest)
				return
			}
			if mo.type_ == Mobjtype_t.mt_baby {
				junk.tag = 667
				ev_do_floor(&junk, Floor_e.raise_to_texture)
				return
			}
		}
	} else {
		match gameepisode {
			1 { // case comp body kind=BinaryOperator is_enum=false
				junk.tag = 666
				ev_do_floor(&junk, Floor_e.lower_floor_to_lowest)
				return
			}
			4 { // case comp body kind=IfStmt is_enum=false
				if gamemap == 6 {
					junk.tag = 666
					ev_do_door(&junk, Vldoor_e.vld_blaze_open)
					return
				} else if gamemap == 8 {
					junk.tag = 666
					ev_do_floor(&junk, Floor_e.lower_floor_to_lowest)
					return
				}
			}
			else {}
		}
	}
	g_exit_level()
}

@[c: 'A_Hoof']
fn a_hoof(mo &Mobj_t) {
	s_start_sound(mo, Sfxenum_t.sfx_hoof)
	a_chase(mo)
}

@[c: 'A_Metal']
fn a_metal(mo &Mobj_t) {
	s_start_sound(mo, Sfxenum_t.sfx_metal)
	a_chase(mo)
}

@[c: 'A_BabyMetal']
fn a_baby_metal(mo &Mobj_t) {
	s_start_sound(mo, Sfxenum_t.sfx_bspwlk)
	a_chase(mo)
}

@[c: 'A_OpenShotgun2']
fn a_open_shotgun2(player &Player_t, psp &Pspdef_t) {
	s_start_sound(player.mo, Sfxenum_t.sfx_dbopn)
}

@[c: 'A_LoadShotgun2']
fn a_load_shotgun2(player &Player_t, psp &Pspdef_t) {
	s_start_sound(player.mo, Sfxenum_t.sfx_dbload)
}

@[c: 'A_ReFire']
fn a_re_fire(player &Player_t, psp &Pspdef_t)

@[c: 'A_CloseShotgun2']
fn a_close_shotgun2(player &Player_t, psp &Pspdef_t) {
	s_start_sound(player.mo, Sfxenum_t.sfx_dbcls)
	a_re_fire(player, psp)
}

@[c: 'A_BrainAwake']
fn a_brain_awake(mo &Mobj_t) {
	thinker := &Thinker_t(0)
	m := &Mobj_t(0)
	// find all the target spots
	numbraintargets = 0
	braintargeton = 0
	thinker = thinkercap.next
	for thinker = thinkercap.next; thinker != &thinkercap; thinker = thinker.next {
		if thinker.function.acp1 != Actionf_p1(p_mobj_thinker) {
			continue
		}
		// not a mobj
		m = &Mobj_t(thinker)
		if m.type_ == Mobjtype_t.mt_bosstarget {
			braintargets[numbraintargets] = m
			numbraintargets++
		}
	}
	s_start_sound((unsafe { nil }), Sfxenum_t.sfx_bossit)
}

@[c: 'A_BrainPain']
fn a_brain_pain(mo &Mobj_t) {
	s_start_sound((unsafe { nil }), Sfxenum_t.sfx_bospn)
}

@[c: 'A_BrainScream']
fn a_brain_scream(mo &Mobj_t) {
	x := 0
	y := 0
	z := 0
	th := &Mobj_t(0)
	for x = mo.x - 196 * (1 << 16); x < mo.x + 320 * (1 << 16); x += (1 << 16) * 8 {
		y = mo.y - 320 * (1 << 16)
		z = 128 + p_random() * 2 * (1 << 16)
		th = p_spawn_mobj(x, y, z, Mobjtype_t.mt_rocket)
		th.momz = p_random() * 512
		p_set_mobj_state(th, Statenum_t.s_brainexplode_1)
		th.tics -= p_random() & 7
		if th.tics < 1 {
			th.tics = 1
		}
	}
	s_start_sound((unsafe { nil }), Sfxenum_t.sfx_bosdth)
}

@[c: 'A_BrainExplode']
fn a_brain_explode(mo &Mobj_t) {
	x := 0
	y := 0
	z := 0
	th := &Mobj_t(0)
	x = mo.x + p_sub_random() * 2048
	y = mo.y
	z = 128 + p_random() * 2 * (1 << 16)
	th = p_spawn_mobj(x, y, z, Mobjtype_t.mt_rocket)
	th.momz = p_random() * 512
	p_set_mobj_state(th, Statenum_t.s_brainexplode_1)
	th.tics -= p_random() & 7
	if th.tics < 1 {
		th.tics = 1
	}
}

@[c: 'A_BrainDie']
fn a_brain_die(mo &Mobj_t) {
	g_exit_level()
}

@[c: 'A_BrainSpit']
fn a_brain_spit(mo &Mobj_t) {
	targ := &Mobj_t(0)
	newmobj := &Mobj_t(0)
	easy := 0
	easy ^= 1
	if gameskill <= Skill_t.sk_easy && (!easy) {
		return
	}
	// shoot a cube at current target
	targ = braintargets[braintargeton]
	if numbraintargets == 0 {
		i_error(c'A_BrainSpit: numbraintargets was 0 (vanilla crashes here)')
	}
	braintargeton = (braintargeton + 1) % numbraintargets
	// spawn brain missile
	newmobj = p_spawn_missile(mo, targ, Mobjtype_t.mt_spawnshot)
	newmobj.target = targ
	newmobj.reactiontime = ((targ.y - mo.y) / newmobj.momy) / newmobj.state.tics
	s_start_sound((unsafe { nil }), Sfxenum_t.sfx_bospit)
}

@[c: 'A_SpawnFly']
fn a_spawn_fly(mo &Mobj_t)

// travelling cube sound
@[c: 'A_SpawnSound']
fn a_spawn_sound(mo &Mobj_t) {
	s_start_sound(mo, Sfxenum_t.sfx_boscub)
	a_spawn_fly(mo)
}

@[c: 'A_SpawnFly']
fn a_spawn_fly(mo &Mobj_t) {
	newmobj := &Mobj_t(0)
	fog := &Mobj_t(0)
	targ := &Mobj_t(0)
	r := 0
	type_ := Mobjtype_t{}
	if mo.reactiontime--$ {
		return
	}
	// still flying
	targ = p_subst_null_mobj(mo.target)
	// First spawn teleport fog.
	fog = p_spawn_mobj(targ.x, targ.y, targ.z, Mobjtype_t.mt_spawnfire)
	s_start_sound(fog, Sfxenum_t.sfx_telept)
	// Randomly select monster to spawn.
	r = p_random()
	// Probability distribution (kind of :),
	// decreasing likelihood.
	if r < 50 {
		type_ = Mobjtype_t.mt_troop
	} else if r < 90 {
		type_ = Mobjtype_t.mt_sergeant
	} else if r < 120 {
		type_ = Mobjtype_t.mt_shadows
	} else if r < 130 {
		type_ = Mobjtype_t.mt_pain
	} else if r < 160 {
		type_ = Mobjtype_t.mt_head
	} else if r < 162 {
		type_ = Mobjtype_t.mt_vile
	} else if r < 172 {
		type_ = Mobjtype_t.mt_undead
	} else if r < 192 {
		type_ = Mobjtype_t.mt_baby
	} else if r < 222 {
		type_ = Mobjtype_t.mt_fatso
	} else if r < 246 {
		type_ = Mobjtype_t.mt_knight
	} else { // 3
		type_ = Mobjtype_t.mt_bruiser
	}
	newmobj = p_spawn_mobj(targ.x, targ.y, targ.z, type_)
	if p_look_for_players(newmobj, true) {
		p_set_mobj_state(newmobj, newmobj.info.seestate)
	}
	// telefrag anything in this spot
	p_teleport_move(newmobj, newmobj.x, newmobj.y)
	// remove self (i.e., cube).
	p_remove_mobj(mo)
}

@[c: 'A_PlayerScream']
fn a_player_scream(mo &Mobj_t) {
	// Default death sound.
	sound := Sfxenum_t.sfx_pldeth
	if gamemode == GameMode_t.commercial && mo.health < -50 {
		// IF THE PLAYER DIES
		// LESS THAN -50% WITHOUT GIBBING
		sound = Sfxenum_t.sfx_pdiehi
	}
	s_start_sound(mo, sound)
}
