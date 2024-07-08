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
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
//	Cheat code checking.
//
//
// CHEAT SEQUENCE PACKAGE
//
// declaring a cheat
@[c: 'cht_CheckCheat']
fn cht_check_cheat(cht &Cheatseq_t, key i8) int

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
@[c: 'W_CacheLumpName']
fn w_cache_lump_name(name &i8, tag int) voidptr

@[c: 'W_ReleaseLumpName']
fn w_release_lump_name(name &i8)

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
@[c: 'V_DrawPatch']
fn v_draw_patch(x int, y int, patch &Patch_t)

// villsa [STRIFE]
// Draw a linear block of pixels into the view buffer.
@[c: 'V_MarkRect']
fn v_mark_rect(x int, y int, width int, height int)

// Draw a raw screen lump
// Temporarily switch to using a different buffer to draw graphics, etc.
// Return to using the normal screen buffer to draw graphics.
// Save a screenshot of the current screen to a file, named in the
// format described in the string passed to the function, eg.
// "DOOM%02i.pcx"
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
// skipped extern global automapactive
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
@[c: 'AM_Drawer']
fn am_drawer()

// Called to force the automap to quit
// if the level is completed while it is up.
@[c: 'AM_Stop']
fn am_stop()

// skipped extern global cheat_amap
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
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
// DESCRIPTION:  the automap code
//
// Needs access to LFB.
// State.
// Data.
// For use if I do walls with outsides/insides
// Automap colors
// drawing stuff
// scale on entry
// how much the automap moves window per tic in frame-buffer coordinates
// moves 140 pixels in 1 second
// how much zoom-in per tic
// goes to 2x in 1 second
// how much zoom-out per tic
// pulls out to 0.5x in 1 second
// translates between frame-buffer and map distances
// translates between frame-buffer and map coordinates
// the following is crap
struct Fpoint_t {
	x int
	y int
}

struct Fline_t {
	a Fpoint_t
	b Fpoint_t
}

struct Mpoint_t {
	x int
	y int
}

struct Mline_t {
	a Mpoint_t
	b Mpoint_t
}

struct Islope_t {
	slp  int
	islp int
}

//
// The vector graphics for the automap.
//  A line drawing of the player pointing right,
//   starting from the middle.
//
// kluge until AM_LevelInit() is called
// location of window on screen
// size of window on screen
// used for funky strobing effect
// pseudo-frame buffer
// how far the window pans each tic (map coords)
// how far the window zooms in each tic (map coords)
// how far the window zooms in each tic (fb coords)
// LL x,y where the window is on the map (map coords)
// UR x,y where the window is on the map (map coords)
//
// width/height of window on map (map coords)
//
// based on level size
// max_x-min_x,
// max_y-min_y
// based on player size
// used to tell when to stop zooming out
// used to tell when to stop zooming in
// old stuff for recovery later
// old location used by the Follower routine
// used by MTOF to scale from map-to-frame-buffer coords
// used by FTOM to scale from frame-buffer-to-map coords (=1/scale_mtof)
// the player represented by an arrow
// numbers used for marking by the automap
// where the points are
// next point to be assigned
// specifies whether to follow the player around
// Calculates the slope and slope according to the x-axis of a line
// segment in map coordinates (with the upright y-axis n' all) so
// that it can be used with the brain-dead drawing stuff.
@[c: 'AM_getIslope']
fn am_get_islope(ml &Mline_t, is_ &Islope_t) {
	dx := 0
	dy := 0

	dy = ml.a.y - ml.b.y
	dx = ml.b.x - ml.a.x
	if !dy {
		is_.islp = (if dx < 0 { -2147483647 } else { 2147483647 })
	} else { // 3
		is_.islp = fixed_div(dx, dy)
	}
	if !dx {
		is_.slp = (if dy < 0 { -2147483647 } else { 2147483647 })
	} else { // 3
		is_.slp = fixed_div(dy, dx)
	}
}

//
//
//
@[c: 'AM_activateNewScale']
fn am_activate_new_scale() {
	m_x += m_w / 2
	m_y += m_h / 2
	m_w = fixed_mul((f_w << 16), scale_ftom)
	m_h = fixed_mul((f_h << 16), scale_ftom)
	m_x -= m_w / 2
	m_y -= m_h / 2
	m_x2 = m_x + m_w
	m_y2 = m_y + m_h
}

//
//
//
@[c: 'AM_saveScaleAndLoc']
fn am_save_scale_and_loc() {
	old_m_x = m_x
	old_m_y = m_y
	old_m_w = m_w
	old_m_h = m_h
}

//
//
//
@[c: 'AM_restoreScaleAndLoc']
fn am_restore_scale_and_loc() {
	m_w = old_m_w
	m_h = old_m_h
	if !followplayer {
		m_x = old_m_x
		m_y = old_m_y
	} else {
		m_x = plr.mo.x - m_w / 2
		m_y = plr.mo.y - m_h / 2
	}
	m_x2 = m_x + m_w
	m_y2 = m_y + m_h
	// Change the scaling multipliers
	scale_mtof = fixed_div(f_w << 16, m_w)
	scale_ftom = fixed_div((1 << 16), scale_mtof)
}

//
// adds a marker at the current location
//
@[c: 'AM_addMark']
fn am_add_mark() {
	markpoints[markpointnum].x = m_x + m_w / 2
	markpoints[markpointnum].y = m_y + m_h / 2
	markpointnum = (markpointnum + 1) % 10
}

//
// Determines bounding box of all vertices,
// sets global variables controlling zoom range.
//
@[c: 'AM_findMinMaxBoundaries']
fn am_find_min_max_boundaries() {
	i := 0
	a := 0
	b := 0
	min_x = 2147483647
	min_y = min_x
	max_x = -2147483647
	max_y = max_x
	for i = 0; i < numvertexes; i++ {
		if vertexes[i].x < min_x {
			min_x = vertexes[i].x
		} else if vertexes[i].x > max_x {
			max_x = vertexes[i].x
		}
		if vertexes[i].y < min_y {
			min_y = vertexes[i].y
		} else if vertexes[i].y > max_y {
			max_y = vertexes[i].y
		}
	}
	max_w = max_x - min_x
	max_h = max_y - min_y
	min_w = 2 * 16 * (1 << 16)
	// const? never changed?
	min_h = 2 * 16 * (1 << 16)
	a = fixed_div(f_w << 16, max_w)
	b = fixed_div(f_h << 16, max_h)
	min_scale_mtof = if a < b { a } else { b }
	max_scale_mtof = fixed_div(f_h << 16, 2 * 16 * (1 << 16))
}

//
//
//
@[c: 'AM_changeWindowLoc']
fn am_change_window_loc() {
	if m_paninc.x || m_paninc.y {
		followplayer = 0
		f_oldloc.x = 2147483647
	}
	m_x += m_paninc.x
	m_y += m_paninc.y
	if m_x + m_w / 2 > max_x {
		m_x = max_x - m_w / 2
	} else if m_x + m_w / 2 < min_x {
		m_x = min_x - m_w / 2
	}
	if m_y + m_h / 2 > max_y {
		m_y = max_y - m_h / 2
	} else if m_y + m_h / 2 < min_y {
		m_y = min_y - m_h / 2
	}
	m_x2 = m_x + m_w
	m_y2 = m_y + m_h
}

//
//
//
@[c: 'AM_initVariables']
fn am_init_variables() {
	pnum := 0
	st_notify := Event_t{
		type_: Evtype_t.ev_keyup
		data1: (((`a` << 24) + (`m` << 16)) | (`e` << 8))
		data2: 0
		data3: 0
	}

	automapactive = true
	fb = I_VideoBuffer
	f_oldloc.x = 2147483647
	amclock = 0
	lightlev = 0
	m_paninc.x = 0
	m_paninc.y = m_paninc.x
	ftom_zoommul = (1 << 16)
	mtof_zoommul = (1 << 16)
	m_w = fixed_mul((f_w << 16), scale_ftom)
	m_h = fixed_mul((f_h << 16), scale_ftom)
	// find player to center on initially
	if playeringame[consoleplayer] {
		plr = &players[consoleplayer]
	} else {
		plr = &players[0]
		for pnum = 0; pnum < 4; pnum++ {
			if playeringame[pnum] {
				plr = &players[pnum]
				break
			}
		}
	}
	m_x = plr.mo.x - m_w / 2
	m_y = plr.mo.y - m_h / 2
	am_change_window_loc()
	// for saving & restoring
	old_m_x = m_x
	old_m_y = m_y
	old_m_w = m_w
	old_m_h = m_h
	// inform the status bar of the change
	st_responder(&st_notify)
}

//
//
//
@[c: 'AM_loadPics']
fn am_load_pics() {
	i := 0
	namebuf := [9]i8{}
	for i = 0; i < 10; i++ {
		deh_snprintf(namebuf, 9, c'AMMNUM%d', i)
		marknums[i] = w_cache_lump_name(namebuf, 1)
	}
}

@[c: 'AM_unloadPics']
fn am_unload_pics() {
	i := 0
	namebuf := [9]i8{}
	for i = 0; i < 10; i++ {
		deh_snprintf(namebuf, 9, c'AMMNUM%d', i)
		w_release_lump_name(namebuf)
	}
}

@[c: 'AM_clearMarks']
fn am_clear_marks() {
	i := 0
	for i = 0; i < 10; i++ {
		markpoints[i].x = -1
	}
	// means empty
	markpointnum = 0
}

//
// should be called at the start of every level
// right now, i figure it out myself
//
@[c: 'AM_LevelInit']
fn am_level_init() {
	leveljuststarted = 0
	f_x = 0
	f_y = f_x
	f_w = finit_width
	f_h = finit_height
	am_clear_marks()
	am_find_min_max_boundaries()
	scale_mtof = fixed_div(min_scale_mtof, int((0.69999999999999996 * (1 << 16))))
	if scale_mtof > max_scale_mtof {
		scale_mtof = min_scale_mtof
	}
	scale_ftom = fixed_div((1 << 16), scale_mtof)
}

//
//
//
@[c: 'AM_Stop']
fn am_stop() {
	st_notify := Event_t{
		type_: 0
		data1: Evtype_t.ev_keyup
		data2: (((`a` << 24) + (`m` << 16)) | (`x` << 8))
		data3: 0
	}

	am_unload_pics()
	automapactive = false
	st_responder(&st_notify)
	stopped = true
}

//
//
//
@[c: 'AM_Start']
fn am_start() {
	lastlevel := -1
	lastepisode := -1
	if !stopped {
		am_stop()
	}
	stopped = false
	if lastlevel != gamemap || lastepisode != gameepisode {
		am_level_init()
		lastlevel = gamemap
		lastepisode = gameepisode
	}
	am_init_variables()
	am_load_pics()
}

//
// set the window scale to the maximum size
//
@[c: 'AM_minOutWindowScale']
fn am_min_out_window_scale() {
	scale_mtof = min_scale_mtof
	scale_ftom = fixed_div((1 << 16), scale_mtof)
	am_activate_new_scale()
}

//
// set the window scale to the minimum size
//
@[c: 'AM_maxOutWindowScale']
fn am_max_out_window_scale() {
	scale_mtof = max_scale_mtof
	scale_ftom = fixed_div((1 << 16), scale_mtof)
	am_activate_new_scale()
}

//
// Handle events (user inputs) in automap mode
//
@[c: 'AM_Responder']
fn am_responder(ev &Event_t) bool {
	rc := 0
	bigstate := 0
	buffer := [20]i8{}
	key := 0
	rc = false
	if ev.type_ == Evtype_t.ev_joystick && joybautomap >= 0 && (ev.data1 & (1 << joybautomap)) != 0 {
		joywait = i_get_time() + 5
		if !automapactive {
			am_start()
			viewactive = false
		} else {
			bigstate = 0
			viewactive = true
			am_stop()
		}
		return true
	}
	if !automapactive {
		if ev.type_ == Evtype_t.ev_keydown && ev.data1 == key_map_toggle {
			am_start()
			viewactive = false
			rc = true
		}
	} else if ev.type_ == Evtype_t.ev_keydown {
		rc = true
		key = ev.data1
		if key == key_map_east // pan right
		  {
			if !followplayer {
				m_paninc.x = fixed_mul(((4) << 16), scale_ftom)
			} else { // 3
				rc = false
			}
		}
		else if key == key_map_west // pan left
		  {
			if !followplayer {
				m_paninc.x = -fixed_mul(((4) << 16), scale_ftom)
			} else { // 3
				rc = false
			}
		}
		else if key == key_map_north // pan up
		  {
			if !followplayer {
				m_paninc.y = fixed_mul(((4) << 16), scale_ftom)
			} else { // 3
				rc = false
			}
		}
		else if key == key_map_south // pan down
		  {
			if !followplayer {
				m_paninc.y = -fixed_mul(((4) << 16), scale_ftom)
			} else { // 3
				rc = false
			}
		}
		else if key == key_map_zoomout // zoom out
		  {
			mtof_zoommul = (int(((1 << 16) / 1.02)))
			ftom_zoommul = (int((1.02 * (1 << 16))))
		}
		else if key == key_map_zoomin // zoom in
		  {
			mtof_zoommul = (int((1.02 * (1 << 16))))
			ftom_zoommul = (int(((1 << 16) / 1.02)))
		} else if key == key_map_toggle {
			bigstate = 0
			viewactive = true
			am_stop()
		} else if key == key_map_maxzoom {
			bigstate = !bigstate
			if bigstate {
				am_save_scale_and_loc()
				am_min_out_window_scale()
			} else { // 3
				am_restore_scale_and_loc()
			}
		} else if key == key_map_follow {
			followplayer = !followplayer
			f_oldloc.x = 2147483647
			if followplayer {
				plr.message = deh_string(c'Follow Mode ON')
			} else { // 3
				plr.message = deh_string(c'Follow Mode OFF')
			}
		} else if key == key_map_grid {
			grid = !grid
			if grid {
				plr.message = deh_string(c'Grid ON')
			} else { // 3
				plr.message = deh_string(c'Grid OFF')
			}
		} else if key == key_map_mark {
			m_snprintf(buffer, sizeof(buffer), c'%s %d', deh_string(c'Marked Spot'), markpointnum)
			plr.message = buffer
			am_add_mark()
		} else if key == key_map_clearmark {
			am_clear_marks()
			plr.message = deh_string(c'All Marks Cleared')
		} else {
			rc = false
		}
		if (!deathmatch || gameversion <= GameVersion_t.exe_doom_1_8)
			&& cht_check_cheat(&cheat_amap, ev.data2) {
			rc = false
			cheating = (cheating + 1) % 3
		}
	} else if ev.type_ == Evtype_t.ev_keyup {
		rc = false
		key = ev.data1
		if key == key_map_east {
			if !followplayer {
				m_paninc.x = 0
			}
		} else if key == key_map_west {
			if !followplayer {
				m_paninc.x = 0
			}
		} else if key == key_map_north {
			if !followplayer {
				m_paninc.y = 0
			}
		} else if key == key_map_south {
			if !followplayer {
				m_paninc.y = 0
			}
		} else if key == key_map_zoomout || key == key_map_zoomin {
			mtof_zoommul = (1 << 16)
			ftom_zoommul = (1 << 16)
		}
	}
	return rc
}

//
// Zooming
//
@[c: 'AM_changeWindowScale']
fn am_change_window_scale() {
	// Change the scaling multipliers
	scale_mtof = fixed_mul(scale_mtof, mtof_zoommul)
	scale_ftom = fixed_div((1 << 16), scale_mtof)
	if scale_mtof < min_scale_mtof {
		am_min_out_window_scale()
	} else if scale_mtof > max_scale_mtof {
		am_max_out_window_scale()
	} else { // 3
		am_activate_new_scale()
	}
}

//
//
//
@[c: 'AM_doFollowPlayer']
fn am_do_follow_player() {
	if f_oldloc.x != plr.mo.x || f_oldloc.y != plr.mo.y {
		m_x = fixed_mul(((fixed_mul((plr.mo.x), scale_mtof) >> 16) << 16), scale_ftom) - m_w / 2
		m_y = fixed_mul(((fixed_mul((plr.mo.y), scale_mtof) >> 16) << 16), scale_ftom) - m_h / 2
		m_x2 = m_x + m_w
		m_y2 = m_y + m_h
		f_oldloc.x = plr.mo.x
		f_oldloc.y = plr.mo.y
		//  m_x = FTOM(MTOF(plr->mo->x - m_w/2));

		//  m_y = FTOM(MTOF(plr->mo->y - m_h/2));

		//  m_x = plr->mo->x - m_w/2;

		//  m_y = plr->mo->y - m_h/2;
	}
}

//
//
//
@[c: 'AM_updateLightLev']
fn am_update_light_lev() {
	nexttic := 0
	// static int litelevels[] = { 0, 3, 5, 6, 6, 7, 7, 7 };
	litelevels := [0, 4, 7, 10, 12, 14, 15, 15]!

	litelevelscnt := 0
	// Change light level
	if amclock > nexttic {
		lightlev = litelevels[litelevelscnt++]
		if litelevelscnt == (sizeof(litelevels) / sizeof(*litelevels)) {
			litelevelscnt = 0
		}
		nexttic = amclock + 6 - (amclock % 6)
	}
}

//
// Updates on Game Tick
//
@[c: 'AM_Ticker']
fn am_ticker() {
	if !automapactive {
		return
	}
	amclock++
	if followplayer {
		am_do_follow_player()
	}
	// Change the zoom if necessary
	if ftom_zoommul != (1 << 16) {
		am_change_window_scale()
	}
	// Change x,y location
	if m_paninc.x || m_paninc.y {
		am_change_window_loc()
	}
	// Update light level

	// AM_updateLightLev();
}

//
// Clear automap frame buffer.
//
@[c: 'AM_clearFB']
fn am_clear_fb(color int) {
	C.memset(fb, color, f_w * f_h * sizeof(*fb))
}

// empty enum
const left = 1
const right = 2
const bottom = 4
const top = 8

//
// Automap clipping of lines.
//
// Based on Cohen-Sutherland clipping algorithm but with a slightly
// faster reject and precalculated slopes.  If the speed is needed,
// use a hash algorithm to handle  the common cases.
//
@[c: 'AM_clipMline']
fn am_clip_mline(ml &Mline_t, fl &Fline_t) bool {
	outcode1 := 0
	outcode2 := 0
	outside := 0
	tmp := Fpoint_t{}
	dx := 0
	dy := 0
	// do trivial rejects and outcodes
	if ml.a.y > m_y2 {
		outcode1 = top
	} else if ml.a.y < m_y {
		outcode1 = bottom
	}
	if ml.b.y > m_y2 {
		outcode2 = top
	} else if ml.b.y < m_y {
		outcode2 = bottom
	}
	if outcode1 & outcode2 {
		return false
	}
	// trivially outside
	if ml.a.x < m_x {
		outcode1 |= left
	} else if ml.a.x > m_x2 {
		outcode1 |= right
	}
	if ml.b.x < m_x {
		outcode2 |= left
	} else if ml.b.x > m_x2 {
		outcode2 |= right
	}
	if outcode1 & outcode2 {
		return false
	}
	// trivially outside
	// transform to frame-buffer coordinates.
	fl.a.x = (f_x + (fixed_mul(((ml.a.x) - m_x), scale_mtof) >> 16))
	fl.a.y = (f_y + (f_h - (fixed_mul(((ml.a.y) - m_y), scale_mtof) >> 16)))
	fl.b.x = (f_x + (fixed_mul(((ml.b.x) - m_x), scale_mtof) >> 16))
	fl.b.y = (f_y + (f_h - (fixed_mul(((ml.b.y) - m_y), scale_mtof) >> 16)))
	outcode1 = 0
	if (fl.a.y) < 0 {
		outcode1 |= top
	} else if (fl.a.y) >= f_h {
		outcode1 |= bottom
	}
	if (fl.a.x) < 0 {
		outcode1 |= left
	} else if (fl.a.x) >= f_w {
		outcode1 |= right
	}
	0
	outcode2 = 0
	if (fl.b.y) < 0 {
		outcode2 |= top
	} else if (fl.b.y) >= f_h {
		outcode2 |= bottom
	}
	if (fl.b.x) < 0 {
		outcode2 |= left
	} else if (fl.b.x) >= f_w {
		outcode2 |= right
	}
	0
	if outcode1 & outcode2 {
		return false
	}
	for outcode1 | outcode2 {
		// may be partially inside box
		// find an outside point
		if outcode1 {
			outside = outcode1
		} else { // 3
			outside = outcode2
		}
		// clip to each side
		if outside & top {
			dy = fl.a.y - fl.b.y
			dx = fl.b.x - fl.a.x
			tmp.x = fl.a.x + (dx * (fl.a.y)) / dy
			tmp.y = 0
		} else if outside & bottom {
			dy = fl.a.y - fl.b.y
			dx = fl.b.x - fl.a.x
			tmp.x = fl.a.x + (dx * (fl.a.y - f_h)) / dy
			tmp.y = f_h - 1
		} else if outside & right {
			dy = fl.b.y - fl.a.y
			dx = fl.b.x - fl.a.x
			tmp.y = fl.a.y + (dy * (f_w - 1 - fl.a.x)) / dx
			tmp.x = f_w - 1
		} else if outside & left {
			dy = fl.b.y - fl.a.y
			dx = fl.b.x - fl.a.x
			tmp.y = fl.a.y + (dy * (-fl.a.x)) / dx
			tmp.x = 0
		} else {
			tmp.x = 0
			tmp.y = 0
		}
		if outside == outcode1 {
			fl.a = tmp
			outcode1 = 0
			if (fl.a.y) < 0 {
				outcode1 |= top
			} else if (fl.a.y) >= f_h {
				outcode1 |= bottom
			}
			if (fl.a.x) < 0 {
				outcode1 |= left
			} else if (fl.a.x) >= f_w {
				outcode1 |= right
			}
			0
		} else {
			fl.b = tmp
			outcode2 = 0
			if (fl.b.y) < 0 {
				outcode2 |= top
			} else if (fl.b.y) >= f_h {
				outcode2 |= bottom
			}
			if (fl.b.x) < 0 {
				outcode2 |= left
			} else if (fl.b.x) >= f_w {
				outcode2 |= right
			}
			0
		}
		if outcode1 & outcode2 {
			return false
		}
		// trivially outside
	}
	return true
}

//
// Classic Bresenham w/ whatever optimizations needed for speed
//
@[c: 'AM_drawFline']
fn am_draw_fline(fl &Fline_t, color int) {
	x := 0
	y := 0
	dx := 0
	dy := 0
	sx := 0
	sy := 0
	ax := 0
	ay := 0
	d := 0
	fuck := 0
	// For debugging only
	if fl.a.x < 0 || fl.a.x >= f_w || fl.a.y < 0 || fl.a.y >= f_h || fl.b.x < 0 || fl.b.x >= f_w
		|| fl.b.y < 0 || fl.b.y >= f_h {
		// DEH_fprintf(stderr, "fuck %d \r", fuck++);
		return
	}
	dx = fl.b.x - fl.a.x
	ax = 2 * (if dx < 0 { -dx } else { dx })
	sx = if dx < 0 { -1 } else { 1 }
	dy = fl.b.y - fl.a.y
	ay = 2 * (if dy < 0 { -dy } else { dy })
	sy = if dy < 0 { -1 } else { 1 }
	x = fl.a.x
	y = fl.a.y
	if ax > ay {
		d = ay - ax / 2
		for 1 {
			fb[y * f_w + x] = color
			if x == fl.b.x {
				return
			}
			if d >= 0 {
				y += sy
				d -= ax
			}
			x += sx
			d += ay
		}
	} else {
		d = ax - ay / 2
		for 1 {
			fb[y * f_w + x] = color
			if y == fl.b.y {
				return
			}
			if d >= 0 {
				x += sx
				d -= ay
			}
			y += sy
			d += ax
		}
	}
}

//
// Clip lines, draw visible part sof lines.
//
@[c: 'AM_drawMline']
fn am_draw_mline(ml &Mline_t, color int) {
	fl := Fline_t{}
	if am_clip_mline(ml, &fl) {
		am_draw_fline(&fl, color)
	}
	// draws it on frame buffer using fb coords
}

//
// Draws flat (floor/ceiling tile) aligned grid lines.
//
@[c: 'AM_drawGrid']
fn am_draw_grid(color int) {
	x := 0
	y := 0

	start := 0
	end := 0

	ml := Mline_t{}
	// Figure out start of vertical gridlines
	start = m_x
	if (start - bmaporgx) % (128 << 16) {
		start += (128 << 16) - ((start - bmaporgx) % (128 << 16))
	}
	end = m_x + m_w
	// draw vertical gridlines
	ml.a.y = m_y
	ml.b.y = m_y + m_h
	for x = start; x < end; x += (128 << 16) {
		ml.a.x = x
		ml.b.x = x
		am_draw_mline(&ml, color)
	}
	// Figure out start of horizontal gridlines
	start = m_y
	if (start - bmaporgy) % (128 << 16) {
		start += (128 << 16) - ((start - bmaporgy) % (128 << 16))
	}
	end = m_y + m_h
	// draw horizontal gridlines
	ml.a.x = m_x
	ml.b.x = m_x + m_w
	for y = start; y < end; y += (128 << 16) {
		ml.a.y = y
		ml.b.y = y
		am_draw_mline(&ml, color)
	}
}

//
// Determines visible lines, draws them.
// This is LineDef based, not LineSeg based.
//
@[c: 'AM_drawWalls']
fn am_draw_walls() {
	i := 0
	l := Mline_t{}
	for i = 0; i < numlines; i++ {
		l.a.x = lines[i].v1.x
		l.a.y = lines[i].v1.y
		l.b.x = lines[i].v2.x
		l.b.y = lines[i].v2.y
		if cheating || lines[i].flags & 256 {
			if lines[i].flags & 128 && !cheating {
				continue
			}
			if !lines[i].backsector {
				am_draw_mline(&l, (256 - 5 * 16) + lightlev)
			} else {
				if lines[i].special == 39 {
					// teleporters
					am_draw_mline(&l, (256 - 5 * 16) + 16 / 2)
				}
				else if lines[i].flags & 32 // secret door
				  {
					if cheating {
						am_draw_mline(&l, (256 - 5 * 16) + lightlev)
					} else { // 3
						am_draw_mline(&l, (256 - 5 * 16) + lightlev)
					}
				} else if lines[i].backsector.floorheight != lines[i].frontsector.floorheight {
					am_draw_mline(&l, (4 * 16) + lightlev)
					// floor level change
				} else if lines[i].backsector.ceilingheight != lines[i].frontsector.ceilingheight {
					am_draw_mline(&l, (256 - 32 + 7) + lightlev)
					// ceiling level change
				} else if cheating {
					am_draw_mline(&l, (6 * 16) + lightlev)
				}
			}
		} else if plr.powers[int(Powertype_t.pw_allmap)] {
			if !(lines[i].flags & 128) {
				am_draw_mline(&l, (6 * 16) + 3)
			}
		}
	}
}

//
// Rotation in 2D.
// Used to rotate player arrow line character.
//
@[c: 'AM_rotate']
fn am_rotate(x &int, y &int, a Angle_t) {
	tmpx := 0
	tmpx = fixed_mul(*x, finecosine[a >> 19]) - fixed_mul(*y, finesine[a >> 19])
	*y = fixed_mul(*x, finesine[a >> 19]) + fixed_mul(*y, finecosine[a >> 19])
	*x = tmpx
}

@[c: 'AM_drawLineCharacter']
fn am_draw_line_character(lineguy &Mline_t, lineguylines int, scale int, angle Angle_t, color int, x int, y int) {
	i := 0
	l := Mline_t{}
	for i = 0; i < lineguylines; i++ {
		l.a.x = lineguy[i].a.x
		l.a.y = lineguy[i].a.y
		if scale {
			l.a.x = fixed_mul(scale, l.a.x)
			l.a.y = fixed_mul(scale, l.a.y)
		}
		if angle {
			am_rotate(&l.a.x, &l.a.y, angle)
		}
		l.a.x += x
		l.a.y += y
		l.b.x = lineguy[i].b.x
		l.b.y = lineguy[i].b.y
		if scale {
			l.b.x = fixed_mul(scale, l.b.x)
			l.b.y = fixed_mul(scale, l.b.y)
		}
		if angle {
			am_rotate(&l.b.x, &l.b.y, angle)
		}
		l.b.x += x
		l.b.y += y
		am_draw_mline(&l, color)
	}
}

@[c: 'AM_drawPlayers']
fn am_draw_players() {
	i := 0
	p := &Player_t(0)
	their_colors := [(7 * 16), (6 * 16), (4 * 16), (256 - 5 * 16)]!

	their_color := -1
	color := 0
	if !netgame {
		if cheating {
			am_draw_line_character(cheat_player_arrow, (sizeof(cheat_player_arrow) / sizeof(*cheat_player_arrow)),
				0, plr.mo.angle, (256 - 47), plr.mo.x, plr.mo.y)
		} else { // 3
			am_draw_line_character(player_arrow, (sizeof(player_arrow) / sizeof(*player_arrow)),
				0, plr.mo.angle, (256 - 47), plr.mo.x, plr.mo.y)
		}
		return
	}
	for i = 0; i < 4; i++ {
		their_color++
		p = &players[i]
		if (deathmatch && !singledemo) && p != plr {
			continue
		}
		if !playeringame[i] {
			continue
		}
		if p.powers[int(Powertype_t.pw_invisibility)] {
			color = 246
		}
		// *close* to black
		else { // 3
			color = their_colors[their_color]
		}
		am_draw_line_character(player_arrow, (sizeof(player_arrow) / sizeof(*player_arrow)),
			0, p.mo.angle, color, p.mo.x, p.mo.y)
	}
}

@[c: 'AM_drawThings']
fn am_draw_things(colors int, colorrange int) {
	i := 0
	t := &Mobj_t(0)
	for i = 0; i < numsectors; i++ {
		t = sectors[i].thinglist
		for t {
			am_draw_line_character(thintriangle_guy, (sizeof(thintriangle_guy) / sizeof(*thintriangle_guy)),
				16 << 16, t.angle, colors + lightlev, t.x, t.y)
			t = t.snext
		}
	}
}

@[c: 'AM_drawMarks']
fn am_draw_marks() {
	i := 0
	fx := 0
	fy := 0
	w := 0
	h := 0

	for i = 0; i < 10; i++ {
		if markpoints[i].x != -1 {
			//      w = SHORT(marknums[i]->width);
			//      h = SHORT(marknums[i]->height);
			w = 5
			// because something's wrong with the wad, i guess
			h = 6
			// because something's wrong with the wad, i guess
			fx = (f_x + (fixed_mul(((markpoints[i].x) - m_x), scale_mtof) >> 16))
			fy = (f_y + (f_h - (fixed_mul(((markpoints[i].y) - m_y), scale_mtof) >> 16)))
			if fx >= f_x && fx <= f_w - w && fy >= f_y && fy <= f_h - h {
				v_draw_patch(fx, fy, marknums[i])
			}
		}
	}
}

@[c: 'AM_drawCrosshair']
fn am_draw_crosshair(color int) {
	fb[(f_w * (f_h + 1)) / 2] = color
	// single point for now
}

@[c: 'AM_Drawer']
fn am_drawer() {
	if !automapactive {
		return
	}
	am_clear_fb(0)
	if grid {
		am_draw_grid(((6 * 16) + 16 / 2))
	}
	am_draw_walls()
	am_draw_players()
	if cheating == 2 {
		am_draw_things((7 * 16), 16)
	}
	am_draw_crosshair((6 * 16))
	am_draw_marks()
	v_mark_rect(f_x, f_y, f_w, f_h)
}
