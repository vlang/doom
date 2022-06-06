[translated]
module main

[typedef]
struct C.FILE {}

// vstart

[export: 'deh_signatures']
const (
	deh_signatures = [c'Patch File for DeHackEd v2.3', c'Patch File for DeHackEd v3.0', (voidptr(0))]!
)

[weak]
__global (
	deh_section_sound Deh_section_t
)

[weak]
__global (
	deh_section_text Deh_section_t
)

[export: 'deh_section_types']
const (
	deh_section_types = [&deh_section_ammo, &deh_section_cheat, &deh_section_frame, &deh_section_misc,
		&deh_section_pointer, &deh_section_sound, &deh_section_text, &deh_section_thing, &deh_section_weapon,
		&deh_section_bexstr, (voidptr(0))]!
)
