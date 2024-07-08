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
type Fixed_t = int

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
type Byte = u8
type Pixel_t = u8
type Dpixel_t = i16

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
enum GameMission_t {
	doom
	// Doom 1
	doom2
	// Doom 2
	pack_tnt
	// Final Doom: TNT: Evilution
	pack_plut
	// Final Doom: The Plutonia Experiment
	pack_chex
	// Chex Quest (modded doom)
	pack_hacx
	// Hacx (modded doom2)
	heretic
	// Heretic
	hexen
	// Hexen
	strife
	// Strife
	none_
}

// The "mode" allows more accurate specification of the game mode we are
// in: eg. shareware vs. registered.  So doom1.wad and doom.wad are the
// same mission, but a different mode.
enum GameMode_t {
	shareware
	// Doom/Heretic shareware
	registered
	// Doom/Heretic registered
	commercial
	// Doom II/Hexen
	retail
	// Ultimate Doom
	indetermined
	// Unknown.
}

// What version are we emulating?
enum GameVersion_t {
	exe_doom_1_2
	// Doom 1.2: shareware and registered
	exe_doom_1_666
	// Doom 1.666: for shareware, registered and commercial
	exe_doom_1_7
	// Doom 1.7/1.7a: "
	exe_doom_1_8
	// Doom 1.8: "
	exe_doom_1_9
	// Doom 1.9: "
	exe_hacx
	// Hacx
	exe_ultimate
	// Ultimate Doom (retail)
	exe_final
	// Final Doom
	exe_final2
	// Final Doom (alternate exe)
	exe_chex
	// Chex Quest executable (based on Final Doom)
	exe_heretic_1_3
	// Heretic 1.3
	exe_hexen_1_1
	// Hexen 1.1
	exe_strife_1_2
	// Strife v1.2
	exe_strife_1_31
	// Strife v1.31
}

// What IWAD variant are we using?
enum GameVariant_t {
	vanilla
	// Vanilla Doom
	freedoom
	// FreeDoom: Phase 1 + 2
	freedm
	// FreeDM
	bfgedition
	// Doom Classic (Doom 3: BFG Edition)
}

// Skill level.
enum Skill_t {
	sk_noitems   = -1
	// the "-skill 0" hack
	sk_baby      = 0
	sk_easy
	sk_medium
	sk_hard
	sk_nightmare
}

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
enum Gamestate_t {
	gs_level
	gs_intermission
	gs_finale
	gs_demoscreen
}

enum Gameaction_t {
	ga_nothing
	ga_loadlevel
	ga_newgame
	ga_loadgame
	ga_savegame
	ga_playdemo
	ga_completed
	ga_victory
	ga_worlddone
	ga_screenshot
}

//
// Difficulty/skill settings/filters.
//
// Skill flags.
// Deaf monsters/do not react to sound.
//
// Key cards.
//
enum Card_t {
	it_bluecard
	it_yellowcard
	it_redcard
	it_blueskull
	it_yellowskull
	it_redskull
	numcards
}

// The defined weapons,
//  including a marker indicating
//  user has not changed weapon.
enum Weapontype_t {
	wp_fist
	wp_pistol
	wp_shotgun
	wp_chaingun
	wp_missile
	wp_plasma
	wp_bfg
	wp_chainsaw
	wp_supershotgun
	numweapons
	// No pending weapon change.
	wp_nochange
}

// Ammunition types defined.
enum Ammotype_t {
	am_clip
	// Pistol / chaingun ammo.
	am_shell
	// Shotgun / double barreled shotgun.
	am_cell
	// Plasma rifle, BFG.
	am_misl
	// Missile launcher.
	numammo
	am_noammo
	// Unlimited for chainsaw / fist.	
}

// Power up artifacts.
enum Powertype_t {
	pw_invulnerability
	pw_strength
	pw_invisibility
	pw_ironfeet
	pw_allmap
	pw_infrared
	numpowers
}

//
// Power up durations,
//  how many seconds till expiration,
//  assuming TICRATE is 35 ticks/second.
//
enum Powerduration_t {
	invulntics = 30 * 35
	invistics  = 60 * 35
	infratics  = 120 * 35
	irontics   = 60 * 35
}

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
type Actionf_v = fn ()

type Actionf_p1 = fn (voidptr)

type Actionf_p2 = fn (voidptr, voidptr)

union Actionf_t {
	acv  Actionf_v
	acp1 Actionf_p1
	acp2 Actionf_p2
}

// Historically, "think_t" is yet another
//  function pointer to a routine to handle
//  an actor.
type Think_t = Actionf_t

// Doubly linked list of actors.
struct Thinker_t {
	prev     &Thinker_t
	next     &Thinker_t
	function Think_t
}

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
type Angle_t = u32

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

// empty enum
const ml_label = 0
const ml_things = 1
const ml_linedefs = 2
const ml_sidedefs = 3
const ml_vertexes = 4
const ml_segs = 5
const ml_ssectors = 6
const ml_nodes = 7
const ml_sectors = 8
const ml_reject = 9
const ml_blockmap = 10

// A single Vertex.
struct Mapvertex_t {
	x i16
	y i16
}

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
struct Mapsidedef_t {
	textureoffset i16
	rowoffset     i16
	toptexture    [8]i8
	bottomtexture [8]i8
	midtexture    [8]i8
	sector        i16
}

// A LineDef, as used for editing, and as input
// to the BSP builder.
struct Maplinedef_t {
	v1      i16
	v2      i16
	flags   i16
	special i16
	tag     i16
	sidenum [2]i16
}

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
struct Mapsector_t {
	floorheight   i16
	ceilingheight i16
	floorpic      [8]i8
	ceilingpic    [8]i8
	lightlevel    i16
	special       i16
	tag           i16
}

// SubSector, as generated by BSP.
struct Mapsubsector_t {
	numsegs  i16
	firstseg i16
}

// LineSeg, generated by splitting LineDefs
// using partition lines selected by BSP builder.
struct Mapseg_t {
	v1      i16
	v2      i16
	angle   i16
	linedef i16
	side    i16
	offset  i16
}

// BSP node structure.
// Indicate a leaf.
struct Mapnode_t {
	x        i16
	y        i16
	dx       i16
	dy       i16
	bbox     [2][4]i16
	children [2]u16
}

// Thing definition, position, orientation and type,
// plus skill/visibility flags and attributes.
struct Mapthing_t {
	x       i16
	y       i16
	angle   i16
	type_   i16
	options i16
}

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
enum Spritenum_t {
	spr_troo
	spr_shtg
	spr_pung
	spr_pisg
	spr_pisf
	spr_shtf
	spr_sht_2
	spr_chgg
	spr_chgf
	spr_misg
	spr_misf
	spr_sawg
	spr_plsg
	spr_plsf
	spr_bfgg
	spr_bfgf
	spr_blud
	spr_puff
	spr_bal_1
	spr_bal_2
	spr_plss
	spr_plse
	spr_misl
	spr_bfs_1
	spr_bfe_1
	spr_bfe_2
	spr_tfog
	spr_ifog
	spr_play
	spr_poss
	spr_spos
	spr_vile
	spr_fire
	spr_fatb
	spr_fbxp
	spr_skel
	spr_manf
	spr_fatt
	spr_cpos
	spr_sarg
	spr_head
	spr_bal_7
	spr_boss
	spr_bos_2
	spr_skul
	spr_spid
	spr_bspi
	spr_apls
	spr_apbx
	spr_cybr
	spr_pain
	spr_sswv
	spr_keen
	spr_bbrn
	spr_bosf
	spr_arm_1
	spr_arm_2
	spr_bar_1
	spr_bexp
	spr_fcan
	spr_bon_1
	spr_bon_2
	spr_bkey
	spr_rkey
	spr_ykey
	spr_bsku
	spr_rsku
	spr_ysku
	spr_stim
	spr_medi
	spr_soul
	spr_pinv
	spr_pstr
	spr_pins
	spr_mega
	spr_suit
	spr_pmap
	spr_pvis
	spr_clip
	spr_ammo
	spr_rock
	spr_brok
	spr_cell
	spr_celp
	spr_shel
	spr_sbox
	spr_bpak
	spr_bfug
	spr_mgun
	spr_csaw
	spr_laun
	spr_plas
	spr_shot
	spr_sgn_2
	spr_colu
	spr_smt_2
	spr_gor_1
	spr_pol_2
	spr_pol_5
	spr_pol_4
	spr_pol_3
	spr_pol_1
	spr_pol_6
	spr_gor_2
	spr_gor_3
	spr_gor_4
	spr_gor_5
	spr_smit
	spr_col_1
	spr_col_2
	spr_col_3
	spr_col_4
	spr_cand
	spr_cbra
	spr_col_6
	spr_tre_1
	spr_tre_2
	spr_elec
	spr_ceye
	spr_fsku
	spr_col_5
	spr_tblu
	spr_tgrn
	spr_tred
	spr_smbt
	spr_smgt
	spr_smrt
	spr_hdb_1
	spr_hdb_2
	spr_hdb_3
	spr_hdb_4
	spr_hdb_5
	spr_hdb_6
	spr_pob_1
	spr_pob_2
	spr_brs_1
	spr_tlmp
	spr_tlp_2
	numsprites
}

enum Statenum_t {
	s_null
	s_lightdone
	s_punch
	s_punchdown
	s_punchup
	s_punch_1
	s_punch_2
	s_punch_3
	s_punch_4
	s_punch_5
	s_pistol
	s_pistoldown
	s_pistolup
	s_pistol_1
	s_pistol_2
	s_pistol_3
	s_pistol_4
	s_pistolflash
	s_sgun
	s_sgundown
	s_sgunup
	s_sgun_1
	s_sgun_2
	s_sgun_3
	s_sgun_4
	s_sgun_5
	s_sgun_6
	s_sgun_7
	s_sgun_8
	s_sgun_9
	s_sgunflash_1
	s_sgunflash_2
	s_dsgun
	s_dsgundown
	s_dsgunup
	s_dsgun_1
	s_dsgun_2
	s_dsgun_3
	s_dsgun_4
	s_dsgun_5
	s_dsgun_6
	s_dsgun_7
	s_dsgun_8
	s_dsgun_9
	s_dsgun_10
	s_dsnr_1
	s_dsnr_2
	s_dsgunflash_1
	s_dsgunflash_2
	s_chain
	s_chaindown
	s_chainup
	s_chain_1
	s_chain_2
	s_chain_3
	s_chainflash_1
	s_chainflash_2
	s_missile
	s_missiledown
	s_missileup
	s_missile_1
	s_missile_2
	s_missile_3
	s_missileflash_1
	s_missileflash_2
	s_missileflash_3
	s_missileflash_4
	s_saw
	s_sawb
	s_sawdown
	s_sawup
	s_saw_1
	s_saw_2
	s_saw_3
	s_plasma
	s_plasmadown
	s_plasmaup
	s_plasma_1
	s_plasma_2
	s_plasmaflash_1
	s_plasmaflash_2
	s_bfg
	s_bfgdown
	s_bfgup
	s_bfg_1
	s_bfg_2
	s_bfg_3
	s_bfg_4
	s_bfgflash_1
	s_bfgflash_2
	s_blood_1
	s_blood_2
	s_blood_3
	s_puff_1
	s_puff_2
	s_puff_3
	s_puff_4
	s_tball_1
	s_tball_2
	s_tballx_1
	s_tballx_2
	s_tballx_3
	s_rball_1
	s_rball_2
	s_rballx_1
	s_rballx_2
	s_rballx_3
	s_plasball
	s_plasball_2
	s_plasexp
	s_plasexp_2
	s_plasexp_3
	s_plasexp_4
	s_plasexp_5
	s_rocket
	s_bfgshot
	s_bfgshot_2
	s_bfgland
	s_bfgland_2
	s_bfgland_3
	s_bfgland_4
	s_bfgland_5
	s_bfgland_6
	s_bfgexp
	s_bfgexp_2
	s_bfgexp_3
	s_bfgexp_4
	s_explode_1
	s_explode_2
	s_explode_3
	s_tfog
	s_tfog_01
	s_tfog_02
	s_tfog_2
	s_tfog_3
	s_tfog_4
	s_tfog_5
	s_tfog_6
	s_tfog_7
	s_tfog_8
	s_tfog_9
	s_tfog_10
	s_ifog
	s_ifog_01
	s_ifog_02
	s_ifog_2
	s_ifog_3
	s_ifog_4
	s_ifog_5
	s_play
	s_play_run_1
	s_play_run_2
	s_play_run_3
	s_play_run_4
	s_play_atk_1
	s_play_atk_2
	s_play_pain
	s_play_pain_2
	s_play_die_1
	s_play_die_2
	s_play_die_3
	s_play_die_4
	s_play_die_5
	s_play_die_6
	s_play_die_7
	s_play_xdie_1
	s_play_xdie_2
	s_play_xdie_3
	s_play_xdie_4
	s_play_xdie_5
	s_play_xdie_6
	s_play_xdie_7
	s_play_xdie_8
	s_play_xdie_9
	s_poss_stnd
	s_poss_stnd_2
	s_poss_run_1
	s_poss_run_2
	s_poss_run_3
	s_poss_run_4
	s_poss_run_5
	s_poss_run_6
	s_poss_run_7
	s_poss_run_8
	s_poss_atk_1
	s_poss_atk_2
	s_poss_atk_3
	s_poss_pain
	s_poss_pain_2
	s_poss_die_1
	s_poss_die_2
	s_poss_die_3
	s_poss_die_4
	s_poss_die_5
	s_poss_xdie_1
	s_poss_xdie_2
	s_poss_xdie_3
	s_poss_xdie_4
	s_poss_xdie_5
	s_poss_xdie_6
	s_poss_xdie_7
	s_poss_xdie_8
	s_poss_xdie_9
	s_poss_raise_1
	s_poss_raise_2
	s_poss_raise_3
	s_poss_raise_4
	s_spos_stnd
	s_spos_stnd_2
	s_spos_run_1
	s_spos_run_2
	s_spos_run_3
	s_spos_run_4
	s_spos_run_5
	s_spos_run_6
	s_spos_run_7
	s_spos_run_8
	s_spos_atk_1
	s_spos_atk_2
	s_spos_atk_3
	s_spos_pain
	s_spos_pain_2
	s_spos_die_1
	s_spos_die_2
	s_spos_die_3
	s_spos_die_4
	s_spos_die_5
	s_spos_xdie_1
	s_spos_xdie_2
	s_spos_xdie_3
	s_spos_xdie_4
	s_spos_xdie_5
	s_spos_xdie_6
	s_spos_xdie_7
	s_spos_xdie_8
	s_spos_xdie_9
	s_spos_raise_1
	s_spos_raise_2
	s_spos_raise_3
	s_spos_raise_4
	s_spos_raise_5
	s_vile_stnd
	s_vile_stnd_2
	s_vile_run_1
	s_vile_run_2
	s_vile_run_3
	s_vile_run_4
	s_vile_run_5
	s_vile_run_6
	s_vile_run_7
	s_vile_run_8
	s_vile_run_9
	s_vile_run_10
	s_vile_run_11
	s_vile_run_12
	s_vile_atk_1
	s_vile_atk_2
	s_vile_atk_3
	s_vile_atk_4
	s_vile_atk_5
	s_vile_atk_6
	s_vile_atk_7
	s_vile_atk_8
	s_vile_atk_9
	s_vile_atk_10
	s_vile_atk_11
	s_vile_heal_1
	s_vile_heal_2
	s_vile_heal_3
	s_vile_pain
	s_vile_pain_2
	s_vile_die_1
	s_vile_die_2
	s_vile_die_3
	s_vile_die_4
	s_vile_die_5
	s_vile_die_6
	s_vile_die_7
	s_vile_die_8
	s_vile_die_9
	s_vile_die_10
	s_fire_1
	s_fire_2
	s_fire_3
	s_fire_4
	s_fire_5
	s_fire_6
	s_fire_7
	s_fire_8
	s_fire_9
	s_fire_10
	s_fire_11
	s_fire_12
	s_fire_13
	s_fire_14
	s_fire_15
	s_fire_16
	s_fire_17
	s_fire_18
	s_fire_19
	s_fire_20
	s_fire_21
	s_fire_22
	s_fire_23
	s_fire_24
	s_fire_25
	s_fire_26
	s_fire_27
	s_fire_28
	s_fire_29
	s_fire_30
	s_smoke_1
	s_smoke_2
	s_smoke_3
	s_smoke_4
	s_smoke_5
	s_tracer
	s_tracer_2
	s_traceexp_1
	s_traceexp_2
	s_traceexp_3
	s_skel_stnd
	s_skel_stnd_2
	s_skel_run_1
	s_skel_run_2
	s_skel_run_3
	s_skel_run_4
	s_skel_run_5
	s_skel_run_6
	s_skel_run_7
	s_skel_run_8
	s_skel_run_9
	s_skel_run_10
	s_skel_run_11
	s_skel_run_12
	s_skel_fist_1
	s_skel_fist_2
	s_skel_fist_3
	s_skel_fist_4
	s_skel_miss_1
	s_skel_miss_2
	s_skel_miss_3
	s_skel_miss_4
	s_skel_pain
	s_skel_pain_2
	s_skel_die_1
	s_skel_die_2
	s_skel_die_3
	s_skel_die_4
	s_skel_die_5
	s_skel_die_6
	s_skel_raise_1
	s_skel_raise_2
	s_skel_raise_3
	s_skel_raise_4
	s_skel_raise_5
	s_skel_raise_6
	s_fatshot_1
	s_fatshot_2
	s_fatshotx_1
	s_fatshotx_2
	s_fatshotx_3
	s_fatt_stnd
	s_fatt_stnd_2
	s_fatt_run_1
	s_fatt_run_2
	s_fatt_run_3
	s_fatt_run_4
	s_fatt_run_5
	s_fatt_run_6
	s_fatt_run_7
	s_fatt_run_8
	s_fatt_run_9
	s_fatt_run_10
	s_fatt_run_11
	s_fatt_run_12
	s_fatt_atk_1
	s_fatt_atk_2
	s_fatt_atk_3
	s_fatt_atk_4
	s_fatt_atk_5
	s_fatt_atk_6
	s_fatt_atk_7
	s_fatt_atk_8
	s_fatt_atk_9
	s_fatt_atk_10
	s_fatt_pain
	s_fatt_pain_2
	s_fatt_die_1
	s_fatt_die_2
	s_fatt_die_3
	s_fatt_die_4
	s_fatt_die_5
	s_fatt_die_6
	s_fatt_die_7
	s_fatt_die_8
	s_fatt_die_9
	s_fatt_die_10
	s_fatt_raise_1
	s_fatt_raise_2
	s_fatt_raise_3
	s_fatt_raise_4
	s_fatt_raise_5
	s_fatt_raise_6
	s_fatt_raise_7
	s_fatt_raise_8
	s_cpos_stnd
	s_cpos_stnd_2
	s_cpos_run_1
	s_cpos_run_2
	s_cpos_run_3
	s_cpos_run_4
	s_cpos_run_5
	s_cpos_run_6
	s_cpos_run_7
	s_cpos_run_8
	s_cpos_atk_1
	s_cpos_atk_2
	s_cpos_atk_3
	s_cpos_atk_4
	s_cpos_pain
	s_cpos_pain_2
	s_cpos_die_1
	s_cpos_die_2
	s_cpos_die_3
	s_cpos_die_4
	s_cpos_die_5
	s_cpos_die_6
	s_cpos_die_7
	s_cpos_xdie_1
	s_cpos_xdie_2
	s_cpos_xdie_3
	s_cpos_xdie_4
	s_cpos_xdie_5
	s_cpos_xdie_6
	s_cpos_raise_1
	s_cpos_raise_2
	s_cpos_raise_3
	s_cpos_raise_4
	s_cpos_raise_5
	s_cpos_raise_6
	s_cpos_raise_7
	s_troo_stnd
	s_troo_stnd_2
	s_troo_run_1
	s_troo_run_2
	s_troo_run_3
	s_troo_run_4
	s_troo_run_5
	s_troo_run_6
	s_troo_run_7
	s_troo_run_8
	s_troo_atk_1
	s_troo_atk_2
	s_troo_atk_3
	s_troo_pain
	s_troo_pain_2
	s_troo_die_1
	s_troo_die_2
	s_troo_die_3
	s_troo_die_4
	s_troo_die_5
	s_troo_xdie_1
	s_troo_xdie_2
	s_troo_xdie_3
	s_troo_xdie_4
	s_troo_xdie_5
	s_troo_xdie_6
	s_troo_xdie_7
	s_troo_xdie_8
	s_troo_raise_1
	s_troo_raise_2
	s_troo_raise_3
	s_troo_raise_4
	s_troo_raise_5
	s_sarg_stnd
	s_sarg_stnd_2
	s_sarg_run_1
	s_sarg_run_2
	s_sarg_run_3
	s_sarg_run_4
	s_sarg_run_5
	s_sarg_run_6
	s_sarg_run_7
	s_sarg_run_8
	s_sarg_atk_1
	s_sarg_atk_2
	s_sarg_atk_3
	s_sarg_pain
	s_sarg_pain_2
	s_sarg_die_1
	s_sarg_die_2
	s_sarg_die_3
	s_sarg_die_4
	s_sarg_die_5
	s_sarg_die_6
	s_sarg_raise_1
	s_sarg_raise_2
	s_sarg_raise_3
	s_sarg_raise_4
	s_sarg_raise_5
	s_sarg_raise_6
	s_head_stnd
	s_head_run_1
	s_head_atk_1
	s_head_atk_2
	s_head_atk_3
	s_head_pain
	s_head_pain_2
	s_head_pain_3
	s_head_die_1
	s_head_die_2
	s_head_die_3
	s_head_die_4
	s_head_die_5
	s_head_die_6
	s_head_raise_1
	s_head_raise_2
	s_head_raise_3
	s_head_raise_4
	s_head_raise_5
	s_head_raise_6
	s_brball_1
	s_brball_2
	s_brballx_1
	s_brballx_2
	s_brballx_3
	s_boss_stnd
	s_boss_stnd_2
	s_boss_run_1
	s_boss_run_2
	s_boss_run_3
	s_boss_run_4
	s_boss_run_5
	s_boss_run_6
	s_boss_run_7
	s_boss_run_8
	s_boss_atk_1
	s_boss_atk_2
	s_boss_atk_3
	s_boss_pain
	s_boss_pain_2
	s_boss_die_1
	s_boss_die_2
	s_boss_die_3
	s_boss_die_4
	s_boss_die_5
	s_boss_die_6
	s_boss_die_7
	s_boss_raise_1
	s_boss_raise_2
	s_boss_raise_3
	s_boss_raise_4
	s_boss_raise_5
	s_boss_raise_6
	s_boss_raise_7
	s_bos_2_stnd
	s_bos_2_stnd_2
	s_bos_2_run_1
	s_bos_2_run_2
	s_bos_2_run_3
	s_bos_2_run_4
	s_bos_2_run_5
	s_bos_2_run_6
	s_bos_2_run_7
	s_bos_2_run_8
	s_bos_2_atk_1
	s_bos_2_atk_2
	s_bos_2_atk_3
	s_bos_2_pain
	s_bos_2_pain_2
	s_bos_2_die_1
	s_bos_2_die_2
	s_bos_2_die_3
	s_bos_2_die_4
	s_bos_2_die_5
	s_bos_2_die_6
	s_bos_2_die_7
	s_bos_2_raise_1
	s_bos_2_raise_2
	s_bos_2_raise_3
	s_bos_2_raise_4
	s_bos_2_raise_5
	s_bos_2_raise_6
	s_bos_2_raise_7
	s_skull_stnd
	s_skull_stnd_2
	s_skull_run_1
	s_skull_run_2
	s_skull_atk_1
	s_skull_atk_2
	s_skull_atk_3
	s_skull_atk_4
	s_skull_pain
	s_skull_pain_2
	s_skull_die_1
	s_skull_die_2
	s_skull_die_3
	s_skull_die_4
	s_skull_die_5
	s_skull_die_6
	s_spid_stnd
	s_spid_stnd_2
	s_spid_run_1
	s_spid_run_2
	s_spid_run_3
	s_spid_run_4
	s_spid_run_5
	s_spid_run_6
	s_spid_run_7
	s_spid_run_8
	s_spid_run_9
	s_spid_run_10
	s_spid_run_11
	s_spid_run_12
	s_spid_atk_1
	s_spid_atk_2
	s_spid_atk_3
	s_spid_atk_4
	s_spid_pain
	s_spid_pain_2
	s_spid_die_1
	s_spid_die_2
	s_spid_die_3
	s_spid_die_4
	s_spid_die_5
	s_spid_die_6
	s_spid_die_7
	s_spid_die_8
	s_spid_die_9
	s_spid_die_10
	s_spid_die_11
	s_bspi_stnd
	s_bspi_stnd_2
	s_bspi_sight
	s_bspi_run_1
	s_bspi_run_2
	s_bspi_run_3
	s_bspi_run_4
	s_bspi_run_5
	s_bspi_run_6
	s_bspi_run_7
	s_bspi_run_8
	s_bspi_run_9
	s_bspi_run_10
	s_bspi_run_11
	s_bspi_run_12
	s_bspi_atk_1
	s_bspi_atk_2
	s_bspi_atk_3
	s_bspi_atk_4
	s_bspi_pain
	s_bspi_pain_2
	s_bspi_die_1
	s_bspi_die_2
	s_bspi_die_3
	s_bspi_die_4
	s_bspi_die_5
	s_bspi_die_6
	s_bspi_die_7
	s_bspi_raise_1
	s_bspi_raise_2
	s_bspi_raise_3
	s_bspi_raise_4
	s_bspi_raise_5
	s_bspi_raise_6
	s_bspi_raise_7
	s_arach_plaz
	s_arach_plaz_2
	s_arach_plex
	s_arach_plex_2
	s_arach_plex_3
	s_arach_plex_4
	s_arach_plex_5
	s_cyber_stnd
	s_cyber_stnd_2
	s_cyber_run_1
	s_cyber_run_2
	s_cyber_run_3
	s_cyber_run_4
	s_cyber_run_5
	s_cyber_run_6
	s_cyber_run_7
	s_cyber_run_8
	s_cyber_atk_1
	s_cyber_atk_2
	s_cyber_atk_3
	s_cyber_atk_4
	s_cyber_atk_5
	s_cyber_atk_6
	s_cyber_pain
	s_cyber_die_1
	s_cyber_die_2
	s_cyber_die_3
	s_cyber_die_4
	s_cyber_die_5
	s_cyber_die_6
	s_cyber_die_7
	s_cyber_die_8
	s_cyber_die_9
	s_cyber_die_10
	s_pain_stnd
	s_pain_run_1
	s_pain_run_2
	s_pain_run_3
	s_pain_run_4
	s_pain_run_5
	s_pain_run_6
	s_pain_atk_1
	s_pain_atk_2
	s_pain_atk_3
	s_pain_atk_4
	s_pain_pain
	s_pain_pain_2
	s_pain_die_1
	s_pain_die_2
	s_pain_die_3
	s_pain_die_4
	s_pain_die_5
	s_pain_die_6
	s_pain_raise_1
	s_pain_raise_2
	s_pain_raise_3
	s_pain_raise_4
	s_pain_raise_5
	s_pain_raise_6
	s_sswv_stnd
	s_sswv_stnd_2
	s_sswv_run_1
	s_sswv_run_2
	s_sswv_run_3
	s_sswv_run_4
	s_sswv_run_5
	s_sswv_run_6
	s_sswv_run_7
	s_sswv_run_8
	s_sswv_atk_1
	s_sswv_atk_2
	s_sswv_atk_3
	s_sswv_atk_4
	s_sswv_atk_5
	s_sswv_atk_6
	s_sswv_pain
	s_sswv_pain_2
	s_sswv_die_1
	s_sswv_die_2
	s_sswv_die_3
	s_sswv_die_4
	s_sswv_die_5
	s_sswv_xdie_1
	s_sswv_xdie_2
	s_sswv_xdie_3
	s_sswv_xdie_4
	s_sswv_xdie_5
	s_sswv_xdie_6
	s_sswv_xdie_7
	s_sswv_xdie_8
	s_sswv_xdie_9
	s_sswv_raise_1
	s_sswv_raise_2
	s_sswv_raise_3
	s_sswv_raise_4
	s_sswv_raise_5
	s_keenstnd
	s_commkeen
	s_commkeen_2
	s_commkeen_3
	s_commkeen_4
	s_commkeen_5
	s_commkeen_6
	s_commkeen_7
	s_commkeen_8
	s_commkeen_9
	s_commkeen_10
	s_commkeen_11
	s_commkeen_12
	s_keenpain
	s_keenpain_2
	s_brain
	s_brain_pain
	s_brain_die_1
	s_brain_die_2
	s_brain_die_3
	s_brain_die_4
	s_braineye
	s_braineyesee
	s_braineye_1
	s_spawn_1
	s_spawn_2
	s_spawn_3
	s_spawn_4
	s_spawnfire_1
	s_spawnfire_2
	s_spawnfire_3
	s_spawnfire_4
	s_spawnfire_5
	s_spawnfire_6
	s_spawnfire_7
	s_spawnfire_8
	s_brainexplode_1
	s_brainexplode_2
	s_brainexplode_3
	s_arm_1
	s_arm_1_a
	s_arm_2
	s_arm_2_a
	s_bar_1
	s_bar_2
	s_bexp
	s_bexp_2
	s_bexp_3
	s_bexp_4
	s_bexp_5
	s_bbar_1
	s_bbar_2
	s_bbar_3
	s_bon_1
	s_bon_1_a
	s_bon_1_b
	s_bon_1_c
	s_bon_1_d
	s_bon_1_e
	s_bon_2
	s_bon_2_a
	s_bon_2_b
	s_bon_2_c
	s_bon_2_d
	s_bon_2_e
	s_bkey
	s_bkey_2
	s_rkey
	s_rkey_2
	s_ykey
	s_ykey_2
	s_bskull
	s_bskull_2
	s_rskull
	s_rskull_2
	s_yskull
	s_yskull_2
	s_stim
	s_medi
	s_soul
	s_soul_2
	s_soul_3
	s_soul_4
	s_soul_5
	s_soul_6
	s_pinv
	s_pinv_2
	s_pinv_3
	s_pinv_4
	s_pstr
	s_pins
	s_pins_2
	s_pins_3
	s_pins_4
	s_mega
	s_mega_2
	s_mega_3
	s_mega_4
	s_suit
	s_pmap
	s_pmap_2
	s_pmap_3
	s_pmap_4
	s_pmap_5
	s_pmap_6
	s_pvis
	s_pvis_2
	s_clip
	s_ammo
	s_rock
	s_brok
	s_cell
	s_celp
	s_shel
	s_sbox
	s_bpak
	s_bfug
	s_mgun
	s_csaw
	s_laun
	s_plas
	s_shot
	s_shot_2
	s_colu
	s_stalag
	s_bloodytwitch
	s_bloodytwitch_2
	s_bloodytwitch_3
	s_bloodytwitch_4
	s_deadtorso
	s_deadbottom
	s_headsonstick
	s_gibs
	s_headonastick
	s_headcandles
	s_headcandles_2
	s_deadstick
	s_livestick
	s_livestick_2
	s_meat_2
	s_meat_3
	s_meat_4
	s_meat_5
	s_stalagtite
	s_tallgrncol
	s_shrtgrncol
	s_tallredcol
	s_shrtredcol
	s_candlestik
	s_candelabra
	s_skullcol
	s_torchtree
	s_bigtree
	s_techpillar
	s_evileye
	s_evileye_2
	s_evileye_3
	s_evileye_4
	s_floatskull
	s_floatskull_2
	s_floatskull_3
	s_heartcol
	s_heartcol_2
	s_bluetorch
	s_bluetorch_2
	s_bluetorch_3
	s_bluetorch_4
	s_greentorch
	s_greentorch_2
	s_greentorch_3
	s_greentorch_4
	s_redtorch
	s_redtorch_2
	s_redtorch_3
	s_redtorch_4
	s_btorchshrt
	s_btorchshrt_2
	s_btorchshrt_3
	s_btorchshrt_4
	s_gtorchshrt
	s_gtorchshrt_2
	s_gtorchshrt_3
	s_gtorchshrt_4
	s_rtorchshrt
	s_rtorchshrt_2
	s_rtorchshrt_3
	s_rtorchshrt_4
	s_hangnoguts
	s_hangbnobrain
	s_hangtlookdn
	s_hangtskull
	s_hangtlookup
	s_hangtnobrain
	s_colongibs
	s_smallpool
	s_brainstem
	s_techlamp
	s_techlamp_2
	s_techlamp_3
	s_techlamp_4
	s_tech_2_lamp
	s_tech_2_lamp_2
	s_tech_2_lamp_3
	s_tech_2_lamp_4
	numstates
}

struct State_t {
	sprite Spritenum_t
	frame  int
	tics   int
	// void (*action) ();
	action    Actionf_t
	nextstate Statenum_t
	misc1     int
	misc2     int
}

enum Mobjtype_t {
	mt_player
	mt_possessed
	mt_shotguy
	mt_vile
	mt_fire
	mt_undead
	mt_tracer
	mt_smoke
	mt_fatso
	mt_fatshot
	mt_chainguy
	mt_troop
	mt_sergeant
	mt_shadows
	mt_head
	mt_bruiser
	mt_bruisershot
	mt_knight
	mt_skull
	mt_spider
	mt_baby
	mt_cyborg
	mt_pain
	mt_wolfss
	mt_keen
	mt_bossbrain
	mt_bossspit
	mt_bosstarget
	mt_spawnshot
	mt_spawnfire
	mt_barrel
	mt_troopshot
	mt_headshot
	mt_rocket
	mt_plasma
	mt_bfg
	mt_arachplaz
	mt_puff
	mt_blood
	mt_tfog
	mt_ifog
	mt_teleportman
	mt_extrabfg
	mt_misc_0
	mt_misc_1
	mt_misc_2
	mt_misc_3
	mt_misc_4
	mt_misc_5
	mt_misc_6
	mt_misc_7
	mt_misc_8
	mt_misc_9
	mt_misc_10
	mt_misc_11
	mt_misc_12
	mt_inv
	mt_misc_13
	mt_ins
	mt_misc_14
	mt_misc_15
	mt_misc_16
	mt_mega
	mt_clip
	mt_misc_17
	mt_misc_18
	mt_misc_19
	mt_misc_20
	mt_misc_21
	mt_misc_22
	mt_misc_23
	mt_misc_24
	mt_misc_25
	mt_chaingun
	mt_misc_26
	mt_misc_27
	mt_misc_28
	mt_shotgun
	mt_supershotgun
	mt_misc_29
	mt_misc_30
	mt_misc_31
	mt_misc_32
	mt_misc_33
	mt_misc_34
	mt_misc_35
	mt_misc_36
	mt_misc_37
	mt_misc_38
	mt_misc_39
	mt_misc_40
	mt_misc_41
	mt_misc_42
	mt_misc_43
	mt_misc_44
	mt_misc_45
	mt_misc_46
	mt_misc_47
	mt_misc_48
	mt_misc_49
	mt_misc_50
	mt_misc_51
	mt_misc_52
	mt_misc_53
	mt_misc_54
	mt_misc_55
	mt_misc_56
	mt_misc_57
	mt_misc_58
	mt_misc_59
	mt_misc_60
	mt_misc_61
	mt_misc_62
	mt_misc_63
	mt_misc_64
	mt_misc_65
	mt_misc_66
	mt_misc_67
	mt_misc_68
	mt_misc_69
	mt_misc_70
	mt_misc_71
	mt_misc_72
	mt_misc_73
	mt_misc_74
	mt_misc_75
	mt_misc_76
	mt_misc_77
	mt_misc_78
	mt_misc_79
	mt_misc_80
	mt_misc_81
	mt_misc_82
	mt_misc_83
	mt_misc_84
	mt_misc_85
	mt_misc_86
	nummobjtypes
}

struct Mobjinfo_t {
	doomednum    int
	spawnstate   int
	spawnhealth  int
	seestate     int
	seesound     int
	reactiontime int
	attacksound  int
	painstate    int
	painchance   int
	painsound    int
	meleestate   int
	missilestate int
	deathstate   int
	xdeathstate  int
	deathsound   int
	speed        int
	radius       int
	height       int
	mass         int
	damage       int
	activesound  int
	flags        int
	raisestate   int
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
enum Mobjflag_t {
	// Call P_SpecialThing when touched.
	mf_special      = 1
	// Blocks.
	mf_solid        = 2
	// Can be hit.
	mf_shootable    = 4
	// Don't use the sector links (invisible but touchable).
	mf_nosector     = 8
	// Don't use the blocklinks (inert but displayable)
	mf_noblockmap   = 16
	// Not to be activated by sound, deaf monster.
	mf_ambush       = 32
	// Will try to attack right back.
	mf_justhit      = 64
	// Will take at least one step before attacking.
	mf_justattacked = 128
	// On level spawning (initial position),
	//  hang from ceiling instead of stand on floor.
	mf_spawnceiling = 256
	// Don't apply gravity (every tic),
	//  that is, object will float, keeping current height
	//  or changing it actively.
	mf_nogravity    = 512
	// Movement flags.
	// This allows jumps from high places.
	mf_dropoff      = 1024
	// For players, will pick up items.
	mf_pickup       = 2048
	// Player cheat. ???
	mf_noclip       = 4096
	// Player: keep info about sliding along walls.
	mf_slide        = 8192
	// Allow moves to any height, no gravity.
	// For active floaters, e.g. cacodemons, pain elementals.
	mf_float        = 16384
	// Don't cross lines
	//   ??? or look at heights on teleport.
	mf_teleport     = 32768
	// Don't hit same species, explode on block.
	// Player missiles as well as fireballs of various kinds.
	mf_missile      = 65536
	// Dropped by a demon, not level spawned.
	// E.g. ammo clips dropped by dying former humans.
	mf_dropped      = 131072
	// Use fuzzy draw (shadow demons or spectres),
	//  temporary player invisibility powerup.
	mf_shadow       = 262144
	// Flag: don't bleed when shot (use puff),
	//  barrels and shootable furniture shall not bleed.
	mf_noblood      = 524288
	// Don't stop moving halfway off a step,
	//  that is, have dead bodies slide down all the way.
	mf_corpse       = 1048576
	// Floating to a height for a move, ???
	//  don't auto float to target's height.
	mf_infloat      = 2097152
	// On kill, count this enemy object
	//  towards intermission kill total.
	// Happy gathering.
	mf_countkill    = 4194304
	// On picking up, count this item object
	//  towards intermission item total.
	mf_countitem    = 8388608
	// Special handling: skull in flight.
	// Neither a cacodemon nor a missile.
	mf_skullfly     = 16777216
	// Don't spawn this object
	//  in death match mode (e.g. key cards).
	mf_notdmatch    = 33554432
	// Player sprites in multiplayer modes are modified
	//  using an internal color lookup table for re-indexing.
	// If 0x4 0x8 or 0xc,
	//  use a translation table for player colormaps
	mf_translation  = 201326592
	// Hmm ???.
	mf_transshift   = 26
}

// Map Object definition.
struct Mobj_t {
	// List: thinker links.
	thinker Thinker_t
	// Info for drawing: position.
	x int
	y int
	z int
	// More list: links in sector (if needed)
	snext &Mobj_t
	sprev &Mobj_t
	// More drawing info: to determine current sprite.
	angle Angle_t
	// orientation
	sprite Spritenum_t
	// used to find patch_t and flip value
	frame int
	// might be ORed with FF_FULLBRIGHT
	// Interaction info, by BLOCKMAP.
	// Links in blocks (if needed).
	bnext     &Mobj_t
	bprev     &Mobj_t
	subsector &Subsector_t
	// The closest interval over all contacted Sectors.
	floorz   int
	ceilingz int
	// For movement checking.
	radius int
	height int
	// Momentums, used to update position.
	momx int
	momy int
	momz int
	// If == validcount, already checked.
	validcount int
	type_      Mobjtype_t
	info       &Mobjinfo_t
	// &mobjinfo[mobj->type]
	tics int
	// state tic counter
	state  &State_t
	flags  int
	health int
	// Movement direction, movement generation (zig-zagging).
	movedir int
	// 0-7
	movecount int
	// when 0, select a new dir
	// Thing being chased/attacked (or NULL),
	// also the originator for missiles.
	target &Mobj_t
	// Reaction time: if non 0, don't attack yet.
	// Used by player to freeze a bit after teleporting.
	reactiontime int
	// If >0, the target will be chased
	// no matter what (even if shot)
	threshold int
	// Additional info record for player avatars only.
	// Only valid if type == MT_PLAYER
	player &Player_t
	// Player number last looked for.
	lastlook int
	// For nightmare respawn.
	spawnpoint Mapthing_t
	// Thing being chased/attacked for tracers.
	tracer &Mobj_t
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
//	System specific interface stuff.
//
// Screen width and height.
// Screen height used when aspect_ratio_correct=true.
type Grabmouse_callback_t = fn () bool

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
struct Patch_t {
	width      i16
	height     i16
	leftoffset i16
	topoffset  i16
	columnofs  [8]int
}

struct Post_t {
	topdelta u8
	length   u8
}

type Column_t = Post_t

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
struct Vertex_t {
	x int
	y int
}

// Forward of LineDefs, for Sectors.
// Each sector has a degenmobj_t in its center
//  for sound origin purposes.
// I suppose this does not handle sound from
//  moving objects (doppler), because
//  position is prolly just buffered, not
//  updated.
struct Degenmobj_t {
	thinker Thinker_t
	// not used for anything
	x int
	y int
	z int
}

//
// The SECTORS record, at runtime.
// Stores things/mobjs.
//
struct Sector_t {
	floorheight   int
	ceilingheight int
	floorpic      i16
	ceilingpic    i16
	lightlevel    i16
	special       i16
	tag           i16
	// 0 = untraversed, 1,2 = sndlines -1
	soundtraversed int
	// thing that made a sound (or null)
	soundtarget &Mobj_t
	// mapblock bounding box for height changes
	blockbox [4]int
	// origin for any sounds played by the sector
	soundorg Degenmobj_t
	// if == validcount, already checked
	validcount int
	// list of mobjs in sector
	thinglist &Mobj_t
	// thinker_t for reversable actions
	specialdata voidptr
	linecount   int
	lines       &&Line_t
	// [linecount] size
}

//
// The SideDef.
//
struct Side_t {
	// add this to the calculated texture column
	textureoffset int
	// add this to the calculated texture top
	rowoffset int
	// Texture indices.
	// We do not maintain names here.
	toptexture    i16
	bottomtexture i16
	midtexture    i16
	// Sector the SideDef is facing.
	sector &Sector_t
}

//
// Move clipping aid for LineDefs.
//
enum Slopetype_t {
	st_horizontal
	st_vertical
	st_positive
	st_negative
}

struct Line_t {
	// Vertices, from v1 to v2.
	v1 &Vertex_t
	v2 &Vertex_t
	// Precalculated v2 - v1 for side checking.
	dx int
	dy int
	// Animation related.
	flags   i16
	special i16
	tag     i16
	// Visual appearance: SideDefs.
	//  sidenum[1] will be -1 if one sided
	sidenum [2]i16
	// Neat. Another bounding box, for the extent
	//  of the LineDef.
	bbox [4]int
	// To aid move clipping.
	slopetype Slopetype_t
	// Front and back sector.
	// Note: redundant? Can be retrieved from SideDefs.
	frontsector &Sector_t
	backsector  &Sector_t
	// if == validcount, already checked
	validcount int
	// thinker_t for reversable actions
	specialdata voidptr
}

//
// A SubSector.
// References a Sector.
// Basically, this is a list of LineSegs,
//  indicating the visible walls that define
//  (all or some) sides of a convex BSP leaf.
//
struct Subsector_t {
	sector    &Sector_t
	numlines  i16
	firstline i16
}

//
// The LineSeg.
//
struct Seg_t {
	v1      &Vertex_t
	v2      &Vertex_t
	offset  int
	angle   Angle_t
	sidedef &Side_t
	linedef &Line_t
	// Sector references.
	// Could be retrieved from linedef, too.
	// backsector is NULL for one sided lines
	frontsector &Sector_t
	backsector  &Sector_t
}

//
// BSP node.
//
struct Node_t {
	// Partition line.
	x  int
	y  int
	dx int
	dy int
	// Bounding box for each child.
	bbox [2][4]int
	// If NF_SUBSECTOR its a subsector.
	children [2]u16
}

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
type Lighttable_t = u8

//
// ?
//
struct Drawseg_t {
	curline   &Seg_t
	x1        int
	x2        int
	scale1    int
	scale2    int
	scalestep int
	// 0=none, 1=bottom, 2=top, 3=both
	silhouette int
	// do not clip sprites above this
	bsilheight int
	// do not clip sprites below this
	tsilheight int
	// Pointers to lists for sprite clipping,
	//  all three adjusted so [x1] is first value.
	sprtopclip       &i16
	sprbottomclip    &i16
	maskedtexturecol &i16
}

// A vissprite_t is a thing
//  that will be drawn during a refresh.
// I.e. a sprite object that is partly visible.
struct Vissprite_t {
	// Doubly linked list.
	prev &Vissprite_t
	next &Vissprite_t
	x1   int
	x2   int
	// for line side calculation
	gx int
	gy int
	// global bottom / top for silhouette clipping
	gz  int
	gzt int
	// horizontal position of x1
	startfrac int
	scale     int
	// negative if flipped
	xiscale    int
	texturemid int
	patch      int
	// for color translation and shadow draw,
	//  maxbright frames as well
	colormap  &Lighttable_t
	mobjflags int
}

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
struct Spriteframe_t {
	// If false use 0 for any position.
	// Note: as eight entries are available,
	//  we might as well insert the same name eight times.
	rotate bool
	// Lump to use for view angles 0-7.
	lump [8]i16
	// Flip bit (1 = flip) to use for view angles 0-7.
	flip [8]u8
}

//
// A sprite definition:
//  a number of animation frames.
//
struct Spritedef_t {
	numframes    int
	spriteframes &Spriteframe_t
}

//
// Now what is a visplane, anyway?
//
struct Visplane_t {
	height     int
	picnum     int
	lightlevel int
	minx       int
	maxx       int
	// leave pads for [minx-1]/[maxx+1]
	pad1 u8
	// Here lies the rub for all
	//  dynamic resize/change of resolution.
	top  [320]u8
	pad2 u8
	pad3 u8
	// See above.
	bottom [320]u8
	pad4   u8
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
//	Items: key cards, artifacts, weapon, ammunition.
//
// Weapon info: sprite frames, ammunition use.
struct Weaponinfo_t {
	ammo       Ammotype_t
	upstate    int
	downstate  int
	readystate int
	atkstate   int
	flashstate int
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
enum Psprnum_t {
	ps_weapon
	ps_flash
	numpsprites
}

struct Pspdef_t {
	state &State_t
	// a NULL state means not active
	tics int
	sx   int
	sy   int
}

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
struct Ticcmd_t {
	forwardmove i8
	// *2048 for move
	sidemove i8
	// *2048 for move
	angleturn i16
	// <<16 for angle delta
	chatchar u8
	buttons  u8
	// villsa [STRIFE] according to the asm,
	// consistancy is a short, not a byte
	consistancy u8
	// checks for net game
	// villsa - Strife specific:
	buttons2  u8
	inventory int
	// Heretic/Hexen specific:
	lookfly u8
	// look/fly up/down/centering
	arti u8
	// artitype_t to use
}

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
type Sha1_context_t = Sha1_context_s
type Sha1_digest_t = [20]u8

struct Sha1_context_s {
	h0      u32
	h1      u32
	h2      u32
	h3      u32
	h4      u32
	nblocks u32
	buf     [64]u8
	count   int
}

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
type Net_module_t = Net_module_s
type Net_packet_t = Net_packet_s
type Net_addr_t = Net_addr_s

struct Net_packet_s {
	data    &u8
	len     usize
	alloced usize
	pos     u32
}

struct Net_module_s {
	// Initialize this module for use as a client
	initClient fn () bool
	// Initialize this module for use as a server
	initServer fn () bool
	// Send a packet
	sendPacket fn (&Net_addr_t, &Net_packet_t)
	// Check for new packets to receive
	//
	// Returns true if packet received
	recvPacket fn (&&Net_addr_t, &&Net_packet_t) bool
	// Converts an address to a string
	addrToString fn (&Net_addr_t, &i8, int)
	// Free back an address when no longer in use
	freeAddress fn (&Net_addr_t)
	// Try to resolve a name to an address
	resolveAddress fn (&i8) &Net_addr_t
}

// net_addr_t
struct Net_addr_s {
	module_  &Net_module_t
	refcount int
	handle   voidptr
}

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
enum Net_protocol_t {
	// Protocol introduced with Chocolate Doom v3.0. Each compatibility-
	// breaking change to the network protocol will produce a new protocol
	// number in this enum.
	net_protocol_chocolate_doom_0
	// Add your own protocol here; be sure to add a name for it to the list
	// in net_common.c too.
	net_num_protocols
	net_protocol_unknown
}

// packet types
enum Net_packet_type_t {
	net_packet_type_syn
	net_packet_type_ack
	// deprecated
	net_packet_type_rejected
	net_packet_type_keepalive
	net_packet_type_waiting_data
	net_packet_type_gamestart
	net_packet_type_gamedata
	net_packet_type_gamedata_ack
	net_packet_type_disconnect
	net_packet_type_disconnect_ack
	net_packet_type_reliable_ack
	net_packet_type_gamedata_resend
	net_packet_type_console_message
	net_packet_type_query
	net_packet_type_query_response
	net_packet_type_launch
	net_packet_type_nat_hole_punch
}

enum Net_master_packet_type_t {
	net_master_packet_type_add
	net_master_packet_type_add_response
	net_master_packet_type_query
	net_master_packet_type_query_response
	net_master_packet_type_get_metadata
	net_master_packet_type_get_metadata_response
	net_master_packet_type_sign_start
	net_master_packet_type_sign_start_response
	net_master_packet_type_sign_end
	net_master_packet_type_sign_end_response
	net_master_packet_type_nat_hole_punch
	net_master_packet_type_nat_hole_punch_all
}

// Settings specified when the client connects to the server.
struct Net_connect_data_t {
	gamemode     int
	gamemission  int
	lowres_turn  int
	drone        int
	max_players  int
	is_freedoom  int
	wad_sha1sum  Sha1_digest_t
	deh_sha1sum  Sha1_digest_t
	player_class int
}

// Game settings sent by client to server when initiating game start,
// and received from the server by clients when the game starts.
struct Net_gamesettings_t {
	ticdup           int
	extratics        int
	deathmatch       int
	episode          int
	nomonsters       int
	fast_monsters    int
	respawn_monsters int
	map_             int
	skill            int
	gameversion      int
	lowres_turn      int
	new_sync         int
	timelimit        int
	loadgame         int
	random           int
	// [Strife only]
	// These fields are only used by the server when sending a game
	// start message:
	num_players   int
	consoleplayer int
	// Hexen player classes:
	player_classes [8]int
}

struct Net_ticdiff_t {
	diff u32
	cmd  Ticcmd_t
}

// Complete set of ticcmds from all players
struct Net_full_ticcmd_t {
	latency      int
	seq          u32
	playeringame [8]bool
	cmds         [8]Net_ticdiff_t
}

// Data sent in response to server queries
struct Net_querydata_t {
	version      &i8
	server_state int
	num_players  int
	max_players  int
	gamemode     int
	gamemission  int
	description  &i8
	protocol     Net_protocol_t
}

// Data sent by the server while waiting for the game to start.
struct Net_waitdata_t {
	num_players   int
	num_drones    int
	ready_players int
	max_players   int
	is_controller int
	consoleplayer int
	player_names  [8][30]i8
	player_addrs  [8][30]i8
	wad_sha1sum   Sha1_digest_t
	deh_sha1sum   Sha1_digest_t
	is_freedoom   int
}

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
enum Playerstate_t {
	// Playing or camping.
	pst_live
	// Dead on the ground, view follows killer.
	pst_dead
	// Ready to restart/respawn???
	pst_reborn
}

//
// Player internal flags, for cheats and debug.
//
enum Cheat_t {
	// No clipping, walk through barriers.
	cf_noclip     = 1
	// No damage, no health loss.
	cf_godmode    = 2
	// Not really a cheat, just a debug aid.
	cf_nomomentum = 4
}

//
// Extended player object info: player_t
//
struct Player_t {
	mo          &Mobj_t
	playerstate Playerstate_t
	cmd         Ticcmd_t
	// Determine POV,
	//  including viewpoint bobbing during movement.
	// Focal origin above r.z
	viewz int
	// Base height above floor for viewz.
	viewheight int
	// Bob/squat speed.
	deltaviewheight int
	// bounded/scaled total momentum.
	bob int
	// This is only used between levels,
	// mo->health is used during levels.
	health      int
	armorpoints int
	// Armor type is 0-2.
	armortype int
	// Power ups. invinc and invis are tic counters.
	powers   [6]int
	cards    [6]bool
	backpack bool
	// Frags, kills of other players.
	frags       [4]int
	readyweapon Weapontype_t
	// Is wp_nochange if not changing.
	pendingweapon Weapontype_t
	weaponowned   [9]int
	ammo          [4]int
	maxammo       [4]int
	// True if button down last tic.
	attackdown int
	usedown    int
	// Bit flags, for cheats and debug.
	// See cheat_t, above.
	cheats int
	// Refired shots are less accurate.
	refire int
	// For intermission stats.
	killcount   int
	itemcount   int
	secretcount int
	// Hint messages.
	message &i8
	// For screen flashing (red or bright).
	damagecount int
	bonuscount  int
	// Who did damage (NULL for floors/ceilings).
	attacker &Mobj_t
	// So gun flashes light up areas.
	extralight int
	// Current PLAYPAL, ???
	//  can be set to REDCOLORMAP for pain, etc.
	fixedcolormap int
	// Player skin colorshift,
	//  0-3 for which color to draw player.
	colormap int
	// Overlay view sprites (gun, etc).
	psprites [2]Pspdef_t
	// True if secret level has been done.
	didsecret bool
}

//
// INTERMISSION
// Structure passed e.g. to WI_Start(wb)
//
struct Wbplayerstruct_t {
	in_ bool
	// whether the player is in game
	// Player stats, kills, collected items etc.
	skills  int
	sitems  int
	ssecret int
	stime   int
	frags   [4]int
	score   int
	// current score on entry, modified on return
}

struct Wbstartstruct_t {
	epsd int
	// episode # (0-2)
	// if true, splash the secret level
	didsecret bool
	// previous and next levels, origin 0
	last      int
	next      int
	maxkills  int
	maxitems  int
	maxsecret int
	maxfrags  int
	// the par time
	partime int
	// index of this player in game
	pnum int
	plyr [4]Wbplayerstruct_t
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
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
//  Sky rendering. The DOOM sky is a texture map like any
//  wall, wrapping around. A 1024 columns equal 360 degrees.
//  The default sky map is 256 columns and repeats 4 times
//  on a 320 screen?
//
//
// Needed for FRACUNIT.
// Needed for Flat retrieval.
//
// sky mapping
//
//
// R_InitSkyMap
// Called whenever the view size changes.
//
@[c: 'R_InitSkyMap']
fn r_init_sky_map() {
	// skyflatnum = R_FlatNumForName ( SKYFLATNAME );
	skytexturemid = 200 / 2 * (1 << 16)
}
