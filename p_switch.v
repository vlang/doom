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
enum Evtype_t {
	// Key press/release events.
	//    data1: Key code (from doomkeys.h) of the key that was
	//           pressed or released. This is the key as it appears
	//           on a US keyboard layout, and does not change with
	//           layout.
	// For ev_keydown only:
	//    data2: ASCII representation of the key that was pressed that
	//           changes with the keyboard layout; eg. if 'Z' is
	//           pressed on a German keyboard, data1='y',data2='z'.
	//           Not affected by modifier keys.
	//    data3: ASCII input, fully modified according to keyboard
	//           layout and any modifier keys that are held down.
	//           Only set if I_StartTextInput() has been called.
	ev_keydown
	ev_keyup
	// Mouse movement event.
	//    data1: Bitfield of buttons currently held down.
	//           (bit 0 = left; bit 1 = right; bit 2 = middle).
	//    data2: X axis mouse movement (turn).
	//    data3: Y axis mouse movement (forward/backward).
	ev_mouse
	// Joystick state.
	//    data1: Bitfield of buttons currently pressed.
	//    data2: X axis mouse movement (turn).
	//    data3: Y axis mouse movement (forward/backward).
	//    data4: Third axis mouse movement (strafe).
	//    data5: Fourth axis mouse movement (look)
	ev_joystick
	// Quit event. Triggered when the user clicks the "close" button
	// to terminate the application.
	ev_quit
}

// Event structure.
struct Event_t {
	type_ Evtype_t
	// Event-specific data; see the descriptions given above.
	data1 int
	data2 int
	data3 int
	data4 int
	data5 int
}

//
// Button/action code definitions.
//
enum Buttoncode_t {
	// Press "Fire".
	bt_attack      = 1
	// Use button, to open doors, activate switches.
	bt_use         = 2
	// Flag: game events, not really buttons.
	bt_special     = 128
	bt_specialmask = 3
	// Flag, weapon change pending.
	// If true, the next 3 bits hold weapon num.
	bt_change      = 4
	// The 3bit weapon mask and shift, convenience.
	bt_weaponmask  = 8 + 16 + 32
	bt_weaponshift = 3
	// Pause the game.
	bts_pause      = 1
	// Save the game at each console.
	bts_savegame   = 2
	// Savegame slot numbers
	//  occupy the second byte of buttons.
	bts_savemask   = 4 + 8 + 16
	bts_saveshift  = 2
}

// villsa [STRIFE] Strife specific buttons
// TODO - not finished
enum Buttoncode2_t {
	// Player view look up
	bt_2_lookup     = 1
	// Player view look down
	bt_2_lookdown   = 2
	// Center player's view
	bt_2_centerview = 4
	// Use inventory item
	bt_2_invuse     = 8
	// Drop inventory item
	bt_2_invdrop    = 16
	// Jump up and down
	bt_2_jump       = 32
	// Use medkit
	bt_2_health     = 128
}

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
type Atexit_func_t = fn ()

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
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
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
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
// needed for pre rendering (fracs)
// for global animation
// Sprite....
//
// Lookup tables for map data.
//
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
type Drawfunc_t = fn (int, int)

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
type Planefunction_t = fn (int, int)

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
//
// P_ENEMY
//
//
// P_MAPUTL
//
struct Divline_t {
	x  int
	y  int
	dx int
	dy int
}

union Ddunion {
	thing &Mobj_t
	line  &Line_t
	a     int
}

struct Intercept_t {
	frac int
	// along trace line
	isaline bool
	// XTODO
	//    union {
	//	mobj_t*thing;
	//	line_t*line;
	//    }			d;
	//	
	d Ddunion
}

// Extended MAXINTERCEPTS, to allow for intercepts overrun emulation.
type Traverser_t = fn (&Intercept_t) bool

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
// for fast sight rejection
// offsets in blockmap are from here
// in mapblocks
// origin of block map
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
@[c: 'P_UseSpecialLine']
fn p_use_special_line(thing &Mobj_t, line &Line_t, side int) bool

//
// SPECIAL
//
@[c: 'EV_DoDonut']
fn ev_do_donut(line &Line_t) int

//
// P_LIGHTS
//
struct Fireflicker_t {
	thinker  Thinker_t
	sector   &Sector_t
	count    int
	maxlight int
	minlight int
}

struct Lightflash_t {
	thinker  Thinker_t
	sector   &Sector_t
	count    int
	maxlight int
	minlight int
	maxtime  int
	mintime  int
}

struct Strobe_t {
	thinker    Thinker_t
	sector     &Sector_t
	count      int
	minlight   int
	maxlight   int
	darktime   int
	brighttime int
}

struct Glow_t {
	thinker   Thinker_t
	sector    &Sector_t
	minlight  int
	maxlight  int
	direction int
}

@[c: 'EV_LightTurnOn']
fn ev_light_turn_on(line &Line_t, bright int)

//
// P_SWITCH
//
struct Switchlist_t {
	name1   [9]i8
	name2   [9]i8
	episode i16
}

enum Bwhere_e {
	top
	middle
	bottom
}

struct Button_t {
	line     &Line_t
	where    Bwhere_e
	btexture int
	btimer   int
	soundorg &Degenmobj_t
}

// max # of wall switches in a level
// 4 players, 4 buttons each at once, max.
// 1 second, in ticks.
@[c: 'P_ChangeSwitchTexture']
fn p_change_switch_texture(line &Line_t, use_again int)

@[c: 'P_InitSwitchList']
fn p_init_switch_list()

//
// P_PLATS
//
enum Plat_e {
	up
	down
	waiting
	in_stasis
}

enum Plattype_e {
	perpetual_raise
	down_wait_up_stay
	raise_and_change
	raise_to_nearest_and_change
	blaze_dwus
}

struct Plat_t {
	thinker   Thinker_t
	sector    &Sector_t
	speed     int
	low       int
	high      int
	wait      int
	count     int
	status    Plat_e
	oldstatus Plat_e
	crush     bool
	tag       int
	type_     Plattype_e
}

@[c: 'EV_DoPlat']
fn ev_do_plat(line &Line_t, type_ Plattype_e, amount int) int

//
// P_DOORS
//
enum Vldoor_e {
	vld_normal
	vld_close30_then_open
	vld_close
	vld_open
	vld_raise_in5_mins
	vld_blaze_raise
	vld_blaze_open
	vld_blaze_close
}

struct Vldoor_t {
	thinker   Thinker_t
	type_     Vldoor_e
	sector    &Sector_t
	topheight int
	speed     int
	// 1 = up, 0 = waiting at top, -1 = down
	direction int
	// tics to wait at the top
	topwait int
	// (keep in case a door going down is reset)
	// when it reaches 0, start going down
	topcountdown int
}

@[c: 'EV_VerticalDoor']
fn ev_vertical_door(line &Line_t, thing &Mobj_t)

@[c: 'EV_DoDoor']
fn ev_do_door(line &Line_t, type_ Vldoor_e) int

@[c: 'EV_DoLockedDoor']
fn ev_do_locked_door(line &Line_t, type_ Vldoor_e, thing &Mobj_t) int

// UNUSED
//
//      Sliding doors...
//
// how many frames of animation
// how many diff. types of anims
//
// P_CEILNG
//
enum Ceiling_e {
	lower_to_floor
	raise_to_highest
	lower_and_crush
	crush_and_raise
	fast_crush_and_raise
	silent_crush_and_raise
}

struct Ceiling_t {
	thinker      Thinker_t
	type_        Ceiling_e
	sector       &Sector_t
	bottomheight int
	topheight    int
	speed        int
	crush        bool
	// 1 = up, 0 = waiting, -1 = down
	direction int
	// ID
	tag          int
	olddirection int
}

@[c: 'EV_DoCeiling']
fn ev_do_ceiling(line &Line_t, type_ Ceiling_e) int

//
// P_FLOOR
//
enum Floor_e {
	// lower floor to highest surrounding floor
	lower_floor
	// lower floor to lowest surrounding floor
	lower_floor_to_lowest
	// lower floor to highest surrounding floor VERY FAST
	turbo_lower
	// raise floor to lowest surrounding CEILING
	raise_floor
	// raise floor to next highest surrounding floor
	raise_floor_to_nearest
	// raise floor to shortest height texture around it
	raise_to_texture
	// lower floor to lowest surrounding floor
	//  and change floorpic
	lower_and_change
	raise_floor24
	raise_floor24_and_change
	raise_floor_crush
	// raise to next highest floor, turbo-speed
	raise_floor_turbo
	donut_raise
	raise_floor512
}

enum Stair_e {
	build8
	// slowly build by 8
	turbo16
	// quickly build by 16
}

struct Floormove_t {
	thinker         Thinker_t
	type_           Floor_e
	crush           bool
	sector          &Sector_t
	direction       int
	newspecial      int
	texture         i16
	floordestheight int
	speed           int
}

enum Result_e {
	ok
	crushed
	pastdest
}

@[c: 'EV_BuildStairs']
fn ev_build_stairs(line &Line_t, type_ Stair_e) int

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
type Sfxinfo_t = Sfxinfo_struct

struct Sfxinfo_struct {
	// tag name, used for hexen.
	tagname &i8
	// lump name.  If we are running with use_sfx_prefix=true, a
	// 'DS' (or 'DP' for PC speaker sounds) is prepended to this.
	name [9]i8
	// Sfx priority
	priority int
	// referenced sound if a link
	link &Sfxinfo_t
	// pitch if a link (Doom), whether to pitch-shift (Hexen)
	pitch int
	// volume if a link
	volume int
	// this is checked every second to see if sound
	// can be thrown out (if 0, then decrement, if -1,
	// then throw out, if > 0, then it is in use)
	usefulness int
	// lump number of sfx
	lumpnum int
	// Maximum number of channels that the sound can be played on
	// (Heretic)
	numchannels int
	// data used by the low level code
	driver_data voidptr
}

//
// MusicInfo struct.
//
struct Musicinfo_t {
	// up to 6-character name
	name &i8
	// lump number of music
	lumpnum int
	// music data
	data voidptr
	// music handle once registered
	handle voidptr
}

enum Snddevice_t {
	snddevice_none        = 0
	snddevice_pcspeaker   = 1
	snddevice_adlib       = 2
	snddevice_sb          = 3
	snddevice_pas         = 4
	snddevice_gus         = 5
	snddevice_waveblaster = 6
	snddevice_soundcanvas = 7
	snddevice_genmidi     = 8
	snddevice_awe_32      = 9
	snddevice_cd          = 10
}

// Interface for sound modules
struct Sound_module_t {
	// List of sound devices that this sound module is used for.
	sound_devices     &Snddevice_t
	num_sound_devices int
	// Initialise sound module
	// Returns true if successfully initialised
	init fn (bool) bool
	// Shutdown sound module
	shutdown fn ()
	// Returns the lump index of the given sound.
	getSfxLumpNum fn (&Sfxinfo_t) int
	// Called periodically to update the subsystem.
	update fn ()
	// Update the sound settings on the given channel.
	updateSoundParams fn (int, int, int)
	// Start a sound on a given channel.  Returns the channel id
	// or -1 on failure.
	startSound fn (&Sfxinfo_t, int, int, int, int) int
	// Stop the sound playing on the given channel.
	stopSound fn (int)
	// Query if a sound is playing on the given channel
	soundIsPlaying fn (int) bool
	// Called on startup to precache sound effects (if necessary)
	cacheSounds fn (&Sfxinfo_t, int)
}

// Interface for music modules
struct Music_module_t {
	// List of sound devices that this music module is used for.
	sound_devices     &Snddevice_t
	num_sound_devices int
	// Initialise the music subsystem
	init fn () bool
	// Shutdown the music subsystem
	shutdown fn ()
	// Set music volume - range 0-127
	setMusicVolume fn (int)
	// Pause music
	pauseMusic fn ()
	// Un-pause music
	resumeMusic fn ()
	// Register a song handle from data
	// Returns a handle that can be used to play the song
	registerSong fn (voidptr, int) voidptr
	// Un-register (free) song data
	unRegisterSong fn (voidptr)
	// Play the song
	playSong fn (voidptr, bool)
	// Stop playing the current song.
	stopSong fn ()
	// Query if music is playing.
	musicIsPlaying fn () bool
	// Invoked periodically to poll.
	poll fn ()
}

// DMX version to emulate for OPL emulation:
enum Opl_driver_ver_t {
	opl_doom1_1_666
	// Doom 1 v1.666
	opl_doom2_1_666
	// Doom 2 v1.666, Hexen, Heretic
	opl_doom_1_9
	// Doom v1.9, Strife
}

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
enum Musicenum_t {
	mus_none
	mus_e1m1
	mus_e1m2
	mus_e1m3
	mus_e1m4
	mus_e1m5
	mus_e1m6
	mus_e1m7
	mus_e1m8
	mus_e1m9
	mus_e2m1
	mus_e2m2
	mus_e2m3
	mus_e2m4
	mus_e2m5
	mus_e2m6
	mus_e2m7
	mus_e2m8
	mus_e2m9
	mus_e3m1
	mus_e3m2
	mus_e3m3
	mus_e3m4
	mus_e3m5
	mus_e3m6
	mus_e3m7
	mus_e3m8
	mus_e3m9
	mus_inter
	mus_intro
	mus_bunny
	mus_victor
	mus_introa
	mus_runnin
	mus_stalks
	mus_countd
	mus_betwee
	mus_doom
	mus_the_da
	mus_shawn
	mus_ddtblu
	mus_in_cit
	mus_dead
	mus_stlks2
	mus_theda2
	mus_doom2
	mus_ddtbl2
	mus_runni2
	mus_dead2
	mus_stlks3
	mus_romero
	mus_shawn2
	mus_messag
	mus_count2
	mus_ddtbl3
	mus_ampie
	mus_theda3
	mus_adrian
	mus_messg2
	mus_romer2
	mus_tense
	mus_shawn3
	mus_openin
	mus_evil
	mus_ultima
	mus_read_m
	mus_dm2ttl
	mus_dm2int
	nummusic
}

//
// Identifiers for all sfx in game.
//
enum Sfxenum_t {
	sfx_none
	sfx_pistol
	sfx_shotgn
	sfx_sgcock
	sfx_dshtgn
	sfx_dbopn
	sfx_dbcls
	sfx_dbload
	sfx_plasma
	sfx_bfg
	sfx_sawup
	sfx_sawidl
	sfx_sawful
	sfx_sawhit
	sfx_rlaunc
	sfx_rxplod
	sfx_firsht
	sfx_firxpl
	sfx_pstart
	sfx_pstop
	sfx_doropn
	sfx_dorcls
	sfx_stnmov
	sfx_swtchn
	sfx_swtchx
	sfx_plpain
	sfx_dmpain
	sfx_popain
	sfx_vipain
	sfx_mnpain
	sfx_pepain
	sfx_slop
	sfx_itemup
	sfx_wpnup
	sfx_oof
	sfx_telept
	sfx_posit1
	sfx_posit2
	sfx_posit3
	sfx_bgsit1
	sfx_bgsit2
	sfx_sgtsit
	sfx_cacsit
	sfx_brssit
	sfx_cybsit
	sfx_spisit
	sfx_bspsit
	sfx_kntsit
	sfx_vilsit
	sfx_mansit
	sfx_pesit
	sfx_sklatk
	sfx_sgtatk
	sfx_skepch
	sfx_vilatk
	sfx_claw
	sfx_skeswg
	sfx_pldeth
	sfx_pdiehi
	sfx_podth1
	sfx_podth2
	sfx_podth3
	sfx_bgdth1
	sfx_bgdth2
	sfx_sgtdth
	sfx_cacdth
	sfx_skldth
	sfx_brsdth
	sfx_cybdth
	sfx_spidth
	sfx_bspdth
	sfx_vildth
	sfx_kntdth
	sfx_pedth
	sfx_skedth
	sfx_posact
	sfx_bgact
	sfx_dmact
	sfx_bspact
	sfx_bspwlk
	sfx_vilact
	sfx_noway
	sfx_barexp
	sfx_punch
	sfx_hoof
	sfx_metal
	sfx_chgun
	sfx_tink
	sfx_bdopn
	sfx_bdcls
	sfx_itmbk
	sfx_flame
	sfx_flamst
	sfx_getpow
	sfx_bospit
	sfx_boscub
	sfx_bossit
	sfx_bospn
	sfx_bosdth
	sfx_manatk
	sfx_mandth
	sfx_sssit
	sfx_ssdth
	sfx_keenpn
	sfx_keendt
	sfx_skeact
	sfx_skesit
	sfx_skeatk
	sfx_radio
	numsfx
}

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
type Netgame_startup_callback_t = fn (int, int) bool

struct Loop_interface_t {
	// Read events from the event queue, and process them.
	processEvents fn ()
	// Given the current input state, fill in the fields of the specified
	// ticcmd_t structure with data for a new tic.
	buildTiccmd fn (&Ticcmd_t, int)
	// Advance the game forward one tic, using the specified player input.
	runTic fn (&Ticcmd_t, &bool)
	// Run the menu (runs independently of the game).
	runMenu fn ()
}

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
// checkparm of -nomonsters
// checkparm of -respawn
// checkparm of -fast
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
// Savegame slot to load on startup.  This is the value provided to
// the -loadgame option.  If this has not been provided, this is -1.
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
// Player spawn spots.
// Intermission stats.
// Parameters for world map / intermission.
//-----------------------------------------
// Internal parameters, used for engine.
//
// File handling stuff.
// if true, load all graphics at level load
// wipegamestate can be set to -1
//  to force a wipe on the next draw
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
//	Switches, buttons. Two-state animation. Exits.
//
// Data.
// State.
//
// CHANGE THE TEXTURE OF A WALL SWITCH TO ITS OPPOSITE
//
//
// P_InitSwitchList
// Only called at game initialization.
//
@[c: 'P_InitSwitchList']
fn p_init_switch_list() {
	i := 0
	slindex := 0
	episode := 0

	// Note that this is called "episode" here but it's actually something
	// quite different. As we progress from Shareware->Registered->Doom II
	// we support more switch textures.
	match gamemode {
		.registered, .retail {
			episode = 2
		}
		.commercial { // case comp body kind=BinaryOperator is_enum=true
			episode = 3
		}
		else {
			episode = 1
		}
	}
	slindex = 0
	for i = 0; i < (sizeof(alphSwitchList) / sizeof(*alphSwitchList)); i++ {
		if alphSwitchList[i].episode <= episode {
			switchlist[slindex++] = r_texture_num_for_name(deh_string(alphSwitchList[i].name1))
			switchlist[slindex++] = r_texture_num_for_name(deh_string(alphSwitchList[i].name2))
		}
	}
	numswitches = slindex / 2
	switchlist[slindex] = -1
}

//
// Start a button counting down till it turns off.
//
@[c: 'P_StartButton']
fn p_start_button(line &Line_t, w Bwhere_e, texture int, time int) {
	i := 0
	// See if button is already pressed
	for i = 0; i < 16; i++ {
		if buttonlist[i].btimer && buttonlist[i].line == line {
			return
		}
	}
	for i = 0; i < 16; i++ {
		if !buttonlist[i].btimer {
			buttonlist[i].line = line
			buttonlist[i].where = w
			buttonlist[i].btexture = texture
			buttonlist[i].btimer = time
			buttonlist[i].soundorg = &line.frontsector.soundorg
			return
		}
	}
	i_error(c'P_StartButton: no button slots left!')
}

//
// Function that changes wall texture.
// Tell it if switch is ok to use again (1=yes, it's a button).
//
@[c: 'P_ChangeSwitchTexture']
fn p_change_switch_texture(line &Line_t, use_again int) {
	tex_top := 0
	tex_mid := 0
	tex_bot := 0
	i := 0
	sound := 0
	if !use_again {
		line.special = 0
	}
	tex_top = sides[line.sidenum[0]].toptexture
	tex_mid = sides[line.sidenum[0]].midtexture
	tex_bot = sides[line.sidenum[0]].bottomtexture
	sound = Sfxenum_t.sfx_swtchn
	// EXIT SWITCH?
	if line.special == 11 {
		sound = Sfxenum_t.sfx_swtchx
	}
	for i = 0; i < numswitches * 2; i++ {
		if switchlist[i] == tex_top {
			s_start_sound(buttonlist[0].soundorg, sound)
			sides[line.sidenum[0]].toptexture = switchlist[i ^ 1]
			if use_again {
				p_start_button(line, Bwhere_e.top, switchlist[i], 35)
			}
			return
		} else {
			if switchlist[i] == tex_mid {
				s_start_sound(buttonlist[0].soundorg, sound)
				sides[line.sidenum[0]].midtexture = switchlist[i ^ 1]
				if use_again {
					p_start_button(line, Bwhere_e.middle, switchlist[i], 35)
				}
				return
			} else {
				if switchlist[i] == tex_bot {
					s_start_sound(buttonlist[0].soundorg, sound)
					sides[line.sidenum[0]].bottomtexture = switchlist[i ^ 1]
					if use_again {
						p_start_button(line, Bwhere_e.bottom, switchlist[i], 35)
					}
					return
				}
			}
		}
	}
}

//
// P_UseSpecialLine
// Called when a thing uses a special line.
// Only the front sides of lines are usable.
//
@[c: 'P_UseSpecialLine']
fn p_use_special_line(thing &Mobj_t, line &Line_t, side int) bool {
	// Err...
	// Use the back sides of VERY SPECIAL lines...
	if side {
		match line.special {
			124 { // case comp body kind=BreakStmt is_enum=true
				// Sliding door open&close
				// UNUSED?
			}
			else {
				return false
			}
		}
	}
	// Switches that other things can activate.
	if !thing.player {
		// never open secret doors
		if line.flags & 32 {
			return false
		}
		match line.special {
			1, 32, 33, 34 {
				// MANUAL YELLOW
			}
			else {
				return false
			}
		}
	}
	// do something
	match line.special {
		// MANUALS
		1, 26, 27, 28, 31, 32, 33, 34, 117, 118 {
			// Blazing door open
			ev_vertical_door(line, thing)

			// UNUSED - Door Slide Open&Close
			// case 124:
			// EV_SlidingDoor (line, thing);
			// break;
			// SWITCHES
		}
		7 { // case comp body kind=IfStmt is_enum=true
			// Build Stairs
			if ev_build_stairs(line, Stair_e.build8) {
				p_change_switch_texture(line, 0)
			}
		}
		9 { // case comp body kind=IfStmt is_enum=true
			// Change Donut
			if ev_do_donut(line) {
				p_change_switch_texture(line, 0)
			}
		}
		11 { // case comp body kind=CallExpr is_enum=true
			// Exit level
			p_change_switch_texture(line, 0)
			g_exit_level()
		}
		14 { // case comp body kind=IfStmt is_enum=true
			// Raise Floor 32 and change texture
			if ev_do_plat(line, Plattype_e.raise_and_change, 32) {
				p_change_switch_texture(line, 0)
			}
		}
		15 { // case comp body kind=IfStmt is_enum=true
			// Raise Floor 24 and change texture
			if ev_do_plat(line, Plattype_e.raise_and_change, 24) {
				p_change_switch_texture(line, 0)
			}
		}
		18 { // case comp body kind=IfStmt is_enum=true
			// Raise Floor to next highest floor
			if ev_do_floor(line, Floor_e.raise_floor_to_nearest) {
				p_change_switch_texture(line, 0)
			}
		}
		20 { // case comp body kind=IfStmt is_enum=true
			// Raise Plat next highest floor and change texture
			if ev_do_plat(line, Plattype_e.raise_to_nearest_and_change, 0) {
				p_change_switch_texture(line, 0)
			}
		}
		21 { // case comp body kind=IfStmt is_enum=true
			// PlatDownWaitUpStay
			if ev_do_plat(line, Plattype_e.down_wait_up_stay, 0) {
				p_change_switch_texture(line, 0)
			}
		}
		23 { // case comp body kind=IfStmt is_enum=true
			// Lower Floor to Lowest
			if ev_do_floor(line, Floor_e.lower_floor_to_lowest) {
				p_change_switch_texture(line, 0)
			}
		}
		29 { // case comp body kind=IfStmt is_enum=true
			// Raise Door
			if ev_do_door(line, Vldoor_e.vld_normal) {
				p_change_switch_texture(line, 0)
			}
		}
		41 { // case comp body kind=IfStmt is_enum=true
			// Lower Ceiling to Floor
			if ev_do_ceiling(line, Ceiling_e.lower_to_floor) {
				p_change_switch_texture(line, 0)
			}
		}
		71 { // case comp body kind=IfStmt is_enum=true
			// Turbo Lower Floor
			if ev_do_floor(line, Floor_e.turbo_lower) {
				p_change_switch_texture(line, 0)
			}
		}
		49 { // case comp body kind=IfStmt is_enum=true
			// Ceiling Crush And Raise
			if ev_do_ceiling(line, Ceiling_e.crush_and_raise) {
				p_change_switch_texture(line, 0)
			}
		}
		50 { // case comp body kind=IfStmt is_enum=true
			// Close Door
			if ev_do_door(line, Vldoor_e.vld_close) {
				p_change_switch_texture(line, 0)
			}
		}
		51 { // case comp body kind=CallExpr is_enum=true
			// Secret EXIT
			p_change_switch_texture(line, 0)
			g_secret_exit_level()
		}
		55 { // case comp body kind=IfStmt is_enum=true
			// Raise Floor Crush
			if ev_do_floor(line, Floor_e.raise_floor_crush) {
				p_change_switch_texture(line, 0)
			}
		}
		101 { // case comp body kind=IfStmt is_enum=true
			// Raise Floor
			if ev_do_floor(line, Floor_e.raise_floor) {
				p_change_switch_texture(line, 0)
			}
		}
		102 { // case comp body kind=IfStmt is_enum=true
			// Lower Floor to Surrounding floor height
			if ev_do_floor(line, Floor_e.lower_floor) {
				p_change_switch_texture(line, 0)
			}
		}
		103 { // case comp body kind=IfStmt is_enum=true
			// Open Door
			if ev_do_door(line, Vldoor_e.vld_open) {
				p_change_switch_texture(line, 0)
			}
		}
		111 { // case comp body kind=IfStmt is_enum=true
			// Blazing Door Raise (faster than TURBO!)
			if ev_do_door(line, Vldoor_e.vld_blaze_raise) {
				p_change_switch_texture(line, 0)
			}
		}
		112 { // case comp body kind=IfStmt is_enum=true
			// Blazing Door Open (faster than TURBO!)
			if ev_do_door(line, Vldoor_e.vld_blaze_open) {
				p_change_switch_texture(line, 0)
			}
		}
		113 { // case comp body kind=IfStmt is_enum=true
			// Blazing Door Close (faster than TURBO!)
			if ev_do_door(line, Vldoor_e.vld_blaze_close) {
				p_change_switch_texture(line, 0)
			}
		}
		122 { // case comp body kind=IfStmt is_enum=true
			// Blazing PlatDownWaitUpStay
			if ev_do_plat(line, Plattype_e.blaze_dwus, 0) {
				p_change_switch_texture(line, 0)
			}
		}
		127 { // case comp body kind=IfStmt is_enum=true
			// Build Stairs Turbo 16
			if ev_build_stairs(line, Stair_e.turbo16) {
				p_change_switch_texture(line, 0)
			}
		}
		131 { // case comp body kind=IfStmt is_enum=true
			// Raise Floor Turbo
			if ev_do_floor(line, Floor_e.raise_floor_turbo) {
				p_change_switch_texture(line, 0)
			}
		}
		133, 135, 137 {
			// BlzOpenDoor YELLOW
			if ev_do_locked_door(line, Vldoor_e.vld_blaze_open, thing) {
				p_change_switch_texture(line, 0)
			}
		}
		140 { // case comp body kind=IfStmt is_enum=true
			// Raise Floor 512
			if ev_do_floor(line, Floor_e.raise_floor512) {
				p_change_switch_texture(line, 0)
			}

			// BUTTONS
		}
		42 { // case comp body kind=IfStmt is_enum=true
			// Close Door
			if ev_do_door(line, Vldoor_e.vld_close) {
				p_change_switch_texture(line, 1)
			}
		}
		43 { // case comp body kind=IfStmt is_enum=true
			// Lower Ceiling to Floor
			if ev_do_ceiling(line, Ceiling_e.lower_to_floor) {
				p_change_switch_texture(line, 1)
			}
		}
		45 { // case comp body kind=IfStmt is_enum=true
			// Lower Floor to Surrounding floor height
			if ev_do_floor(line, Floor_e.lower_floor) {
				p_change_switch_texture(line, 1)
			}
		}
		60 { // case comp body kind=IfStmt is_enum=true
			// Lower Floor to Lowest
			if ev_do_floor(line, Floor_e.lower_floor_to_lowest) {
				p_change_switch_texture(line, 1)
			}
		}
		61 { // case comp body kind=IfStmt is_enum=true
			// Open Door
			if ev_do_door(line, Vldoor_e.vld_open) {
				p_change_switch_texture(line, 1)
			}
		}
		62 { // case comp body kind=IfStmt is_enum=true
			// PlatDownWaitUpStay
			if ev_do_plat(line, Plattype_e.down_wait_up_stay, 1) {
				p_change_switch_texture(line, 1)
			}
		}
		63 { // case comp body kind=IfStmt is_enum=true
			// Raise Door
			if ev_do_door(line, Vldoor_e.vld_normal) {
				p_change_switch_texture(line, 1)
			}
		}
		64 { // case comp body kind=IfStmt is_enum=true
			// Raise Floor to ceiling
			if ev_do_floor(line, Floor_e.raise_floor) {
				p_change_switch_texture(line, 1)
			}
		}
		66 { // case comp body kind=IfStmt is_enum=true
			// Raise Floor 24 and change texture
			if ev_do_plat(line, Plattype_e.raise_and_change, 24) {
				p_change_switch_texture(line, 1)
			}
		}
		67 { // case comp body kind=IfStmt is_enum=true
			// Raise Floor 32 and change texture
			if ev_do_plat(line, Plattype_e.raise_and_change, 32) {
				p_change_switch_texture(line, 1)
			}
		}
		65 { // case comp body kind=IfStmt is_enum=true
			// Raise Floor Crush
			if ev_do_floor(line, Floor_e.raise_floor_crush) {
				p_change_switch_texture(line, 1)
			}
		}
		68 { // case comp body kind=IfStmt is_enum=true
			// Raise Plat to next highest floor and change texture
			if ev_do_plat(line, Plattype_e.raise_to_nearest_and_change, 0) {
				p_change_switch_texture(line, 1)
			}
		}
		69 { // case comp body kind=IfStmt is_enum=true
			// Raise Floor to next highest floor
			if ev_do_floor(line, Floor_e.raise_floor_to_nearest) {
				p_change_switch_texture(line, 1)
			}
		}
		70 { // case comp body kind=IfStmt is_enum=true
			// Turbo Lower Floor
			if ev_do_floor(line, Floor_e.turbo_lower) {
				p_change_switch_texture(line, 1)
			}
		}
		114 { // case comp body kind=IfStmt is_enum=true
			// Blazing Door Raise (faster than TURBO!)
			if ev_do_door(line, Vldoor_e.vld_blaze_raise) {
				p_change_switch_texture(line, 1)
			}
		}
		115 { // case comp body kind=IfStmt is_enum=true
			// Blazing Door Open (faster than TURBO!)
			if ev_do_door(line, Vldoor_e.vld_blaze_open) {
				p_change_switch_texture(line, 1)
			}
		}
		116 { // case comp body kind=IfStmt is_enum=true
			// Blazing Door Close (faster than TURBO!)
			if ev_do_door(line, Vldoor_e.vld_blaze_close) {
				p_change_switch_texture(line, 1)
			}
		}
		123 { // case comp body kind=IfStmt is_enum=true
			// Blazing PlatDownWaitUpStay
			if ev_do_plat(line, Plattype_e.blaze_dwus, 0) {
				p_change_switch_texture(line, 1)
			}
		}
		132 { // case comp body kind=IfStmt is_enum=true
			// Raise Floor Turbo
			if ev_do_floor(line, Floor_e.raise_floor_turbo) {
				p_change_switch_texture(line, 1)
			}
		}
		99, 134, 136 {
			// BlzOpenDoor YELLOW
			if ev_do_locked_door(line, Vldoor_e.vld_blaze_open, thing) {
				p_change_switch_texture(line, 1)
			}
		}
		138 { // case comp body kind=CallExpr is_enum=true
			// Light Turn On
			ev_light_turn_on(line, 255)
			p_change_switch_texture(line, 1)
		}
		139 { // case comp body kind=CallExpr is_enum=true
			// Light Turn Off
			ev_light_turn_on(line, 35)
			p_change_switch_texture(line, 1)
		}
		else {}
	}
	return true
}
