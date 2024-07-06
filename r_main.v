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
@[c: 'NetUpdate']
fn net_update()

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
// skipping global dup "detailLevel"
// skipping global dup "screenblocks"
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
@[c: 'SlopeDiv']
fn slope_div(num u32, den u32) int

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
@[c: 'R_InitData']
fn r_init_data()

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
// skipped extern global validcount
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
@[c: 'R_PointOnSide']
fn r_point_on_side(x int, y int, node &Node_t) int

@[c: 'R_PointOnSegSide']
fn r_point_on_seg_side(x int, y int, line &Seg_t) int

@[c: 'R_PointToAngle']
fn r_point_to_angle(x int, y int) Angle_t

@[c: 'R_PointToAngle2']
fn r_point_to_angle2(x1 int, y1 int, x2 int, y2 int) Angle_t

@[c: 'R_PointToDist']
fn r_point_to_dist(x int, y int) int

@[c: 'R_ScaleFromGlobalAngle']
fn r_scale_from_global_angle(visangle Angle_t) int

@[c: 'R_PointInSubsector']
fn r_point_in_subsector(x int, y int) &Subsector_t

@[c: 'R_AddPointToBox']
fn r_add_point_to_box(x int, y int, box &int)

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
@[c: 'R_SetViewSize']
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
// skipping global dup "rw_x"
// skipping global dup "rw_stopx"
// skipping global dup "segtextured"
// false if the back side is the same plane
// skipping global dup "markfloor"
// skipping global dup "markceiling"
// skipping global dup "drawsegs"
// skipping global dup "ds_p"
// BSP?
@[c: 'R_ClearClipSegs']
fn r_clear_clip_segs()

@[c: 'R_ClearDrawSegs']
fn r_clear_draw_segs()

@[c: 'R_RenderBSPNode']
fn r_render_bspn_ode(bspnum int)

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
@[c: 'R_InitPlanes']
fn r_init_planes()

@[c: 'R_ClearPlanes']
fn r_clear_planes()

@[c: 'R_DrawPlanes']
fn r_draw_planes()

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
@[c: 'R_ClearSprites']
fn r_clear_sprites()

@[c: 'R_DrawMasked']
fn r_draw_masked()

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
@[c: 'R_DrawColumn']
fn r_draw_column()

@[c: 'R_DrawColumnLow']
fn r_draw_column_low()

// The Spectre/Invisibility effect.
@[c: 'R_DrawFuzzColumn']
fn r_draw_fuzz_column()

@[c: 'R_DrawFuzzColumnLow']
fn r_draw_fuzz_column_low()

// Draw with color translation tables,
//  for player sprite rendering,
//  Green/Red/Blue/Indigo shirts.
@[c: 'R_DrawTranslatedColumn']
fn r_draw_translated_column()

@[c: 'R_DrawTranslatedColumnLow']
fn r_draw_translated_column_low()

// start of a 64*64 tile image
// Span blitting for rows, floor/ceiling.
// No Sepctre effect needed.
@[c: 'R_DrawSpan']
fn r_draw_span()

// Low resolution mode, 160x200?
@[c: 'R_DrawSpanLow']
fn r_draw_span_low()

@[c: 'R_InitBuffer']
fn r_init_buffer(width int, height int)

// Initialize color translation tables,
//  for player rendering etc.
@[c: 'R_InitTranslationTables']
fn r_init_translation_tables()

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
//	Sky rendering.
//
// SKY, store the number for name.
// The sky map is 256*128*4 maps.
// skipping global dup "skytexture"
// skipping global dup "skytexturemid"
// Called whenever the view size changes.
@[c: 'R_InitSkyMap']
fn r_init_sky_map()

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Rendering main loop and setup functions,
//	 utility functions (BSP, geometry, trigonometry).
//	See tables.c, too.
//
// Fineangles in the SCREENWIDTH wide window.
// increment every time a check is made
// skipping global dup "walllights"
// just for profiling purposes
// 0 = high, 1 = low
//
// precalculated math tables
//
// The viewangletox[viewangle + FINEANGLES/4] lookup
// maps the visible view angles to screen X coordinates,
// flattening the arc to a flat projection plane.
// There will be many angles mapped to the same X.
// The xtoviewangleangle[] table maps a screen pixel
// to the lowest viewangle that maps back to x ranges
// from clipangle to -clipangle.
// bumped light from gun blasts
//
// R_AddPointToBox
// Expand a given bbox
// so that it encloses a given point.
//
@[c: 'R_AddPointToBox']
fn r_add_point_to_box(x int, y int, box &int) {
	if x < box[int(boxleft)] {
		box[int(boxleft)] = x
	}
	if x > box[int(boxright)] {
		box[int(boxright)] = x
	}
	if y < box[int(boxbottom)] {
		box[int(boxbottom)] = y
	}
	if y > box[int(boxtop)] {
		box[int(boxtop)] = y
	}
}

//
// R_PointOnSide
// Traverse BSP (sub) tree,
//  check point against partition plane.
// Returns side 0 (front) or 1 (back).
//
@[c: 'R_PointOnSide']
fn r_point_on_side(x int, y int, node &Node_t) int {
	dx := 0
	dy := 0
	left := 0
	right := 0
	if !node.dx {
		if x <= node.x {
			return node.dy > 0
		}
		return node.dy < 0
	}
	if !node.dy {
		if y <= node.y {
			return node.dx < 0
		}
		return node.dx > 0
	}
	dx = (x - node.x)
	dy = (y - node.y)
	// Try to quickly decide by looking at sign bits.
	if (node.dy ^ node.dx ^ dx ^ dy) & 2147483648 {
		if (node.dy ^ dx) & 2147483648 {
			// (left is negative)
			return 1
		}
		return 0
	}
	left = fixed_mul(node.dy >> 16, dx)
	right = fixed_mul(dy, node.dx >> 16)
	if right < left {
		// front side
		return 0
	}
	// back side
	return 1
}

@[c: 'R_PointOnSegSide']
fn r_point_on_seg_side(x int, y int, line &Seg_t) int {
	lx := 0
	ly := 0
	ldx := 0
	ldy := 0
	dx := 0
	dy := 0
	left := 0
	right := 0
	lx = line.v1.x
	ly = line.v1.y
	ldx = line.v2.x - lx
	ldy = line.v2.y - ly
	if !ldx {
		if x <= lx {
			return ldy > 0
		}
		return ldy < 0
	}
	if !ldy {
		if y <= ly {
			return ldx < 0
		}
		return ldx > 0
	}
	dx = (x - lx)
	dy = (y - ly)
	// Try to quickly decide by looking at sign bits.
	if (ldy ^ ldx ^ dx ^ dy) & 2147483648 {
		if (ldy ^ dx) & 2147483648 {
			// (left is negative)
			return 1
		}
		return 0
	}
	left = fixed_mul(ldy >> 16, dx)
	right = fixed_mul(dy, ldx >> 16)
	if right < left {
		// front side
		return 0
	}
	// back side
	return 1
}

//
// R_PointToAngle
// To get a global angle from cartesian coordinates,
//  the coordinates are flipped until they are in
//  the first octant of the coordinate system, then
//  the y (<=x) is scaled and divided by x to get a
//  tangent (slope) value which is looked up in the
//  tantoangle[] table.
//
@[c: 'R_PointToAngle']
fn r_point_to_angle(x int, y int) Angle_t {
	x -= viewx
	y -= viewy
	if (!x) && (!y) {
		return 0
	}
	if x >= 0 {
		// x >=0
		if y >= 0 {
			// y>= 0
			if x > y {
				// octant 0
				return tantoangle[slope_div(y, x)]
			} else {
				// octant 1
				return 1073741824 - 1 - tantoangle[slope_div(x, y)]
			}
		} else {
			// y<0
			y = -y
			if x > y {
				// octant 8
				return -tantoangle[slope_div(y, x)]
			} else {
				// octant 7
				return 3221225472 + tantoangle[slope_div(x, y)]
			}
		}
	} else {
		// x<0
		x = -x
		if y >= 0 {
			// y>= 0
			if x > y {
				// octant 3
				return 2147483648 - 1 - tantoangle[slope_div(y, x)]
			} else {
				// octant 2
				return 1073741824 + tantoangle[slope_div(x, y)]
			}
		} else {
			// y<0
			y = -y
			if x > y {
				// octant 4
				return 2147483648 + tantoangle[slope_div(y, x)]
			} else {
				// octant 5
				return 3221225472 - 1 - tantoangle[slope_div(x, y)]
			}
		}
	}
	return 0
}

@[c: 'R_PointToAngle2']
fn r_point_to_angle2(x1 int, y1 int, x2 int, y2 int) Angle_t {
	viewx = x1
	viewy = y1
	return r_point_to_angle(x2, y2)
}

@[c: 'R_PointToDist']
fn r_point_to_dist(x int, y int) int {
	angle := 0
	dx := 0
	dy := 0
	temp := 0
	dist := 0
	frac := 0
	dx = C.abs(x - viewx)
	dy = C.abs(y - viewy)
	if dy > dx {
		temp = dx
		dx = dy
		dy = temp
	}
	// Fix crashes in udm1.wad
	if dx != 0 {
		frac = fixed_div(dy, dx)
	} else {
		frac = 0
	}
	angle = (tantoangle[frac >> (16 - 11)] + 1073741824) >> 19
	// use as cosine
	dist = fixed_div(dx, finesine[angle])
	return dist
}

//
// R_InitPointToAngle
//
@[c: 'R_InitPointToAngle']
fn r_init_point_to_angle() {
	// UNUSED - now getting from tables.c

	//

	// slope (tangent) to angle lookup

	//
}

//
// R_ScaleFromGlobalAngle
// Returns the texture mapping scale
//  for the current line (horizontal span)
//  at the given angle.
// rw_distance must be calculated first.
//
@[c: 'R_ScaleFromGlobalAngle']
fn r_scale_from_global_angle(visangle Angle_t) int {
	scale := 0
	anglea := u32(0)
	angleb := u32(0)
	sinea := 0
	sineb := 0
	num := 0
	den := 0
	// UNUSED
	anglea = 1073741824 + (visangle - viewangle)
	angleb = 1073741824 + (visangle - rw_normalangle)
	// both sines are allways positive
	sinea = finesine[anglea >> 19]
	sineb = finesine[angleb >> 19]
	num = fixed_mul(projection, sineb) << detailshift
	den = fixed_mul(rw_distance, sinea)
	if den > num >> 16 {
		scale = fixed_div(num, den)
		if scale > 64 * (1 << 16) {
			scale = 64 * (1 << 16)
		} else if scale < 256 {
			scale = 256
		}
	} else { // 3
		scale = 64 * (1 << 16)
	}
	return scale
}

//
// R_InitTables
//
@[c: 'R_InitTables']
fn r_init_tables() {
	// UNUSED: now getting from tables.c

	// viewangle tangent table

	// finesine table

	// OPTIMIZE: mirror...
}

//
// R_InitTextureMapping
//
@[c: 'R_InitTextureMapping']
fn r_init_texture_mapping() {
	i := 0
	x := 0
	t := 0
	focallength := 0
	// Use tangent table to generate viewangletox:
	//  viewangletox will give the next greatest x
	//  after the view angle.
	//
	// Calc focallength
	//  so FIELDOFVIEW angles covers SCREENWIDTH.
	focallength = fixed_div(centerxfrac, finetangent[8192 / 4 + 2048 / 2])
	for i = 0; i < 8192 / 2; i++ {
		if finetangent[i] > (1 << 16) * 2 {
			t = -1
		} else if finetangent[i] < -(1 << 16) * 2 {
			t = viewwidth + 1
		} else {
			t = fixed_mul(finetangent[i], focallength)
			t = (centerxfrac - t + (1 << 16) - 1) >> 16
			if t < -1 {
				t = -1
			} else if t > viewwidth + 1 {
				t = viewwidth + 1
			}
		}
		viewangletox[i] = t
	}
	// Scan viewangletox[] to generate xtoviewangle[]:
	//  xtoviewangle will give the smallest view angle
	//  that maps to x.	
	for x = 0; x <= viewwidth; x++ {
		i = 0
		for viewangletox[i] > x {
			i++
		}
		xtoviewangle[x] = (i << 19) - 1073741824
	}
	// Take out the fencepost cases from viewangletox.
	for i = 0; i < 8192 / 2; i++ {
		t = fixed_mul(finetangent[i], focallength)
		t = centerx - t
		if viewangletox[i] == -1 {
			viewangletox[i] = 0
		} else if viewangletox[i] == viewwidth + 1 {
			viewangletox[i] = viewwidth
		}
	}
	clipangle = xtoviewangle[0]
}

//
// R_InitLightTables
// Only inits the zlight table,
//  because the scalelight table changes with view size.
//
@[c: 'R_InitLightTables']
fn r_init_light_tables() {
	i := 0
	j := 0
	level := 0
	startmap := 0
	scale := 0
	// Calculate the light levels to use
	//  for each level / distance combination.
	for i = 0; i < 16; i++ {
		startmap = ((16 - 1 - i) * 2) * 32 / 16
		for j = 0; j < 128; j++ {
			scale = fixed_div((320 / 2 * (1 << 16)), (j + 1) << 20)
			scale >>= 12
			level = startmap - scale / 2
			if level < 0 {
				level = 0
			}
			if level >= 32 {
				level = 32 - 1
			}
			zlight[i][j] = colormaps + level * 256
		}
	}
}

//
// R_SetViewSize
// Do not really change anything here,
//  because it might be in the middle of a refresh.
// The change will take effect next refresh.
//
@[c: 'R_SetViewSize']
fn r_set_view_size(blocks int, detail int) {
	setsizeneeded = true
	setblocks = blocks
	setdetail = detail
}

//
// R_ExecuteSetViewSize
//
@[c: 'R_ExecuteSetViewSize']
fn r_execute_set_view_size() {
	cosadj := 0
	dy := 0
	i := 0
	j := 0
	level := 0
	startmap := 0
	setsizeneeded = false
	if setblocks == 11 {
		scaledviewwidth = 320
		viewheight = 200
	} else {
		scaledviewwidth = setblocks * 32
		viewheight = (setblocks * 168 / 10) & ~7
	}
	detailshift = setdetail
	viewwidth = scaledviewwidth >> detailshift
	centery = viewheight / 2
	centerx = viewwidth / 2
	centerxfrac = centerx << 16
	centeryfrac = centery << 16
	projection = centerxfrac
	if !detailshift {
		colfunc = r_draw_column
		basecolfunc = colfunc
		fuzzcolfunc = r_draw_fuzz_column
		transcolfunc = r_draw_translated_column
		spanfunc = r_draw_span
	} else {
		colfunc = r_draw_column_low
		basecolfunc = colfunc
		fuzzcolfunc = r_draw_fuzz_column_low
		transcolfunc = r_draw_translated_column_low
		spanfunc = r_draw_span_low
	}
	r_init_buffer(scaledviewwidth, viewheight)
	r_init_texture_mapping()
	// psprite scales
	pspritescale = (1 << 16) * viewwidth / 320
	pspriteiscale = (1 << 16) * 320 / viewwidth
	// thing clipping
	for i = 0; i < viewwidth; i++ {
		screenheightarray[i] = viewheight
	}
	// planes
	for i = 0; i < viewheight; i++ {
		dy = ((i - viewheight / 2) << 16) + (1 << 16) / 2
		dy = C.abs(dy)
		yslope[i] = fixed_div((viewwidth << detailshift) / 2 * (1 << 16), dy)
	}
	for i = 0; i < viewwidth; i++ {
		cosadj = C.abs(finecosine[xtoviewangle[i] >> 19])
		distscale[i] = fixed_div((1 << 16), cosadj)
	}
	// Calculate the light levels to use
	//  for each level / scale combination.
	for i = 0; i < 16; i++ {
		startmap = ((16 - 1 - i) * 2) * 32 / 16
		for j = 0; j < 48; j++ {
			level = startmap - j * 320 / (viewwidth << detailshift) / 2
			if level < 0 {
				level = 0
			}
			if level >= 32 {
				level = 32 - 1
			}
			scalelight[i][j] = colormaps + level * 256
		}
	}
}

//
// R_Init
//
@[c: 'R_Init']
fn r_init() {
	r_init_data()
	C.printf(c'.')
	r_init_point_to_angle()
	C.printf(c'.')
	r_init_tables()
	// viewwidth / viewheight / detailLevel are set by the defaults
	C.printf(c'.')
	r_set_view_size(screenblocks, detailLevel)
	r_init_planes()
	C.printf(c'.')
	r_init_light_tables()
	C.printf(c'.')
	r_init_sky_map()
	r_init_translation_tables()
	C.printf(c'.')
	framecount = 0
}

//
// R_PointInSubsector
//
@[c: 'R_PointInSubsector']
fn r_point_in_subsector(x int, y int) &Subsector_t {
	node := &Node_t(0)
	side := 0
	nodenum := 0
	// single subsector is a special case
	if !numnodes {
		return subsectors
	}
	nodenum = numnodes - 1
	for !(nodenum & 32768) {
		node = &nodes[nodenum]
		side = r_point_on_side(x, y, node)
		nodenum = node.children[side]
	}
	return &subsectors[nodenum & ~32768]
}

//
// R_SetupFrame
//
@[c: 'R_SetupFrame']
fn r_setup_frame(player &Player_t) {
	i := 0
	viewplayer = player
	viewx = player.mo.x
	viewy = player.mo.y
	viewangle = player.mo.angle + viewangleoffset
	extralight = player.extralight
	viewz = player.viewz
	viewsin = finesine[viewangle >> 19]
	viewcos = finecosine[viewangle >> 19]
	sscount = 0
	if player.fixedcolormap {
		fixedcolormap = colormaps + player.fixedcolormap * 256
		walllights = scalelightfixed
		for i = 0; i < 48; i++ {
			scalelightfixed[i] = fixedcolormap
		}
	} else { // 3
		fixedcolormap = 0
	}
	framecount++
	validcount++
}

//
// R_RenderView
//
@[c: 'R_RenderPlayerView']
fn r_render_player_view(player &Player_t) {
	r_setup_frame(player)
	// Clear buffers.
	r_clear_clip_segs()
	r_clear_draw_segs()
	r_clear_planes()
	r_clear_sprites()
	// check for new console commands.
	net_update()
	// The head node is the last node output.
	r_render_bspn_ode(numnodes - 1)
	// Check for new console commands.
	net_update()
	r_draw_planes()
	// Check for new console commands.
	net_update()
	r_draw_masked()
	// Check for new console commands.
	net_update()
}
