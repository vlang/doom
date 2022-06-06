[translated]
module main


[typedef]
struct C.FILE {}


// vstart

fn ffs( int) int

[c:'DEH_ParseAssignment']
fn deh_parseassignment(line &i8, variable_name &&u8, value &&u8) bool

[c2v_variadic]
[c:'DEH_Warning']
fn deh_warning(context &Deh_context_t, msg &i8) 

[c:'DEH_SetMapping']
fn deh_setmapping(context &Deh_context_t, mapping &Deh_mapping_t, structptr voidptr, name &i8, value int) bool

[weak]__global ( snd_sfxdevice int 

)

[weak]__global ( snd_samplerate int 

)

[weak]__global ( snd_cachesize int 

)

[weak]__global ( snd_maxslicetime_ms int 

)

[weak]__global ( snd_musiccmd &i8 

)

[weak]__global ( deh_sound__deh_mapping_base Sfxinfo_t 

)

/*!*/[weak] __global ( sound_mapping  = Deh_mapping_t {
&deh_sound__deh_mapping_base, [Deh_mapping_entry_t {
c'Offset', (voidptr(0)), -1, false}
, Deh_mapping_entry_t {
c'Zero/One', (voidptr(0)), -1, false}
, Deh_mapping_entry_t {
c'Value', &deh_sound__deh_mapping_base.priority, sizeof(deh_sound__deh_mapping_base.priority), false}
, Deh_mapping_entry_t {
c'Zero 1', &deh_sound__deh_mapping_base.link, sizeof(deh_sound__deh_mapping_base.link), false}
, Deh_mapping_entry_t {
c'Zero 2', &deh_sound__deh_mapping_base.pitch, sizeof(deh_sound__deh_mapping_base.pitch), false}
, Deh_mapping_entry_t {
c'Zero 3', &deh_sound__deh_mapping_base.volume, sizeof(deh_sound__deh_mapping_base.volume), false}
, Deh_mapping_entry_t {
c'Zero 4', (voidptr(0)), -1, false}
, Deh_mapping_entry_t {
c'Neg. One 1', &deh_sound__deh_mapping_base.usefulness, sizeof(deh_sound__deh_mapping_base.usefulness), false}
, Deh_mapping_entry_t {
c'Neg. One 2', &deh_sound__deh_mapping_base.lumpnum, sizeof(deh_sound__deh_mapping_base.lumpnum), false}
, Deh_mapping_entry_t {
(voidptr(0)), (voidptr(0)), -1, 0/*IMPLICIT*/}
]!
}

)

[c:'DEH_SoundStart']
fn deh_soundstart(context &Deh_context_t, line &i8) voidptr {
	sound_number := 0
	if C.sscanf(line, c'Sound %i', &sound_number) != 1 {
		deh_warning(context, c'Parse error on section start')
		return (voidptr(0))
	}
	if sound_number < 0 || sound_number >= Sfxenum_t.numsfx {
		deh_warning(context, c'Invalid sound number: %i', sound_number)
		return (voidptr(0))
	}
	if sound_number >= 107 {
		deh_warning(context, c'Attempt to modify SFX %i.  This will cause problems in Vanilla dehacked.', sound_number)
	}
	return &S_sfx [sound_number] 
}

[c:'DEH_SoundParseLine']
fn deh_soundparseline(context &Deh_context_t, line &i8, tag voidptr)  {
	sfx := &Sfxinfo_t(0)
	variable_name := &i8(0)
	value := &i8(0)
	
	ivalue := 0
	if tag == (voidptr(0)) {
	return 
	}
	sfx = &Sfxinfo_t(tag)
	if !deh_parseassignment(line, &variable_name, &value) {
		deh_warning(context, c'Failed to parse assignment')
		return 
	}
	ivalue = C.atoi(value)
	deh_setmapping(context, &sound_mapping, sfx, variable_name, ivalue)
}

