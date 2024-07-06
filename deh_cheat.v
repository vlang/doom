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
enum Deh_input_type_t {
	deh_input_file
	deh_input_lump
}

struct Deh_context_t {
	type_    Deh_input_type_t
	filename &i8
	// If the input comes from a memory buffer, pointer to the memory
	// buffer.
	input_buffer     &u8
	input_buffer_len usize
	input_buffer_pos u32
	lumpnum          int
	// If the input comes from a file, the file stream for reading
	// data.
	stream &C.FILE
	// Current line number that we have reached:
	linenum int
	// Used by DEH_ReadLine:
	last_was_newline bool
	readbuffer       &i8
	readbuffer_size  int
	// Error handling.
	had_error bool
}

type Deh_section_t = Deh_section_s
type Deh_section_init_t = fn ()

type Deh_section_start_t = fn (&Deh_context_t, &i8) voidptr

type Deh_section_end_t = fn (&Deh_context_t, voidptr)

type Deh_line_parser_t = fn (&Deh_context_t, &i8, voidptr)

type Deh_sha1_hash_t = fn (&Sha1_context_t)

struct Deh_section_s {
	name &i8
	// Called on startup to initialize code
	init Deh_section_init_t
	// This is called when a new section is started.  The pointer
	// returned is used as a tag for the following calls.
	start Deh_section_start_t
	// This is called for each line in the section
	line_parser Deh_line_parser_t
	// This is called at the end of the section for any cleanup
	end Deh_section_end_t
	// Called when generating an SHA1 sum of the dehacked state
	sha1_hash Deh_sha1_hash_t
}

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
@[c: 'DEH_Error']
@[c2v_variadic]
fn deh_error(context &Deh_context_t, msg ...&i8)

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
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
// Called by main loop.
// Called by main loop,
// called instead of view drawer if automap active.
// Called to force the automap to quit
// if the level is completed while it is up.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
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
// Called by startup code.
// States for status bar code.
// States for the chat code.
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
// Parses "Cheat" sections in dehacked files
//
struct Deh_cheat_t {
	name &i8
	seq  &Cheatseq_t
}

@[c: 'FindCheatByName']
fn find_cheat_by_name(name &i8) &Deh_cheat_t {
	i := usize(0)
	for i = 0; i < (sizeof(allcheats) / sizeof(*allcheats)); i++ {
		if !C.strcasecmp(allcheats[i].name, name) {
			return &allcheats[i]
		}
	}
	return unsafe { nil }
}

@[c: 'DEH_CheatStart']
fn deh_cheat_start(context &Deh_context_t, line &i8) voidptr {
	return unsafe { nil }
}

@[c: 'DEH_CheatParseLine']
fn deh_cheat_parse_line(context &Deh_context_t, line &i8, tag voidptr) {
	cheat := &Deh_cheat_t(0)
	variable_name := &i8(0)
	value := &i8(0)
	unsvalue := &u8(0)
	i := u32(0)
	if !deh_parse_assignment(line, &variable_name, &value) {
		// Failed to parse
		deh_warning(context, c'Failed to parse assignment')
		return
	}
	unsvalue = &u8(value)
	cheat = find_cheat_by_name(variable_name)
	if cheat == (unsafe { nil }) {
		deh_warning(context, c"Unknown cheat '%s'", variable_name)
		return
	}
	// write the value into the cheat sequence
	i = 0
	for unsvalue[i] != 0 && unsvalue[i] != 255 {
		// If the cheat length exceeds the Vanilla limit, stop.  This
		// does not apply if we have the limit turned off.
		if !deh_allow_long_cheats && i >= cheat.seq.sequence_len {
			deh_warning(context, c'Cheat sequence longer than supported by Vanilla dehacked')
			break
		}
		if deh_apply_cheats {
			cheat.seq.sequence[i] = unsvalue[i]
		}
		i++$
		// Absolute limit - don't exceed
		if i >= 25 - cheat.seq.parameter_chars {
			deh_error(context, c'Cheat sequence too long!')
			return
		}
	}
	if deh_apply_cheats {
		cheat.seq.sequence[i] = `\0`
	}
}
