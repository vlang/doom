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

@[c: 'Z_Free']
fn z_free(ptr voidptr)

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
// skipping global dup "states"
// skipping global dup "sprnames"
// skipping global dup "mobjinfo"
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
@[c: 'P_InitThinkers']
fn p_init_thinkers()

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
@[c: 'P_RemoveMobj']
fn p_remove_mobj(th &Mobj_t)

@[c: 'P_MobjThinker']
fn p_mobj_thinker(mobj &Mobj_t)

//
// P_ENEMY
//
//
// P_MAPUTL
//
// Extended MAXINTERCEPTS, to allow for intercepts overrun emulation.
// skipping global dup "intercepts"
// skipping global dup "intercept_p"
// skipping global dup "opentop"
// skipping global dup "openbottom"
// skipping global dup "openrange"
// skipping global dup "lowfloor"
// skipping global dup "trace"
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
@[c: 'T_LightFlash']
fn t_light_flash(flash &Lightflash_t)

@[c: 'T_StrobeFlash']
fn t_strobe_flash(flash &Strobe_t)

@[c: 'T_Glow']
fn t_glow(g &Glow_t)

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
@[c: 'T_PlatRaise']
fn t_plat_raise(plat &Plat_t)

@[c: 'P_AddActivePlat']
fn p_add_active_plat(plat &Plat_t)

//
// P_DOORS
//
@[c: 'T_VerticalDoor']
fn t_vertical_door(door &Vldoor_t)

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
@[c: 'T_MoveCeiling']
fn t_move_ceiling(ceiling &Ceiling_t)

@[c: 'P_AddActiveCeiling']
fn p_add_active_ceiling(c &Ceiling_t)

//
// P_FLOOR
//
@[c: 'T_MoveFloor']
fn t_move_floor(floor &Floormove_t)

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
// Read current data from inputs and build a player movement command.
@[c: 'G_VanillaVersionCode']
fn g_vanilla_version_code() int

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
//      Miscellaneous.
//
@[c: 'M_StringJoin']
@[c2v_variadic]
fn m_string_join(s ...&i8) &i8

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
//	Archiving: SaveGame I/O.
//
// State.
// Get the filename of a temporary file to write the savegame to.  After
// the file has been successfully saved, it will be renamed to the
// real file.
@[c: 'P_TempSaveGameFile']
fn p_temp_save_game_file() &i8 {
	filename := (unsafe { nil })
	if filename == (unsafe { nil }) {
		filename = m_string_join(savegamedir, c'temp.dsg', (unsafe { nil }))
	}
	return filename
}

// Get the filename of the save game file to use for the specified slot.
@[c: 'P_SaveGameFile']
fn p_save_game_file(slot int) &i8 {
	filename := (unsafe { nil })
	filename_size := 0
	basename := [32]i8{}
	if filename == (unsafe { nil }) {
		filename_size = C.strlen(savegamedir) + 32
		filename = C.malloc(filename_size)
	}
	deh_snprintf(basename, 32, c'doomsav%d.dsg', slot)
	m_snprintf(filename, filename_size, c'%s%s', savegamedir, basename)
	return filename
}

// Endian-safe integer read/write functions
fn saveg_read8() u8 {
	result := -1
	if C.fread(&result, 1, 1, save_stream) < 1 {
		if !savegame_error {
			C.fprintf(C.stderr, c'saveg_read8: Unexpected end of file while reading save game\n')
			savegame_error = true
		}
	}
	return result
}

fn saveg_write8(value u8) {
	if C.fwrite(&value, 1, 1, save_stream) < 1 {
		if !savegame_error {
			C.fprintf(C.stderr, c'saveg_write8: Error while writing save game\n')
			savegame_error = true
		}
	}
}

fn saveg_read16() i16 {
	result := 0
	result = saveg_read8()
	result |= saveg_read8() << 8
	return result
}

fn saveg_write16(value i16) {
	saveg_write8(value & 255)
	saveg_write8((value >> 8) & 255)
}

fn saveg_read32() int {
	result := 0
	result = saveg_read8()
	result |= saveg_read8() << 8
	result |= saveg_read8() << 16
	result |= saveg_read8() << 24
	return result
}

fn saveg_write32(value int) {
	saveg_write8(value & 255)
	saveg_write8((value >> 8) & 255)
	saveg_write8((value >> 16) & 255)
	saveg_write8((value >> 24) & 255)
}

// Pad to 4-byte boundaries
fn saveg_read_pad() {
	pos := u32(0)
	padding := 0
	i := 0
	pos = C.ftell(save_stream)
	padding = (4 - (pos & 3)) & 3
	for i = 0; i < padding; i++ {
		saveg_read8()
	}
}

fn saveg_write_pad() {
	pos := u32(0)
	padding := 0
	i := 0
	pos = C.ftell(save_stream)
	padding = (4 - (pos & 3)) & 3
	for i = 0; i < padding; i++ {
		saveg_write8(0)
	}
}

// Pointers
fn saveg_readp() voidptr {
	return voidptr(C.intptr_t(saveg_read32()))
}

fn saveg_writep(p voidptr) {
	saveg_write32(int((C.intptr_t(p))))
}

// Enum values are 32-bit integers.
//
// Structure read/write functions
//
//
// mapthing_t
//
fn saveg_read_mapthing_t(str &Mapthing_t) {
	// short x;
	str.x = saveg_read16()
	// short y;
	str.y = saveg_read16()
	// short angle;
	str.angle = saveg_read16()
	// short type;
	str.type_ = saveg_read16()
	// short options;
	str.options = saveg_read16()
}

fn saveg_write_mapthing_t(str &Mapthing_t) {
	// short x;
	saveg_write16(str.x)
	// short y;
	saveg_write16(str.y)
	// short angle;
	saveg_write16(str.angle)
	// short type;
	saveg_write16(str.type_)
	// short options;
	saveg_write16(str.options)
}

//
// actionf_t
//
fn saveg_read_actionf_t(str &Actionf_t) {
	// actionf_p1 acp1;
	str.acp1 = saveg_readp()
}

fn saveg_write_actionf_t(str &Actionf_t) {
	// actionf_p1 acp1;
	saveg_writep(str.acp1)
}

//
// think_t
//
// This is just an actionf_t.
//
//
// thinker_t
//
fn saveg_read_thinker_t(str &Thinker_t) {
	// struct thinker_s* prev;
	str.prev = saveg_readp()
	// struct thinker_s* next;
	str.next = saveg_readp()
	// think_t function;
	saveg_read_actionf_t(&str.function)
}

fn saveg_write_thinker_t(str &Thinker_t) {
	// struct thinker_s* prev;
	saveg_writep(str.prev)
	// struct thinker_s* next;
	saveg_writep(str.next)
	// think_t function;
	saveg_write_actionf_t(&str.function)
}

//
// mobj_t
//
fn saveg_read_mobj_t(str &Mobj_t) {
	pl := 0
	// thinker_t thinker;
	saveg_read_thinker_t(&str.thinker)
	// fixed_t x;
	str.x = saveg_read32()
	// fixed_t y;
	str.y = saveg_read32()
	// fixed_t z;
	str.z = saveg_read32()
	// struct mobj_s* snext;
	str.snext = saveg_readp()
	// struct mobj_s* sprev;
	str.sprev = saveg_readp()
	// angle_t angle;
	str.angle = saveg_read32()
	// spritenum_t sprite;
	str.sprite = saveg_read32()
	// int frame;
	str.frame = saveg_read32()
	// struct mobj_s* bnext;
	str.bnext = saveg_readp()
	// struct mobj_s* bprev;
	str.bprev = saveg_readp()
	// struct subsector_s* subsector;
	str.subsector = saveg_readp()
	// fixed_t floorz;
	str.floorz = saveg_read32()
	// fixed_t ceilingz;
	str.ceilingz = saveg_read32()
	// fixed_t radius;
	str.radius = saveg_read32()
	// fixed_t height;
	str.height = saveg_read32()
	// fixed_t momx;
	str.momx = saveg_read32()
	// fixed_t momy;
	str.momy = saveg_read32()
	// fixed_t momz;
	str.momz = saveg_read32()
	// int validcount;
	str.validcount = saveg_read32()
	// mobjtype_t type;
	str.type_ = saveg_read32()
	// mobjinfo_t* info;
	str.info = saveg_readp()
	// int tics;
	str.tics = saveg_read32()
	// state_t* state;
	str.state = &states[saveg_read32()]
	// int flags;
	str.flags = saveg_read32()
	// int health;
	str.health = saveg_read32()
	// int movedir;
	str.movedir = saveg_read32()
	// int movecount;
	str.movecount = saveg_read32()
	// struct mobj_s* target;
	str.target = saveg_readp()
	// int reactiontime;
	str.reactiontime = saveg_read32()
	// int threshold;
	str.threshold = saveg_read32()
	// struct player_s* player;
	pl = saveg_read32()
	if pl > 0 {
		str.player = &players[pl - 1]
		str.player.mo = str
	} else {
		str.player = (unsafe { nil })
	}
	// int lastlook;
	str.lastlook = saveg_read32()
	// mapthing_t spawnpoint;
	saveg_read_mapthing_t(&str.spawnpoint)
	// struct mobj_s* tracer;
	str.tracer = saveg_readp()
}

fn saveg_write_mobj_t(str &Mobj_t) {
	// thinker_t thinker;
	saveg_write_thinker_t(&str.thinker)
	// fixed_t x;
	saveg_write32(str.x)
	// fixed_t y;
	saveg_write32(str.y)
	// fixed_t z;
	saveg_write32(str.z)
	// struct mobj_s* snext;
	saveg_writep(str.snext)
	// struct mobj_s* sprev;
	saveg_writep(str.sprev)
	// angle_t angle;
	saveg_write32(str.angle)
	// spritenum_t sprite;
	saveg_write32(str.sprite)
	// int frame;
	saveg_write32(str.frame)
	// struct mobj_s* bnext;
	saveg_writep(str.bnext)
	// struct mobj_s* bprev;
	saveg_writep(str.bprev)
	// struct subsector_s* subsector;
	saveg_writep(str.subsector)
	// fixed_t floorz;
	saveg_write32(str.floorz)
	// fixed_t ceilingz;
	saveg_write32(str.ceilingz)
	// fixed_t radius;
	saveg_write32(str.radius)
	// fixed_t height;
	saveg_write32(str.height)
	// fixed_t momx;
	saveg_write32(str.momx)
	// fixed_t momy;
	saveg_write32(str.momy)
	// fixed_t momz;
	saveg_write32(str.momz)
	// int validcount;
	saveg_write32(str.validcount)
	// mobjtype_t type;
	saveg_write32(str.type_)
	// mobjinfo_t* info;
	saveg_writep(str.info)
	// int tics;
	saveg_write32(str.tics)
	// state_t* state;
	saveg_write32(str.state - states)
	// int flags;
	saveg_write32(str.flags)
	// int health;
	saveg_write32(str.health)
	// int movedir;
	saveg_write32(str.movedir)
	// int movecount;
	saveg_write32(str.movecount)
	// struct mobj_s* target;
	saveg_writep(str.target)
	// int reactiontime;
	saveg_write32(str.reactiontime)
	// int threshold;
	saveg_write32(str.threshold)
	// struct player_s* player;
	if str.player {
		saveg_write32(str.player - players + 1)
	} else {
		saveg_write32(0)
	}
	// int lastlook;
	saveg_write32(str.lastlook)
	// mapthing_t spawnpoint;
	saveg_write_mapthing_t(&str.spawnpoint)
	// struct mobj_s* tracer;
	saveg_writep(str.tracer)
}

//
// ticcmd_t
//
fn saveg_read_ticcmd_t(str &Ticcmd_t) {
	// signed char forwardmove;
	str.forwardmove = saveg_read8()
	// signed char sidemove;
	str.sidemove = saveg_read8()
	// short angleturn;
	str.angleturn = saveg_read16()
	// short consistancy;
	str.consistancy = saveg_read16()
	// byte chatchar;
	str.chatchar = saveg_read8()
	// byte buttons;
	str.buttons = saveg_read8()
}

fn saveg_write_ticcmd_t(str &Ticcmd_t) {
	// signed char forwardmove;
	saveg_write8(str.forwardmove)
	// signed char sidemove;
	saveg_write8(str.sidemove)
	// short angleturn;
	saveg_write16(str.angleturn)
	// short consistancy;
	saveg_write16(str.consistancy)
	// byte chatchar;
	saveg_write8(str.chatchar)
	// byte buttons;
	saveg_write8(str.buttons)
}

//
// pspdef_t
//
fn saveg_read_pspdef_t(str &Pspdef_t) {
	state := 0
	// state_t* state;
	state = saveg_read32()
	if state > 0 {
		str.state = &states[state]
	} else {
		str.state = (unsafe { nil })
	}
	// int tics;
	str.tics = saveg_read32()
	// fixed_t sx;
	str.sx = saveg_read32()
	// fixed_t sy;
	str.sy = saveg_read32()
}

fn saveg_write_pspdef_t(str &Pspdef_t) {
	// state_t* state;
	if str.state {
		saveg_write32(str.state - states)
	} else {
		saveg_write32(0)
	}
	// int tics;
	saveg_write32(str.tics)
	// fixed_t sx;
	saveg_write32(str.sx)
	// fixed_t sy;
	saveg_write32(str.sy)
}

//
// player_t
//
fn saveg_read_player_t(str &Player_t) {
	i := 0
	// mobj_t* mo;
	str.mo = saveg_readp()
	// playerstate_t playerstate;
	str.playerstate = saveg_read32()
	// ticcmd_t cmd;
	saveg_read_ticcmd_t(&str.cmd)
	// fixed_t viewz;
	str.viewz = saveg_read32()
	// fixed_t viewheight;
	str.viewheight = saveg_read32()
	// fixed_t deltaviewheight;
	str.deltaviewheight = saveg_read32()
	// fixed_t bob;
	str.bob = saveg_read32()
	// int health;
	str.health = saveg_read32()
	// int armorpoints;
	str.armorpoints = saveg_read32()
	// int armortype;
	str.armortype = saveg_read32()
	// int powers[NUMPOWERS];
	for i = 0; i < Powertype_t.numpowers; i++ {
		str.powers[i] = saveg_read32()
	}
	// boolean cards[NUMCARDS];
	for i = 0; i < Card_t.numcards; i++ {
		str.cards[i] = saveg_read32()
	}
	// boolean backpack;
	str.backpack = saveg_read32()
	// int frags[MAXPLAYERS];
	for i = 0; i < 4; i++ {
		str.frags[i] = saveg_read32()
	}
	// weapontype_t readyweapon;
	str.readyweapon = saveg_read32()
	// weapontype_t pendingweapon;
	str.pendingweapon = saveg_read32()
	// boolean weaponowned[NUMWEAPONS];
	for i = 0; i < Weapontype_t.numweapons; i++ {
		str.weaponowned[i] = saveg_read32()
	}
	// int ammo[NUMAMMO];
	for i = 0; i < Ammotype_t.numammo; i++ {
		str.ammo[i] = saveg_read32()
	}
	// int maxammo[NUMAMMO];
	for i = 0; i < Ammotype_t.numammo; i++ {
		str.maxammo[i] = saveg_read32()
	}
	// int attackdown;
	str.attackdown = saveg_read32()
	// int usedown;
	str.usedown = saveg_read32()
	// int cheats;
	str.cheats = saveg_read32()
	// int refire;
	str.refire = saveg_read32()
	// int killcount;
	str.killcount = saveg_read32()
	// int itemcount;
	str.itemcount = saveg_read32()
	// int secretcount;
	str.secretcount = saveg_read32()
	// char* message;
	str.message = saveg_readp()
	// int damagecount;
	str.damagecount = saveg_read32()
	// int bonuscount;
	str.bonuscount = saveg_read32()
	// mobj_t* attacker;
	str.attacker = saveg_readp()
	// int extralight;
	str.extralight = saveg_read32()
	// int fixedcolormap;
	str.fixedcolormap = saveg_read32()
	// int colormap;
	str.colormap = saveg_read32()
	// pspdef_t psprites[NUMPSPRITES];
	for i = 0; i < Psprnum_t.numpsprites; i++ {
		saveg_read_pspdef_t(&str.psprites[i])
	}
	// boolean didsecret;
	str.didsecret = saveg_read32()
}

fn saveg_write_player_t(str &Player_t) {
	i := 0
	// mobj_t* mo;
	saveg_writep(str.mo)
	// playerstate_t playerstate;
	saveg_write32(str.playerstate)
	// ticcmd_t cmd;
	saveg_write_ticcmd_t(&str.cmd)
	// fixed_t viewz;
	saveg_write32(str.viewz)
	// fixed_t viewheight;
	saveg_write32(str.viewheight)
	// fixed_t deltaviewheight;
	saveg_write32(str.deltaviewheight)
	// fixed_t bob;
	saveg_write32(str.bob)
	// int health;
	saveg_write32(str.health)
	// int armorpoints;
	saveg_write32(str.armorpoints)
	// int armortype;
	saveg_write32(str.armortype)
	// int powers[NUMPOWERS];
	for i = 0; i < Powertype_t.numpowers; i++ {
		saveg_write32(str.powers[i])
	}
	// boolean cards[NUMCARDS];
	for i = 0; i < Card_t.numcards; i++ {
		saveg_write32(str.cards[i])
	}
	// boolean backpack;
	saveg_write32(str.backpack)
	// int frags[MAXPLAYERS];
	for i = 0; i < 4; i++ {
		saveg_write32(str.frags[i])
	}
	// weapontype_t readyweapon;
	saveg_write32(str.readyweapon)
	// weapontype_t pendingweapon;
	saveg_write32(str.pendingweapon)
	// boolean weaponowned[NUMWEAPONS];
	for i = 0; i < Weapontype_t.numweapons; i++ {
		saveg_write32(str.weaponowned[i])
	}
	// int ammo[NUMAMMO];
	for i = 0; i < Ammotype_t.numammo; i++ {
		saveg_write32(str.ammo[i])
	}
	// int maxammo[NUMAMMO];
	for i = 0; i < Ammotype_t.numammo; i++ {
		saveg_write32(str.maxammo[i])
	}
	// int attackdown;
	saveg_write32(str.attackdown)
	// int usedown;
	saveg_write32(str.usedown)
	// int cheats;
	saveg_write32(str.cheats)
	// int refire;
	saveg_write32(str.refire)
	// int killcount;
	saveg_write32(str.killcount)
	// int itemcount;
	saveg_write32(str.itemcount)
	// int secretcount;
	saveg_write32(str.secretcount)
	// char* message;
	saveg_writep(str.message)
	// int damagecount;
	saveg_write32(str.damagecount)
	// int bonuscount;
	saveg_write32(str.bonuscount)
	// mobj_t* attacker;
	saveg_writep(str.attacker)
	// int extralight;
	saveg_write32(str.extralight)
	// int fixedcolormap;
	saveg_write32(str.fixedcolormap)
	// int colormap;
	saveg_write32(str.colormap)
	// pspdef_t psprites[NUMPSPRITES];
	for i = 0; i < Psprnum_t.numpsprites; i++ {
		saveg_write_pspdef_t(&str.psprites[i])
	}
	// boolean didsecret;
	saveg_write32(str.didsecret)
}

//
// ceiling_t
//
fn saveg_read_ceiling_t(str &Ceiling_t) {
	sector := 0
	// thinker_t thinker;
	saveg_read_thinker_t(&str.thinker)
	// ceiling_e type;
	str.type_ = saveg_read32()
	// sector_t* sector;
	sector = saveg_read32()
	str.sector = &sectors[sector]
	// fixed_t bottomheight;
	str.bottomheight = saveg_read32()
	// fixed_t topheight;
	str.topheight = saveg_read32()
	// fixed_t speed;
	str.speed = saveg_read32()
	// boolean crush;
	str.crush = saveg_read32()
	// int direction;
	str.direction = saveg_read32()
	// int tag;
	str.tag = saveg_read32()
	// int olddirection;
	str.olddirection = saveg_read32()
}

fn saveg_write_ceiling_t(str &Ceiling_t) {
	// thinker_t thinker;
	saveg_write_thinker_t(&str.thinker)
	// ceiling_e type;
	saveg_write32(str.type_)
	// sector_t* sector;
	saveg_write32(str.sector - sectors)
	// fixed_t bottomheight;
	saveg_write32(str.bottomheight)
	// fixed_t topheight;
	saveg_write32(str.topheight)
	// fixed_t speed;
	saveg_write32(str.speed)
	// boolean crush;
	saveg_write32(str.crush)
	// int direction;
	saveg_write32(str.direction)
	// int tag;
	saveg_write32(str.tag)
	// int olddirection;
	saveg_write32(str.olddirection)
}

//
// vldoor_t
//
fn saveg_read_vldoor_t(str &Vldoor_t) {
	sector := 0
	// thinker_t thinker;
	saveg_read_thinker_t(&str.thinker)
	// vldoor_e type;
	str.type_ = saveg_read32()
	// sector_t* sector;
	sector = saveg_read32()
	str.sector = &sectors[sector]
	// fixed_t topheight;
	str.topheight = saveg_read32()
	// fixed_t speed;
	str.speed = saveg_read32()
	// int direction;
	str.direction = saveg_read32()
	// int topwait;
	str.topwait = saveg_read32()
	// int topcountdown;
	str.topcountdown = saveg_read32()
}

fn saveg_write_vldoor_t(str &Vldoor_t) {
	// thinker_t thinker;
	saveg_write_thinker_t(&str.thinker)
	// vldoor_e type;
	saveg_write32(str.type_)
	// sector_t* sector;
	saveg_write32(str.sector - sectors)
	// fixed_t topheight;
	saveg_write32(str.topheight)
	// fixed_t speed;
	saveg_write32(str.speed)
	// int direction;
	saveg_write32(str.direction)
	// int topwait;
	saveg_write32(str.topwait)
	// int topcountdown;
	saveg_write32(str.topcountdown)
}

//
// floormove_t
//
fn saveg_read_floormove_t(str &Floormove_t) {
	sector := 0
	// thinker_t thinker;
	saveg_read_thinker_t(&str.thinker)
	// floor_e type;
	str.type_ = saveg_read32()
	// boolean crush;
	str.crush = saveg_read32()
	// sector_t* sector;
	sector = saveg_read32()
	str.sector = &sectors[sector]
	// int direction;
	str.direction = saveg_read32()
	// int newspecial;
	str.newspecial = saveg_read32()
	// short texture;
	str.texture = saveg_read16()
	// fixed_t floordestheight;
	str.floordestheight = saveg_read32()
	// fixed_t speed;
	str.speed = saveg_read32()
}

fn saveg_write_floormove_t(str &Floormove_t) {
	// thinker_t thinker;
	saveg_write_thinker_t(&str.thinker)
	// floor_e type;
	saveg_write32(str.type_)
	// boolean crush;
	saveg_write32(str.crush)
	// sector_t* sector;
	saveg_write32(str.sector - sectors)
	// int direction;
	saveg_write32(str.direction)
	// int newspecial;
	saveg_write32(str.newspecial)
	// short texture;
	saveg_write16(str.texture)
	// fixed_t floordestheight;
	saveg_write32(str.floordestheight)
	// fixed_t speed;
	saveg_write32(str.speed)
}

//
// plat_t
//
fn saveg_read_plat_t(str &Plat_t) {
	sector := 0
	// thinker_t thinker;
	saveg_read_thinker_t(&str.thinker)
	// sector_t* sector;
	sector = saveg_read32()
	str.sector = &sectors[sector]
	// fixed_t speed;
	str.speed = saveg_read32()
	// fixed_t low;
	str.low = saveg_read32()
	// fixed_t high;
	str.high = saveg_read32()
	// int wait;
	str.wait = saveg_read32()
	// int count;
	str.count = saveg_read32()
	// plat_e status;
	str.status = saveg_read32()
	// plat_e oldstatus;
	str.oldstatus = saveg_read32()
	// boolean crush;
	str.crush = saveg_read32()
	// int tag;
	str.tag = saveg_read32()
	// plattype_e type;
	str.type_ = saveg_read32()
}

fn saveg_write_plat_t(str &Plat_t) {
	// thinker_t thinker;
	saveg_write_thinker_t(&str.thinker)
	// sector_t* sector;
	saveg_write32(str.sector - sectors)
	// fixed_t speed;
	saveg_write32(str.speed)
	// fixed_t low;
	saveg_write32(str.low)
	// fixed_t high;
	saveg_write32(str.high)
	// int wait;
	saveg_write32(str.wait)
	// int count;
	saveg_write32(str.count)
	// plat_e status;
	saveg_write32(str.status)
	// plat_e oldstatus;
	saveg_write32(str.oldstatus)
	// boolean crush;
	saveg_write32(str.crush)
	// int tag;
	saveg_write32(str.tag)
	// plattype_e type;
	saveg_write32(str.type_)
}

//
// lightflash_t
//
fn saveg_read_lightflash_t(str &Lightflash_t) {
	sector := 0
	// thinker_t thinker;
	saveg_read_thinker_t(&str.thinker)
	// sector_t* sector;
	sector = saveg_read32()
	str.sector = &sectors[sector]
	// int count;
	str.count = saveg_read32()
	// int maxlight;
	str.maxlight = saveg_read32()
	// int minlight;
	str.minlight = saveg_read32()
	// int maxtime;
	str.maxtime = saveg_read32()
	// int mintime;
	str.mintime = saveg_read32()
}

fn saveg_write_lightflash_t(str &Lightflash_t) {
	// thinker_t thinker;
	saveg_write_thinker_t(&str.thinker)
	// sector_t* sector;
	saveg_write32(str.sector - sectors)
	// int count;
	saveg_write32(str.count)
	// int maxlight;
	saveg_write32(str.maxlight)
	// int minlight;
	saveg_write32(str.minlight)
	// int maxtime;
	saveg_write32(str.maxtime)
	// int mintime;
	saveg_write32(str.mintime)
}

//
// strobe_t
//
fn saveg_read_strobe_t(str &Strobe_t) {
	sector := 0
	// thinker_t thinker;
	saveg_read_thinker_t(&str.thinker)
	// sector_t* sector;
	sector = saveg_read32()
	str.sector = &sectors[sector]
	// int count;
	str.count = saveg_read32()
	// int minlight;
	str.minlight = saveg_read32()
	// int maxlight;
	str.maxlight = saveg_read32()
	// int darktime;
	str.darktime = saveg_read32()
	// int brighttime;
	str.brighttime = saveg_read32()
}

fn saveg_write_strobe_t(str &Strobe_t) {
	// thinker_t thinker;
	saveg_write_thinker_t(&str.thinker)
	// sector_t* sector;
	saveg_write32(str.sector - sectors)
	// int count;
	saveg_write32(str.count)
	// int minlight;
	saveg_write32(str.minlight)
	// int maxlight;
	saveg_write32(str.maxlight)
	// int darktime;
	saveg_write32(str.darktime)
	// int brighttime;
	saveg_write32(str.brighttime)
}

//
// glow_t
//
fn saveg_read_glow_t(str &Glow_t) {
	sector := 0
	// thinker_t thinker;
	saveg_read_thinker_t(&str.thinker)
	// sector_t* sector;
	sector = saveg_read32()
	str.sector = &sectors[sector]
	// int minlight;
	str.minlight = saveg_read32()
	// int maxlight;
	str.maxlight = saveg_read32()
	// int direction;
	str.direction = saveg_read32()
}

fn saveg_write_glow_t(str &Glow_t) {
	// thinker_t thinker;
	saveg_write_thinker_t(&str.thinker)
	// sector_t* sector;
	saveg_write32(str.sector - sectors)
	// int minlight;
	saveg_write32(str.minlight)
	// int maxlight;
	saveg_write32(str.maxlight)
	// int direction;
	saveg_write32(str.direction)
}

//
// Write the header for a savegame
//
@[c: 'P_WriteSaveGameHeader']
fn p_write_save_game_header(description &i8) {
	name := [16]i8{}
	i := 0
	for i = 0; description[i] != `\0`; i++ {
		saveg_write8(description[i])
	}
	for ; i < 24; i++ {
		saveg_write8(0)
	}
	C.memset(name, 0, sizeof(name))
	m_snprintf(name, sizeof(name), c'version %i', g_vanilla_version_code())
	for i = 0; i < 16; i++ {
		saveg_write8(name[i])
	}
	saveg_write8(gameskill)
	saveg_write8(gameepisode)
	saveg_write8(gamemap)
	for i = 0; i < 4; i++ {
		saveg_write8(playeringame[i])
	}
	saveg_write8((leveltime >> 16) & 255)
	saveg_write8((leveltime >> 8) & 255)
	saveg_write8(leveltime & 255)
}

//
// Read the header for a savegame
//
@[c: 'P_ReadSaveGameHeader']
fn p_read_save_game_header() bool {
	i := 0
	a := u8(0)
	b := u8(0)
	c := u8(0)

	vcheck := [16]i8{}
	read_vcheck := [16]i8{}
	// skip the description field
	for i = 0; i < 24; i++ {
		saveg_read8()
	}
	for i = 0; i < 16; i++ {
		read_vcheck[i] = saveg_read8()
	}
	C.memset(vcheck, 0, sizeof(vcheck))
	m_snprintf(vcheck, sizeof(vcheck), c'version %i', g_vanilla_version_code())
	if C.strcmp(read_vcheck, vcheck) != 0 {
		return false
	}
	// bad version
	gameskill = saveg_read8()
	gameepisode = saveg_read8()
	gamemap = saveg_read8()
	for i = 0; i < 4; i++ {
		playeringame[i] = saveg_read8()
	}
	// get the times
	a = saveg_read8()
	b = saveg_read8()
	c = saveg_read8()
	leveltime = (a << 16) + (b << 8) + c
	return true
}

//
// Read the end of file marker.  Returns true if read successfully.
//
@[c: 'P_ReadSaveGameEOF']
fn p_read_save_game_eof() bool {
	value := 0
	value = saveg_read8()
	return value == 29
}

//
// Write the end of file marker
//
@[c: 'P_WriteSaveGameEOF']
fn p_write_save_game_eof() {
	saveg_write8(29)
}

//
// P_ArchivePlayers
//
@[c: 'P_ArchivePlayers']
fn p_archive_players() {
	i := 0
	for i = 0; i < 4; i++ {
		if !playeringame[i] {
			continue
		}
		saveg_write_pad()
		saveg_write_player_t(&players[i])
	}
}

//
// P_UnArchivePlayers
//
@[c: 'P_UnArchivePlayers']
fn p_un_archive_players() {
	i := 0
	for i = 0; i < 4; i++ {
		if !playeringame[i] {
			continue
		}
		saveg_read_pad()
		saveg_read_player_t(&players[i])
		// will be set when unarc thinker
		players[i].mo = (unsafe { nil })
		players[i].message = (unsafe { nil })
		players[i].attacker = (unsafe { nil })
	}
}

//
// P_ArchiveWorld
//
@[c: 'P_ArchiveWorld']
fn p_archive_world() {
	i := 0
	j := 0
	sec := &Sector_t(0)
	li := &Line_t(0)
	si := &Side_t(0)
	// do sectors
	for sec = sectors; i < numsectors; i++ {
		saveg_write16(sec.floorheight >> 16)
		saveg_write16(sec.ceilingheight >> 16)
		saveg_write16(sec.floorpic)
		saveg_write16(sec.ceilingpic)
		saveg_write16(sec.lightlevel)
		saveg_write16(sec.special)
		// needed?
		saveg_write16(sec.tag)
		// needed?
		sec++
	}
	// do lines
	i = 0
	for li = lines; i < numlines; i++ {
		saveg_write16(li.flags)
		saveg_write16(li.special)
		saveg_write16(li.tag)
		for j = 0; j < 2; j++ {
			if li.sidenum[j] == -1 {
				continue
			}
			si = &sides[li.sidenum[j]]
			saveg_write16(si.textureoffset >> 16)
			saveg_write16(si.rowoffset >> 16)
			saveg_write16(si.toptexture)
			saveg_write16(si.bottomtexture)
			saveg_write16(si.midtexture)
		}
		li++
	}
}

//
// P_UnArchiveWorld
//
@[c: 'P_UnArchiveWorld']
fn p_un_archive_world() {
	i := 0
	j := 0
	sec := &Sector_t(0)
	li := &Line_t(0)
	si := &Side_t(0)
	// do sectors
	for sec = sectors; i < numsectors; i++ {
		sec.floorheight = saveg_read16() << 16
		sec.ceilingheight = saveg_read16() << 16
		sec.floorpic = saveg_read16()
		sec.ceilingpic = saveg_read16()
		sec.lightlevel = saveg_read16()
		sec.special = saveg_read16()
		// needed?
		sec.tag = saveg_read16()
		// needed?
		sec.specialdata = 0
		sec.soundtarget = 0
		sec++
	}
	// do lines
	i = 0
	for li = lines; i < numlines; i++ {
		li.flags = saveg_read16()
		li.special = saveg_read16()
		li.tag = saveg_read16()
		for j = 0; j < 2; j++ {
			if li.sidenum[j] == -1 {
				continue
			}
			si = &sides[li.sidenum[j]]
			si.textureoffset = saveg_read16() << 16
			si.rowoffset = saveg_read16() << 16
			si.toptexture = saveg_read16()
			si.bottomtexture = saveg_read16()
			si.midtexture = saveg_read16()
		}
		li++
	}
}

//
// Thinkers
//
enum Thinkerclass_t {
	tc_end
	tc_mobj
}

//
// P_ArchiveThinkers
//
@[c: 'P_ArchiveThinkers']
fn p_archive_thinkers() {
	th := &Thinker_t(0)
	// save off the current thinkers
	for th = thinkercap.next; th != &thinkercap; th = th.next {
		if th.function.acp1 == Actionf_p1(p_mobj_thinker) {
			saveg_write8(Thinkerclass_t.tc_mobj)
			saveg_write_pad()
			saveg_write_mobj_t(&Mobj_t(th))
			continue
		}
		// I_Error ("P_ArchiveThinkers: Unknown thinker function");
	}
	// add a terminating marker
	saveg_write8(Thinkerclass_t.tc_end)
}

//
// P_UnArchiveThinkers
//
@[c: 'P_UnArchiveThinkers']
fn p_un_archive_thinkers() {
	tclass := u8(0)
	currentthinker := &Thinker_t(0)
	next := &Thinker_t(0)
	mobj := &Mobj_t(0)
	// remove all the current thinkers
	currentthinker = thinkercap.next
	for currentthinker != &thinkercap {
		next = currentthinker.next
		if currentthinker.function.acp1 == Actionf_p1(p_mobj_thinker) {
			p_remove_mobj(&Mobj_t(currentthinker))
		} else { // 3
			z_free(currentthinker)
		}
		currentthinker = next
	}
	p_init_thinkers()
	// read in saved thinkers
	for 1 {
		tclass = saveg_read8()
		match Thinkerclass_t(tclass) {
			.tc_end { // case comp body kind=ReturnStmt is_enum=true
				return
			}
			.tc_mobj { // case comp body kind=CallExpr is_enum=true
				saveg_read_pad()
				mobj = z_malloc(sizeof(*mobj), 5, (unsafe { nil }))
				saveg_read_mobj_t(mobj)
				mobj.target = (unsafe { nil })
				mobj.tracer = (unsafe { nil })
				p_set_thing_position(mobj)
				mobj.info = &mobjinfo[mobj.type_]
				mobj.floorz = mobj.subsector.sector.floorheight
				mobj.ceilingz = mobj.subsector.sector.ceilingheight
				mobj.thinker.function.acp1 = Actionf_p1(p_mobj_thinker)
				p_add_thinker(&mobj.thinker)
			}
			else {
				i_error(c'Unknown tclass %i in savegame', tclass)
			}
		}
	}
}

//
// P_ArchiveSpecials
//
enum Specials {
	tc_ceiling
	tc_door
	tc_floor
	tc_plat
	tc_flash
	tc_strobe
	tc_glow
	tc_endspecials
}

//
// Things to handle:
//
// T_MoveCeiling, (ceiling_t: sector_t * swizzle), - active list
// T_VerticalDoor, (vldoor_t: sector_t * swizzle),
// T_MoveFloor, (floormove_t: sector_t * swizzle),
// T_LightFlash, (lightflash_t: sector_t * swizzle),
// T_StrobeFlash, (strobe_t: sector_t *),
// T_Glow, (glow_t: sector_t *),
// T_PlatRaise, (plat_t: sector_t *), - active list
//
@[c: 'P_ArchiveSpecials']
fn p_archive_specials() {
	th := &Thinker_t(0)
	i := 0
	// save off the current thinkers
	for th = thinkercap.next; th != &thinkercap; th = th.next {
		if th.function.acv == Actionf_v((unsafe { nil })) {
			for i = 0; i < 30; i++ {
				if activeceilings[i] == &Ceiling_t(th) {
					break
				}
			}
			if i < 30 {
				saveg_write8(Specials.tc_ceiling)
				saveg_write_pad()
				saveg_write_ceiling_t(&Ceiling_t(th))
			}
			continue
		}
		if th.function.acp1 == Actionf_p1(t_move_ceiling) {
			saveg_write8(Specials.tc_ceiling)
			saveg_write_pad()
			saveg_write_ceiling_t(&Ceiling_t(th))
			continue
		}
		if th.function.acp1 == Actionf_p1(t_vertical_door) {
			saveg_write8(Specials.tc_door)
			saveg_write_pad()
			saveg_write_vldoor_t(&Vldoor_t(th))
			continue
		}
		if th.function.acp1 == Actionf_p1(t_move_floor) {
			saveg_write8(Specials.tc_floor)
			saveg_write_pad()
			saveg_write_floormove_t(&Floormove_t(th))
			continue
		}
		if th.function.acp1 == Actionf_p1(t_plat_raise) {
			saveg_write8(Specials.tc_plat)
			saveg_write_pad()
			saveg_write_plat_t(&Plat_t(th))
			continue
		}
		if th.function.acp1 == Actionf_p1(t_light_flash) {
			saveg_write8(Specials.tc_flash)
			saveg_write_pad()
			saveg_write_lightflash_t(&Lightflash_t(th))
			continue
		}
		if th.function.acp1 == Actionf_p1(t_strobe_flash) {
			saveg_write8(Specials.tc_strobe)
			saveg_write_pad()
			saveg_write_strobe_t(&Strobe_t(th))
			continue
		}
		if th.function.acp1 == Actionf_p1(t_glow) {
			saveg_write8(Specials.tc_glow)
			saveg_write_pad()
			saveg_write_glow_t(&Glow_t(th))
			continue
		}
	}
	// add a terminating marker
	saveg_write8(Specials.tc_endspecials)
}

//
// P_UnArchiveSpecials
//
@[c: 'P_UnArchiveSpecials']
fn p_un_archive_specials() {
	tclass := u8(0)
	ceiling := &Ceiling_t(0)
	door := &Vldoor_t(0)
	floor := &Floormove_t(0)
	plat := &Plat_t(0)
	flash := &Lightflash_t(0)
	strobe := &Strobe_t(0)
	glow := &Glow_t(0)
	// read in saved thinkers
	for 1 {
		tclass = saveg_read8()
		match Specials(tclass) {
			.tc_endspecials { // case comp body kind=ReturnStmt is_enum=true
				return
			}
			.tc_ceiling { // case comp body kind=CallExpr is_enum=true
				saveg_read_pad()
				ceiling = z_malloc(sizeof(*ceiling), 5, (unsafe { nil }))
				saveg_read_ceiling_t(ceiling)
				ceiling.sector.specialdata = ceiling
				if ceiling.thinker.function.acp1 {
					ceiling.thinker.function.acp1 = Actionf_p1(t_move_ceiling)
				}
				p_add_thinker(&ceiling.thinker)
				p_add_active_ceiling(ceiling)
			}
			.tc_door { // case comp body kind=CallExpr is_enum=true
				saveg_read_pad()
				door = z_malloc(sizeof(*door), 5, (unsafe { nil }))
				saveg_read_vldoor_t(door)
				door.sector.specialdata = door
				door.thinker.function.acp1 = Actionf_p1(t_vertical_door)
				p_add_thinker(&door.thinker)
			}
			.tc_floor { // case comp body kind=CallExpr is_enum=true
				saveg_read_pad()
				floor = z_malloc(sizeof(*floor), 5, (unsafe { nil }))
				saveg_read_floormove_t(floor)
				floor.sector.specialdata = floor
				floor.thinker.function.acp1 = Actionf_p1(t_move_floor)
				p_add_thinker(&floor.thinker)
			}
			.tc_plat { // case comp body kind=CallExpr is_enum=true
				saveg_read_pad()
				plat = z_malloc(sizeof(*plat), 5, (unsafe { nil }))
				saveg_read_plat_t(plat)
				plat.sector.specialdata = plat
				if plat.thinker.function.acp1 {
					plat.thinker.function.acp1 = Actionf_p1(t_plat_raise)
				}
				p_add_thinker(&plat.thinker)
				p_add_active_plat(plat)
			}
			.tc_flash { // case comp body kind=CallExpr is_enum=true
				saveg_read_pad()
				flash = z_malloc(sizeof(*flash), 5, (unsafe { nil }))
				saveg_read_lightflash_t(flash)
				flash.thinker.function.acp1 = Actionf_p1(t_light_flash)
				p_add_thinker(&flash.thinker)
			}
			.tc_strobe { // case comp body kind=CallExpr is_enum=true
				saveg_read_pad()
				strobe = z_malloc(sizeof(*strobe), 5, (unsafe { nil }))
				saveg_read_strobe_t(strobe)
				strobe.thinker.function.acp1 = Actionf_p1(t_strobe_flash)
				p_add_thinker(&strobe.thinker)
			}
			.tc_glow { // case comp body kind=CallExpr is_enum=true
				saveg_read_pad()
				glow = z_malloc(sizeof(*glow), 5, (unsafe { nil }))
				saveg_read_glow_t(glow)
				glow.thinker.function.acp1 = Actionf_p1(t_glow)
				p_add_thinker(&glow.thinker)
			}
			else {
				i_error(c'P_UnarchiveSpecials:Unknown tclass %i in savegame', tclass)
			}
		}
	}
}
