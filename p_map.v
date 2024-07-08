@[translated]
module main

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

@[c: 'P_SpawnPuff']
fn p_spawn_puff(x int, y int, z int)

@[c: 'P_SpawnBlood']
fn p_spawn_blood(x int, y int, z int, damage int)

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

@[c: 'P_TeleportMove']
fn p_teleport_move(thing &Mobj_t, x int, y int) bool

@[c: 'P_SlideMove']
fn p_slide_move(mo &Mobj_t)

@[c: 'P_CheckSight']
fn p_check_sight(t1 &Mobj_t, t2 &Mobj_t) bool

@[c: 'P_UseLines']
fn p_use_lines(player &Player_t)

@[c: 'P_ChangeSector']
fn p_change_sector(sector &Sector_t, crunch bool) bool

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
@[c: 'P_TouchSpecialThing']
fn p_touch_special_thing(special &Mobj_t, toucher &Mobj_t)

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

@[c: 'P_ShootSpecialLine']
fn p_shoot_special_line(thing &Mobj_t, line &Line_t)

@[c: 'P_CrossSpecialLine']
fn p_cross_special_line(linenum int, side int, thing &Mobj_t)

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
// skipping global dup "automapactive"
// In AutoMap mode?
// skipping global dup "menuactive"
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
// wipegamestate can be set to -1
//  to force a wipe on the next draw
// skipping global dup "wipegamestate"
// skipping global dup "mouseSensitivity"
// Needed to store the number of the dummy sky flat.
// Used for rendering,
//  as well as tracking projectiles etc.
// skipping global dup "skyflatnum"
// Netgame stuff (buffers and pointers, i.e. indices).
// skipping global dup "netcmds"
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard, Andrey Budko
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Movement, collision handling.
//	Shooting and aiming.
//
// State.
// Data.
// Spechit overrun magic value.
//
// This is the value used by PrBoom-plus.  I think the value below is
// actually better and works with more demos.  However, I think
// it's better for the spechits emulation to be compatible with
// PrBoom-plus, at least so that the big spechits emulation list
// on Doomworld can also be used with Chocolate Doom.
// This is from a post by myk on the Doomworld forums,
// outputted from entryway's spechit_magic generator for
// s205n546.lmp.  The _exact_ value of this isn't too
// important; as long as it is in the right general
// range, it will usually work.  Otherwise, we can use
// the generator (hacked doom2.exe) and provide it
// with -spechit.
//#define DEFAULT_SPECHIT_MAGIC 0x84f968e8
// If "floatok" true, move would be ok
// if within "tmfloorz - tmceilingz".
// keep track of the line that lowers the ceiling,
// so missiles don't explode against sky hack walls
// keep track of special lines as they are hit,
// but don't process them until the move is proven valid
//
// TELEPORT MOVE
//
//
// PIT_StompThing
//
@[c: 'PIT_StompThing']
fn pit_stomp_thing(thing &Mobj_t) bool {
	blockdist := 0
	if !(thing.flags & Mobjflag_t.mf_shootable) {
		return true
	}
	blockdist = thing.radius + tmthing.radius
	if C.abs(thing.x - tmx) >= blockdist || C.abs(thing.y - tmy) >= blockdist {
		// didn't hit it
		return true
	}
	// don't clip against self
	if thing == tmthing {
		return true
	}
	// monsters don't stomp things except on boss level
	if !tmthing.player && gamemap != 30 {
		return false
	}
	p_damage_mobj(thing, tmthing, tmthing, 10000)
	return true
}

//
// P_TeleportMove
//
@[c: 'P_TeleportMove']
fn p_teleport_move(thing &Mobj_t, x int, y int) bool {
	xl := 0
	xh := 0
	yl := 0
	yh := 0
	bx := 0
	by := 0
	newsubsec := &Subsector_t(0)
	// kill anything occupying the position
	tmthing = thing
	tmflags = thing.flags
	tmx = x
	tmy = y
	tmbbox[int(boxtop)] = y + tmthing.radius
	tmbbox[int(boxbottom)] = y - tmthing.radius
	tmbbox[int(boxright)] = x + tmthing.radius
	tmbbox[int(boxleft)] = x - tmthing.radius
	newsubsec = r_point_in_subsector(x, y)
	ceilingline = (unsafe { nil })
	// The base floor/ceiling is from the subsector
	// that contains the point.
	// Any contacted lines the step closer together
	// will adjust them.
	tmfloorz = newsubsec.sector.floorheight
	tmdropoffz = tmfloorz
	tmceilingz = newsubsec.sector.ceilingheight
	validcount++
	numspechit = 0
	// stomp on any things contacted
	xl = (tmbbox[int(boxleft)] - bmaporgx - 32 * (1 << 16)) >> (16 + 7)
	xh = (tmbbox[int(boxright)] - bmaporgx + 32 * (1 << 16)) >> (16 + 7)
	yl = (tmbbox[int(boxbottom)] - bmaporgy - 32 * (1 << 16)) >> (16 + 7)
	yh = (tmbbox[int(boxtop)] - bmaporgy + 32 * (1 << 16)) >> (16 + 7)
	for bx = xl; bx <= xh; bx++ {
		for by = yl; by <= yh; by++ {
			if !p_block_things_iterator(bx, by, pit_stomp_thing) {
				return false
			}
		}
	}
	// the move is ok,
	// so link the thing into its new position
	p_unset_thing_position(thing)
	thing.floorz = tmfloorz
	thing.ceilingz = tmceilingz
	thing.x = x
	thing.y = y
	p_set_thing_position(thing)
	return true
}

//
// MOVEMENT ITERATOR FUNCTIONS
//
@[c: 'SpechitOverrun']
fn spechit_overrun(ld &Line_t)

//
// PIT_CheckLine
// Adjusts tmfloorz and tmceilingz as lines are contacted
//
@[c: 'PIT_CheckLine']
fn pit_check_line(ld &Line_t) bool {
	if tmbbox[int(boxright)] <= ld.bbox[int(boxleft)]
		|| tmbbox[int(boxleft)] >= ld.bbox[int(boxright)]
		|| tmbbox[int(boxtop)] <= ld.bbox[int(boxbottom)]
		|| tmbbox[int(boxbottom)] >= ld.bbox[int(boxtop)] {
		return true
	}
	if p_box_on_line_side(tmbbox, ld) != -1 {
		return true
	}
	// A line has been hit
	// The moving thing's destination position will cross
	// the given line.
	// If this should not be allowed, return false.
	// If the line is special, keep track of it
	// to process later if the move is proven ok.
	// NOTE: specials are NOT sorted by order,
	// so two special lines that are only 8 pixels apart
	// could be crossed in either order.
	if !ld.backsector {
		return false
	}
	// one sided line
	if !(tmthing.flags & Mobjflag_t.mf_missile) {
		if ld.flags & 1 {
			return false
		}
		// explicitly blocking everything
		if !tmthing.player && ld.flags & 2 {
			return false
		}
		// block monsters only
	}
	// set openrange, opentop, openbottom
	p_line_opening(ld)
	// adjust floor / ceiling heights
	if opentop < tmceilingz {
		tmceilingz = opentop
		ceilingline = ld
	}
	if openbottom > tmfloorz {
		tmfloorz = openbottom
	}
	if lowfloor < tmdropoffz {
		tmdropoffz = lowfloor
	}
	// if contacted a special line, add it to the list
	if ld.special {
		spechit[numspechit] = ld
		numspechit++
		// fraggle: spechits overrun emulation code from prboom-plus
		if numspechit > 8 {
			spechit_overrun(ld)
		}
	}
	return true
}

//
// PIT_CheckThing
//
@[c: 'PIT_CheckThing']
fn pit_check_thing(thing &Mobj_t) bool {
	blockdist := 0
	solid := false
	damage := 0
	if !(thing.flags & (Mobjflag_t.mf_solid | Mobjflag_t.mf_special | Mobjflag_t.mf_shootable)) {
		return true
	}
	blockdist = thing.radius + tmthing.radius
	if C.abs(thing.x - tmx) >= blockdist || C.abs(thing.y - tmy) >= blockdist {
		// didn't hit it
		return true
	}
	// don't clip against self
	if thing == tmthing {
		return true
	}
	// check for skulls slamming into things
	if tmthing.flags & Mobjflag_t.mf_skullfly {
		damage = ((p_random() % 8) + 1) * tmthing.info.damage
		p_damage_mobj(thing, tmthing, tmthing, damage)
		tmthing.flags &= ~Mobjflag_t.mf_skullfly
		tmthing.momx = 0
		tmthing.momy = 0
		tmthing.momz = 0
		p_set_mobj_state(tmthing, tmthing.info.spawnstate)
		return false
		// stop moving
	}
	// missiles can hit other things
	if tmthing.flags & Mobjflag_t.mf_missile {
		// see if it went over / under
		if tmthing.z > thing.z + thing.height {
			return true
		}
		// overhead
		if tmthing.z + tmthing.height < thing.z {
			return true
		}
		// underneath
		if tmthing.target && (tmthing.target.type_ == thing.type_
			|| (tmthing.target.type_ == Mobjtype_t.mt_knight
			&& thing.type_ == Mobjtype_t.mt_bruiser)
			|| (tmthing.target.type_ == Mobjtype_t.mt_bruiser
			&& thing.type_ == Mobjtype_t.mt_knight)) {
			// Don't hit same species as originator.
			if thing == tmthing.target {
				return true
			}
			// sdh: Add deh_species_infighting here.  We can override the
			// "monsters of the same species cant hurt each other" behavior
			// through dehacked patches
			if thing.type_ != Mobjtype_t.mt_player && !deh_species_infighting {
				// Explode, but do no damage.
				// Let players missile other players.
				return false
			}
		}
		if !(thing.flags & Mobjflag_t.mf_shootable) {
			// didn't do any damage
			return !(thing.flags & Mobjflag_t.mf_solid)
		}
		// damage / explode
		damage = ((p_random() % 8) + 1) * tmthing.info.damage
		p_damage_mobj(thing, tmthing, tmthing.target, damage)
		// don't traverse any more
		return false
	}
	// check for special pickup
	if thing.flags & Mobjflag_t.mf_special {
		solid = (thing.flags & Mobjflag_t.mf_solid) != 0
		if tmflags & Mobjflag_t.mf_pickup {
			// can remove thing
			p_touch_special_thing(thing, tmthing)
		}
		return !solid
	}
	return !(thing.flags & Mobjflag_t.mf_solid)
}

//
// MOVEMENT CLIPPING
//
//
// P_CheckPosition
// This is purely informative, nothing is modified
// (except things picked up).
//
// in:
//  a mobj_t (can be valid or invalid)
//  a position to be checked
//   (doesn't need to be related to the mobj_t->x,y)
//
// during:
//  special things are touched if MF_PICKUP
//  early out on solid lines?
//
// out:
//  newsubsec
//  floorz
//  ceilingz
//  tmdropoffz
//   the lowest point contacted
//   (monsters won't move to a dropoff)
//  speciallines[]
//  numspeciallines
//
@[c: 'P_CheckPosition']
fn p_check_position(thing &Mobj_t, x int, y int) bool {
	xl := 0
	xh := 0
	yl := 0
	yh := 0
	bx := 0
	by := 0
	newsubsec := &Subsector_t(0)
	tmthing = thing
	tmflags = thing.flags
	tmx = x
	tmy = y
	tmbbox[int(boxtop)] = y + tmthing.radius
	tmbbox[int(boxbottom)] = y - tmthing.radius
	tmbbox[int(boxright)] = x + tmthing.radius
	tmbbox[int(boxleft)] = x - tmthing.radius
	newsubsec = r_point_in_subsector(x, y)
	ceilingline = (unsafe { nil })
	// The base floor / ceiling is from the subsector
	// that contains the point.
	// Any contacted lines the step closer together
	// will adjust them.
	tmfloorz = newsubsec.sector.floorheight
	tmdropoffz = tmfloorz
	tmceilingz = newsubsec.sector.ceilingheight
	validcount++
	numspechit = 0
	if tmflags & Mobjflag_t.mf_noclip {
		return true
	}
	// Check things first, possibly picking things up.
	// The bounding box is extended by MAXRADIUS
	// because mobj_ts are grouped into mapblocks
	// based on their origin point, and can overlap
	// into adjacent blocks by up to MAXRADIUS units.
	xl = (tmbbox[int(boxleft)] - bmaporgx - 32 * (1 << 16)) >> (16 + 7)
	xh = (tmbbox[int(boxright)] - bmaporgx + 32 * (1 << 16)) >> (16 + 7)
	yl = (tmbbox[int(boxbottom)] - bmaporgy - 32 * (1 << 16)) >> (16 + 7)
	yh = (tmbbox[int(boxtop)] - bmaporgy + 32 * (1 << 16)) >> (16 + 7)
	for bx = xl; bx <= xh; bx++ {
		for by = yl; by <= yh; by++ {
			if !p_block_things_iterator(bx, by, pit_check_thing) {
				return false
			}
		}
	}
	// check lines
	xl = (tmbbox[int(boxleft)] - bmaporgx) >> (16 + 7)
	xh = (tmbbox[int(boxright)] - bmaporgx) >> (16 + 7)
	yl = (tmbbox[int(boxbottom)] - bmaporgy) >> (16 + 7)
	yh = (tmbbox[int(boxtop)] - bmaporgy) >> (16 + 7)
	for bx = xl; bx <= xh; bx++ {
		for by = yl; by <= yh; by++ {
			if !p_block_lines_iterator(bx, by, pit_check_line) {
				return false
			}
		}
	}
	return true
}

//
// P_TryMove
// Attempt to move to a new position,
// crossing special lines unless MF_TELEPORT is set.
//
@[c: 'P_TryMove']
fn p_try_move(thing &Mobj_t, x int, y int) bool {
	oldx := 0
	oldy := 0
	side := 0
	oldside := 0
	ld := &Line_t(0)
	floatok = false
	if !p_check_position(thing, x, y) {
		return false
	}
	// solid wall or thing
	if !(thing.flags & Mobjflag_t.mf_noclip) {
		if tmceilingz - tmfloorz < thing.height {
			return false
		}
		// doesn't fit
		floatok = true
		if !(thing.flags & Mobjflag_t.mf_teleport) && tmceilingz - thing.z < thing.height {
			return false
		}
		// mobj must lower itself to fit
		if !(thing.flags & Mobjflag_t.mf_teleport) && tmfloorz - thing.z > 24 * (1 << 16) {
			return false
		}
		// too big a step up
		if !(thing.flags & (Mobjflag_t.mf_dropoff | Mobjflag_t.mf_float))
			&& tmfloorz - tmdropoffz > 24 * (1 << 16) {
			return false
		}
		// don't stand over a dropoff
	}
	// the move is ok,
	// so link the thing into its new position
	p_unset_thing_position(thing)
	oldx = thing.x
	oldy = thing.y
	thing.floorz = tmfloorz
	thing.ceilingz = tmceilingz
	thing.x = x
	thing.y = y
	p_set_thing_position(thing)
	// if any special lines were hit, do the effect
	if !(thing.flags & (Mobjflag_t.mf_teleport | Mobjflag_t.mf_noclip)) {
		for numspechit-- {
			// see if the line was crossed
			ld = spechit[numspechit]
			side = p_point_on_line_side(thing.x, thing.y, ld)
			oldside = p_point_on_line_side(oldx, oldy, ld)
			if side != oldside {
				if ld.special {
					p_cross_special_line(ld - lines, oldside, thing)
				}
			}
		}
	}
	return true
}

//
// P_ThingHeightClip
// Takes a valid thing and adjusts the thing->floorz,
// thing->ceilingz, and possibly thing->z.
// This is called for all nearby monsters
// whenever a sector changes height.
// If the thing doesn't fit,
// the z will be set to the lowest value
// and false will be returned.
//
@[c: 'P_ThingHeightClip']
fn p_thing_height_clip(thing &Mobj_t) bool {
	onfloor := false
	onfloor = (thing.z == thing.floorz)
	p_check_position(thing, thing.x, thing.y)
	// what about stranding a monster partially off an edge?
	thing.floorz = tmfloorz
	thing.ceilingz = tmceilingz
	if onfloor {
		// walking monsters rise and fall with the floor
		thing.z = thing.floorz
	} else {
		// don't adjust a floating monster unless forced to
		if thing.z + thing.height > thing.ceilingz {
			thing.z = thing.ceilingz - thing.height
		}
	}
	if thing.ceilingz - thing.floorz < thing.height {
		return false
	}
	return true
}

//
// SLIDE MOVE
// Allows the player to slide along any angled walls.
//
//
// P_HitSlideLine
// Adjusts the xmove / ymove
// so that the next move will slide along the wall.
//
@[c: 'P_HitSlideLine']
fn p_hit_slide_line(ld &Line_t) {
	side := 0
	lineangle := u32(0)
	moveangle := u32(0)
	deltaangle := u32(0)
	movelen := 0
	newlen := 0
	if ld.slopetype == Slopetype_t.st_horizontal {
		tmymove = 0
		return
	}
	if ld.slopetype == Slopetype_t.st_vertical {
		tmxmove = 0
		return
	}
	side = p_point_on_line_side(slidemo.x, slidemo.y, ld)
	lineangle = r_point_to_angle2(0, 0, ld.dx, ld.dy)
	if side == 1 {
		lineangle += 2147483648
	}
	moveangle = r_point_to_angle2(0, 0, tmxmove, tmymove)
	deltaangle = moveangle - lineangle
	if deltaangle > 2147483648 {
		deltaangle += 2147483648
	}
	//	I_Error ("SlideLine: ang>ANG180");
	lineangle >>= 19
	deltaangle >>= 19
	movelen = p_aprox_distance(tmxmove, tmymove)
	newlen = fixed_mul(movelen, finecosine[deltaangle])
	tmxmove = fixed_mul(newlen, finecosine[lineangle])
	tmymove = fixed_mul(newlen, finesine[lineangle])
}

//
// PTR_SlideTraverse
//
@[c: 'PTR_SlideTraverse']
fn ptr_slide_traverse(in_ &Intercept_t) bool {
	li := &Line_t(0)
	if !in_.isaline {
		i_error(c'PTR_SlideTraverse: not a line?')
	}
	li = in_.d.line
	if !(li.flags & 4) {
		if p_point_on_line_side(slidemo.x, slidemo.y, li) {
			// don't hit the back side
			return true
		}
		unsafe {
			goto isblocking
		} // id: 0xb4de30
	}
	// set openrange, opentop, openbottom
	p_line_opening(li)
	if openrange < slidemo.height {
		unsafe {
			goto isblocking
		} // id: 0xb4de30
	}
	// doesn't fit
	if opentop - slidemo.z < slidemo.height {
		unsafe {
			goto isblocking
		} // id: 0xb4de30
	}
	// mobj is too high
	if openbottom - slidemo.z > 24 * (1 << 16) {
		unsafe {
			goto isblocking
		} // id: 0xb4de30
	}
	// too big a step up
	// this line doesn't block movement
	return true
	// the line does block movement,
	// see if it is closer than best so far
	// RRRREG isblocking id=0xb4de30
	isblocking:
	if in_.frac < bestslidefrac {
		secondslidefrac = bestslidefrac
		secondslideline = bestslideline
		bestslidefrac = in_.frac
		bestslideline = li
	}
	return false
	// stop
}

//
// P_SlideMove
// The momx / momy move is bad, so try to slide
// along a wall.
// Find the first line hit, move flush to it,
// and slide along it
//
// This is a kludgy mess.
//
@[c: 'P_SlideMove']
fn p_slide_move(mo &Mobj_t) {
	leadx := 0
	leady := 0
	trailx := 0
	traily := 0
	newx := 0
	newy := 0
	hitcount := 0
	slidemo = mo
	hitcount = 0
	// RRRREG retry id=0xb4f830
	retry:
	if hitcount++$ == 3 {
		unsafe {
			goto stairstep
		} // id: 0xb4f7a8
	}
	// don't loop forever
	// trace along the three leading corners
	if mo.momx > 0 {
		leadx = mo.x + mo.radius
		trailx = mo.x - mo.radius
	} else {
		leadx = mo.x - mo.radius
		trailx = mo.x + mo.radius
	}
	if mo.momy > 0 {
		leady = mo.y + mo.radius
		traily = mo.y - mo.radius
	} else {
		leady = mo.y - mo.radius
		traily = mo.y + mo.radius
	}
	bestslidefrac = (1 << 16) + 1
	p_path_traverse(leadx, leady, leadx + mo.momx, leady + mo.momy, 1, ptr_slide_traverse)
	p_path_traverse(trailx, leady, trailx + mo.momx, leady + mo.momy, 1, ptr_slide_traverse)
	p_path_traverse(leadx, traily, leadx + mo.momx, traily + mo.momy, 1, ptr_slide_traverse)
	// move up to the wall
	if bestslidefrac == (1 << 16) + 1 {
		// the move most have hit the middle, so stairstep
		// RRRREG stairstep id=0xb4f7a8
		stairstep:
		if !p_try_move(mo, mo.x, mo.y + mo.momy) {
			p_try_move(mo, mo.x + mo.momx, mo.y)
		}
		return
	}
	// fudge a bit to make sure it doesn't hit
	bestslidefrac -= 2048
	if bestslidefrac > 0 {
		newx = fixed_mul(mo.momx, bestslidefrac)
		newy = fixed_mul(mo.momy, bestslidefrac)
		if !p_try_move(mo, mo.x + newx, mo.y + newy) {
			unsafe {
				goto stairstep
			} // id: 0xb4f7a8
		}
	}
	// Now continue along the wall.
	// First calculate remainder.
	bestslidefrac = (1 << 16) - (bestslidefrac + 2048)
	if bestslidefrac > (1 << 16) {
		bestslidefrac = (1 << 16)
	}
	if bestslidefrac <= 0 {
		return
	}
	tmxmove = fixed_mul(mo.momx, bestslidefrac)
	tmymove = fixed_mul(mo.momy, bestslidefrac)
	p_hit_slide_line(bestslideline)
	// clip the moves
	mo.momx = tmxmove
	mo.momy = tmymove
	if !p_try_move(mo, mo.x + tmxmove, mo.y + tmymove) {
		unsafe {
			goto retry
		} // id: 0xb4f830
	}
}

//
// P_LineAttack
//
// who got hit (or NULL)
// Height if not aiming up or down
// ???: use slope for monsters?
// slopes to top and bottom of target
// skipping global dup "topslope"
// skipping global dup "bottomslope"
//
// PTR_AimTraverse
// Sets linetaget and aimslope when a target is aimed at.
//
@[c: 'PTR_AimTraverse']
fn ptr_aim_traverse(in_ &Intercept_t) bool {
	li := &Line_t(0)
	th := &Mobj_t(0)
	slope := 0
	thingtopslope := 0
	thingbottomslope := 0
	dist := 0
	if in_.isaline {
		li = in_.d.line
		if !(li.flags & 4) {
			return false
		}
		// stop
		// Crosses a two sided line.
		// A two sided line will restrict
		// the possible target ranges.
		p_line_opening(li)
		if openbottom >= opentop {
			return false
		}
		// stop
		dist = fixed_mul(attackrange, in_.frac)
		if li.backsector == (unsafe { nil })
			|| li.frontsector.floorheight != li.backsector.floorheight {
			slope = fixed_div(openbottom - shootz, dist)
			if slope > bottomslope {
				bottomslope = slope
			}
		}
		if li.backsector == (unsafe { nil })
			|| li.frontsector.ceilingheight != li.backsector.ceilingheight {
			slope = fixed_div(opentop - shootz, dist)
			if slope < topslope {
				topslope = slope
			}
		}
		if topslope <= bottomslope {
			return false
		}
		// stop
		return true
		// shot continues
	}
	// shoot a thing
	th = in_.d.thing
	if th == shootthing {
		return true
	}
	// can't shoot self
	if !(th.flags & Mobjflag_t.mf_shootable) {
		return true
	}
	// corpse or something
	// check angles to see if the thing can be aimed at
	dist = fixed_mul(attackrange, in_.frac)
	thingtopslope = fixed_div(th.z + th.height - shootz, dist)
	if thingtopslope < bottomslope {
		return true
	}
	// shot over the thing
	thingbottomslope = fixed_div(th.z - shootz, dist)
	if thingbottomslope > topslope {
		return true
	}
	// shot under the thing
	// this thing can be hit!
	if thingtopslope > topslope {
		thingtopslope = topslope
	}
	if thingbottomslope < bottomslope {
		thingbottomslope = bottomslope
	}
	aimslope = (thingtopslope + thingbottomslope) / 2
	linetarget = th
	return false
	// don't go any farther
}

//
// PTR_ShootTraverse
//
@[c: 'PTR_ShootTraverse']
fn ptr_shoot_traverse(in_ &Intercept_t) bool {
	x := 0
	y := 0
	z := 0
	frac := 0
	li := &Line_t(0)
	th := &Mobj_t(0)
	slope := 0
	dist := 0
	thingtopslope := 0
	thingbottomslope := 0
	if in_.isaline {
		li = in_.d.line
		if li.special {
			p_shoot_special_line(shootthing, li)
		}
		if !(li.flags & 4) {
			unsafe {
				goto hitline
			} // id: 0xb57a40
		}
		// crosses a two sided line
		p_line_opening(li)
		dist = fixed_mul(attackrange, in_.frac)
		// e6y: emulation of missed back side on two-sided lines.
		// backsector can be NULL when emulating missing back side.
		if li.backsector == (unsafe { nil }) {
			slope = fixed_div(openbottom - shootz, dist)
			if slope > aimslope {
				unsafe {
					goto hitline
				} // id: 0xb57a40
			}
			slope = fixed_div(opentop - shootz, dist)
			if slope < aimslope {
				unsafe {
					goto hitline
				} // id: 0xb57a40
			}
		} else {
			if li.frontsector.floorheight != li.backsector.floorheight {
				slope = fixed_div(openbottom - shootz, dist)
				if slope > aimslope {
					unsafe {
						goto hitline
					} // id: 0xb57a40
				}
			}
			if li.frontsector.ceilingheight != li.backsector.ceilingheight {
				slope = fixed_div(opentop - shootz, dist)
				if slope < aimslope {
					unsafe {
						goto hitline
					} // id: 0xb57a40
				}
			}
		}
		// shot continues
		return true
		// hit line
		// RRRREG hitline id=0xb57a40
		hitline:
		// position a bit closer
		frac = in_.frac - fixed_div(4 * (1 << 16), attackrange)
		x = trace.x + fixed_mul(trace.dx, frac)
		y = trace.y + fixed_mul(trace.dy, frac)
		z = shootz + fixed_mul(aimslope, fixed_mul(frac, attackrange))
		if li.frontsector.ceilingpic == skyflatnum {
			// don't shoot the sky!
			if z > li.frontsector.ceilingheight {
				return false
			}
			// it's a sky hack wall
			if li.backsector && li.backsector.ceilingpic == skyflatnum {
				return false
			}
		}
		// Spawn bullet puffs.
		p_spawn_puff(x, y, z)
		// don't go any farther
		return false
	}
	// shoot a thing
	th = in_.d.thing
	if th == shootthing {
		return true
	}
	// can't shoot self
	if !(th.flags & Mobjflag_t.mf_shootable) {
		return true
	}
	// corpse or something
	// check angles to see if the thing can be aimed at
	dist = fixed_mul(attackrange, in_.frac)
	thingtopslope = fixed_div(th.z + th.height - shootz, dist)
	if thingtopslope < aimslope {
		return true
	}
	// shot over the thing
	thingbottomslope = fixed_div(th.z - shootz, dist)
	if thingbottomslope > aimslope {
		return true
	}
	// shot under the thing
	// hit thing
	// position a bit closer
	frac = in_.frac - fixed_div(10 * (1 << 16), attackrange)
	x = trace.x + fixed_mul(trace.dx, frac)
	y = trace.y + fixed_mul(trace.dy, frac)
	z = shootz + fixed_mul(aimslope, fixed_mul(frac, attackrange))
	// Spawn bullet puffs or blod spots,
	// depending on target type.
	if in_.d.thing.flags & Mobjflag_t.mf_noblood {
		p_spawn_puff(x, y, z)
	} else { // 3
		p_spawn_blood(x, y, z, la_damage)
	}
	if la_damage {
		p_damage_mobj(th, shootthing, shootthing, la_damage)
	}
	// don't go any farther
	return false
}

//
// P_AimLineAttack
//
@[c: 'P_AimLineAttack']
fn p_aim_line_attack(t1 &Mobj_t, angle Angle_t, distance int) int {
	x2 := 0
	y2 := 0
	t1 = p_subst_null_mobj(t1)
	angle >>= 19
	shootthing = t1
	x2 = t1.x + (distance >> 16) * finecosine[angle]
	y2 = t1.y + (distance >> 16) * finesine[angle]
	shootz = t1.z + (t1.height >> 1) + 8 * (1 << 16)
	// can't shoot outside view angles
	topslope = (200 / 2) * (1 << 16) / (320 / 2)
	bottomslope = -(200 / 2) * (1 << 16) / (320 / 2)
	attackrange = distance
	linetarget = (unsafe { nil })
	p_path_traverse(t1.x, t1.y, x2, y2, 1 | 2, ptr_aim_traverse)
	if linetarget {
		return aimslope
	}
	return 0
}

//
// P_LineAttack
// If damage == 0, it is just a test trace
// that will leave linetarget set.
//
@[c: 'P_LineAttack']
fn p_line_attack(t1 &Mobj_t, angle Angle_t, distance int, slope int, damage int) {
	x2 := 0
	y2 := 0
	angle >>= 19
	shootthing = t1
	la_damage = damage
	x2 = t1.x + (distance >> 16) * finecosine[angle]
	y2 = t1.y + (distance >> 16) * finesine[angle]
	shootz = t1.z + (t1.height >> 1) + 8 * (1 << 16)
	attackrange = distance
	aimslope = slope
	p_path_traverse(t1.x, t1.y, x2, y2, 1 | 2, ptr_shoot_traverse)
}

//
// USE LINES
//
@[c: 'PTR_UseTraverse']
fn ptr_use_traverse(in_ &Intercept_t) bool {
	side := 0
	if !in_.d.line.special {
		p_line_opening(in_.d.line)
		if openrange <= 0 {
			s_start_sound(usething, Sfxenum_t.sfx_noway)
			// can't use through a wall
			return false
		}
		// not a special line, but keep checking
		return true
	}
	side = 0
	if p_point_on_line_side(usething.x, usething.y, in_.d.line) == 1 {
		side = 1
	}
	//	return false;		// don't use back side
	p_use_special_line(usething, in_.d.line, side)
	// can't use for than one special line in a row
	return false
}

//
// P_UseLines
// Looks for special lines in front of the player to activate.
//
@[c: 'P_UseLines']
fn p_use_lines(player &Player_t) {
	angle := 0
	x1 := 0
	y1 := 0
	x2 := 0
	y2 := 0
	usething = player.mo
	angle = player.mo.angle >> 19
	x1 = player.mo.x
	y1 = player.mo.y
	x2 = x1 + ((64 * (1 << 16)) >> 16) * finecosine[angle]
	y2 = y1 + ((64 * (1 << 16)) >> 16) * finesine[angle]
	p_path_traverse(x1, y1, x2, y2, 1, ptr_use_traverse)
}

//
// RADIUS ATTACK
//
//
// PIT_RadiusAttack
// "bombsource" is the creature
// that caused the explosion at "bombspot".
//
@[c: 'PIT_RadiusAttack']
fn pit_radius_attack(thing &Mobj_t) bool {
	dx := 0
	dy := 0
	dist := 0
	if !(thing.flags & Mobjflag_t.mf_shootable) {
		return true
	}
	// Boss spider and cyborg
	// take no damage from concussion.
	if thing.type_ == Mobjtype_t.mt_cyborg || thing.type_ == Mobjtype_t.mt_spider {
		return true
	}
	dx = C.abs(thing.x - bombspot.x)
	dy = C.abs(thing.y - bombspot.y)
	dist = if dx > dy { dx } else { dy }
	dist = (dist - thing.radius) >> 16
	if dist < 0 {
		dist = 0
	}
	if dist >= bombdamage {
		return true
	}
	// out of range
	if p_check_sight(thing, bombspot) {
		// must be in direct path
		p_damage_mobj(thing, bombspot, bombsource, bombdamage - dist)
	}
	return true
}

//
// P_RadiusAttack
// Source is the creature that caused the explosion at spot.
//
@[c: 'P_RadiusAttack']
fn p_radius_attack(spot &Mobj_t, source &Mobj_t, damage int) {
	x := 0
	y := 0
	xl := 0
	xh := 0
	yl := 0
	yh := 0
	dist := 0
	dist = (damage + 32 * (1 << 16)) << 16
	yh = (spot.y + dist - bmaporgy) >> (16 + 7)
	yl = (spot.y - dist - bmaporgy) >> (16 + 7)
	xh = (spot.x + dist - bmaporgx) >> (16 + 7)
	xl = (spot.x - dist - bmaporgx) >> (16 + 7)
	bombspot = spot
	bombsource = source
	bombdamage = damage
	for y = yl; y <= yh; y++ {
		for x = xl; x <= xh; x++ {
			p_block_things_iterator(x, y, pit_radius_attack)
		}
	}
}

//
// SECTOR HEIGHT CHANGING
// After modifying a sectors floor or ceiling height,
// call this routine to adjust the positions
// of all things that touch the sector.
//
// If anything doesn't fit anymore, true will be returned.
// If crunch is true, they will take damage
//  as they are being crushed.
// If Crunch is false, you should set the sector height back
//  the way it was and call P_ChangeSector again
//  to undo the changes.
//
//
// PIT_ChangeSector
//
@[c: 'PIT_ChangeSector']
fn pit_change_sector(thing &Mobj_t) bool {
	mo := &Mobj_t(0)
	if p_thing_height_clip(thing) {
		// keep checking
		return true
	}
	// crunch bodies to giblets
	if thing.health <= 0 {
		p_set_mobj_state(thing, Statenum_t.s_gibs)
		if gameversion > GameVersion_t.exe_doom_1_2 {
			thing.flags &= ~Mobjflag_t.mf_solid
		}
		thing.height = 0
		thing.radius = 0
		// keep checking
		return true
	}
	// crunch dropped items
	if thing.flags & Mobjflag_t.mf_dropped {
		p_remove_mobj(thing)
		// keep checking
		return true
	}
	if !(thing.flags & Mobjflag_t.mf_shootable) {
		// assume it is bloody gibs or something
		return true
	}
	nofit = true
	if crushchange && !(leveltime & 3) {
		p_damage_mobj(thing, (unsafe { nil }), (unsafe { nil }), 10)
		// spray blood in a random direction
		mo = p_spawn_mobj(thing.x, thing.y, thing.z + thing.height / 2, Mobjtype_t.mt_blood)
		mo.momx = p_sub_random() << 12
		mo.momy = p_sub_random() << 12
	}
	// keep checking (crush other things)	
	return true
}

//
// P_ChangeSector
//
@[c: 'P_ChangeSector']
fn p_change_sector(sector &Sector_t, crunch bool) bool {
	x := 0
	y := 0
	nofit = false
	crushchange = crunch
	// re-check heights for all things near the moving sector
	for x = sector.blockbox[int(boxleft)]; x <= sector.blockbox[int(boxright)]; x++ {
		for y = sector.blockbox[int(boxbottom)]; y <= sector.blockbox[int(boxtop)]; y++ {
			p_block_things_iterator(x, y, pit_change_sector)
		}
	}
	return nofit
}

// Code to emulate the behavior of Vanilla Doom when encountering an overrun
// of the spechit array.  This is by Andrey Budko (e6y) and comes from his
// PrBoom plus port.  A big thanks to Andrey for this.
@[c: 'SpechitOverrun']
fn spechit_overrun(ld &Line_t) {
	baseaddr := 0
	addr := u32(0)
	if baseaddr == 0 {
		p := 0
		// This is the first time we have had an overrun.  Work out
		// what base address we are going to use.
		// Allow a spechit value to be specified on the command line.
		//!
		// @category compat
		// @arg <n>
		//
		// Use the specified magic value when emulating spechit overruns.
		//
		p = m_check_parm_with_args(c'-spechit', 1)
		if p > 0 {
			m_str_to_int(myargv[p + 1], &int(&baseaddr))
		} else {
			baseaddr = 29400216
		}
	}
	// Calculate address used in doom2.exe
	addr = baseaddr + (ld - lines) * 62
	match numspechit {
		9, 10, 11, 12 {
			tmbbox[numspechit - 9] = addr
		}
		13 { // case comp body kind=BinaryOperator is_enum=false
			crushchange = addr
		}
		14 { // case comp body kind=BinaryOperator is_enum=false
			nofit = addr
		}
		else {
			C.fprintf(C.stderr, c'SpechitOverrun: Warning: unable to emulatean overrun where numspechit=%i\n',
				numspechit)
		}
	}
}
