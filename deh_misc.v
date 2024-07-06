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
// DESCRIPTION:
//     SHA-1 digest.
//
@[c: 'SHA1_UpdateInt32']
fn sha_1_update_int32(context &Sha1_context_t, val u32)

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
// Definitions for use in the dehacked code
//
// #ifndef DEH_DEFS_H
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
// Dehacked I/O code (does all reads from dehacked files)
//
@[c: 'DEH_Warning']
@[c2v_variadic]
fn deh_warning(context &Deh_context_t, msg ...&i8)

// #ifndef DEH_IO_H
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
//
// Dehacked entrypoint and common code
//
// These are the limits that dehacked uses (from dheinit.h in the dehacked
// source).  If these limits are exceeded, it does not generate an error, but
// a warning is displayed.
@[c: 'DEH_ParseAssignment']
fn deh_parse_assignment(line &i8, variable_name &&u8, value &&u8) bool

// #ifndef DEH_MAIN_H
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
// skipped extern global deh_initial_health
// skipped extern global deh_initial_bullets
// skipped extern global deh_max_health
// skipped extern global deh_max_armor
// skipped extern global deh_green_armor_class
// skipped extern global deh_blue_armor_class
// skipped extern global deh_max_soulsphere
// skipped extern global deh_soulsphere_health
// skipped extern global deh_megasphere_health
// skipped extern global deh_god_mode_health
// skipped extern global deh_idfa_armor
// skipped extern global deh_idfa_armor_class
// skipped extern global deh_idkfa_armor
// skipped extern global deh_idkfa_armor_class
// skipped extern global deh_bfg_cells_per_shot
// skipped extern global deh_species_infighting
// To compile without dehacked, it's possible to use these:
// #ifndef DEH_MISC_H
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
// Dehacked: "Initial Health"
// This is the initial health a player has when starting anew.
// See G_PlayerReborn in g_game.c
// Dehacked: "Initial bullets"
// This is the number of bullets the player has when starting anew.
// See G_PlayerReborn in g_game.c
// Dehacked: "Max Health"
// This is the maximum health that can be reached using health
// potions. See P_TouchSpecialThing in p_inter.c
// Dehacked: "Max Armor"
// This is the maximum armor which can be reached by picking up
// armor helmets. See P_TouchSpecialThing in p_inter.c
// Dehacked: "Green Armor Class"
// This is the armor class that is given when picking up the green
// armor or an armor helmet. See P_TouchSpecialThing in p_inter.c
//
// DOS dehacked only modifies the behavior of the green armor shirt,
// the armor class set by armor helmets is not affected.
// Dehacked: "Blue Armor Class"
// This is the armor class that is given when picking up the blue
// armor or a megasphere. See P_TouchSpecialThing in p_inter.c
//
// DOS dehacked only modifies the MegaArmor behavior and not
// the MegaSphere, which always gives armor type 2.
// Dehacked: "Max soulsphere"
// The maximum health which can be reached by picking up the
// soulsphere.  See P_TouchSpecialThing in p_inter.c
// Dehacked: "Soulsphere health"
// The amount of health bonus that picking up a soulsphere
// gives.  See P_TouchSpecialThing in p_inter.c
// Dehacked: "Megasphere health"
// This is what the health is set to after picking up a
// megasphere.  See P_TouchSpecialThing in p_inter.c
// Dehacked: "God mode health"
// This is what the health value is set to when cheating using
// the IDDQD god mode cheat.  See ST_Responder in st_stuff.c
// Dehacked: "IDFA Armor"
// This is what the armor is set to when using the IDFA cheat.
// See ST_Responder in st_stuff.c
// Dehacked: "IDFA Armor Class"
// This is what the armor class is set to when using the IDFA cheat.
// See ST_Responder in st_stuff.c
// Dehacked: "IDKFA Armor"
// This is what the armor is set to when using the IDKFA cheat.
// See ST_Responder in st_stuff.c
// Dehacked: "IDKFA Armor Class"
// This is what the armor class is set to when using the IDKFA cheat.
// See ST_Responder in st_stuff.c
// Dehacked: "BFG Cells/Shot"
// This is the number of CELLs firing the BFG uses up.
// See P_CheckAmmo and A_FireBFG in p_pspr.c
// Dehacked: "Monsters infight"
// This controls whether monsters can harm other monsters of the same
// species.  For example, whether an imp fireball will damage other
// imps.  The value of this in dehacked patches is weird - '202' means
// off, while '221' means on.
//
// See PIT_CheckThing in p_map.c
struct MiscSetting {
	deh_name &i8
	value    &int
}

@[c: 'DEH_MiscStart']
fn deh_misc_start(context &Deh_context_t, line &i8) voidptr {
	return unsafe { nil }
}

@[c: 'DEH_MiscParseLine']
fn deh_misc_parse_line(context &Deh_context_t, line &i8, tag voidptr) {
	variable_name := &i8(0)
	value := &i8(0)

	ivalue := 0
	i := usize(0)
	if !deh_parse_assignment(line, &variable_name, &value) {
		// Failed to parse
		deh_warning(context, c'Failed to parse assignment')
		return
	}
	ivalue = C.atoi(value)
	if !C.strcasecmp(variable_name, c'Monsters Infight') {
		// See notes above.
		if ivalue == 202 {
			deh_species_infighting = 0
		} else if ivalue == 221 {
			deh_species_infighting = 1
		} else {
			deh_warning(context, c"Invalid value for 'Monsters Infight': %i", ivalue)
		}
		return
	}
	for i = 0; i < (sizeof(misc_settings) / sizeof(*misc_settings)); i++ {
		if !C.strcasecmp(variable_name, misc_settings[i].deh_name) {
			*misc_settings[i].value = ivalue
			return
		}
	}
	deh_warning(context, c"Unknown Misc variable '%s'", variable_name)
}

@[c: 'DEH_MiscSHA1Sum']
fn deh_misc_sha_1_sum(context &Sha1_context_t) {
	i := u32(0)
	for i = 0; i < (sizeof(misc_settings) / sizeof(*misc_settings)); i++ {
		sha_1_update_int32(context, *misc_settings[i].value)
	}
}
